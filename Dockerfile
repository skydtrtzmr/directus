# syntax=docker/dockerfile:1.4

ARG NODE_VERSION=22

####################################################################################################
## Build Packages

FROM node:${NODE_VERSION}-alpine AS builder

# Remove again once corepack >= 0.31 made it into base image
# (see https://github.com/directus/directus/issues/24514)
RUN npm install --global corepack@latest

# 使用阿里云的镜像源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk --no-cache add python3 py3-setuptools build-base

WORKDIR /directus

COPY package.json .
RUN corepack enable && corepack prepare
# Corepack 是 Node.js 的一个工具，用来管理包管理器（如 npm、yarn 和 pnpm）的版本。它实际上是 Node.js 的一部分，可以确保使用正确的包管理器版本。
# corepack enable：启用 Corepack 工具。通过这个命令，Node.js 将会激活 Corepack，允许使用指定的包管理器（如 pnpm、yarn 等）。它是 Node.js 16.9 版本引入的功能。
# corepack prepare：准备并确保 Corepack 所管理的包管理器（如 pnpm）是正确的版本。这个命令会下载和缓存包管理器，确保其在执行时已准备好。

# Deploy as 'node' user to match pnpm setups in production image
# (see https://github.com/directus/directus/issues/23822)
RUN chown node:node .
USER node

# NOTE: 注意这里原先设置了内存限制为8192，我们把它改大一点。
# ENV NODE_OPTIONS=--max-old-space-size=8192
ENV NODE_OPTIONS=--max-old-space-size=32768

COPY pnpm-lock.yaml .

#这里是我自己新增的，不确定，但是确实能解决卡在pnpm fetch的问题。
# 如果在中国环境下构建请把下面注释打开
RUN npm config set registry https://registry.npmmirror.com
RUN pnpm config set registry https://registry.npmmirror.com

RUN pnpm fetch

COPY --chown=node:node . .
RUN <<EOF
	set -ex
	pnpm install --recursive --offline --frozen-lockfile
	npm_config_workspace_concurrency=1 pnpm run build
	pnpm --filter directus deploy --prod dist
	cd dist
	# Regenerate package.json file with essential fields only
	# (see https://github.com/directus/directus/issues/20338)
	node -e '
		const f = "package.json", {name, version, type, exports, bin} = require(`./${f}`), {packageManager} = require(`../${f}`);
		fs.writeFileSync(f, JSON.stringify({name, version, type, exports, bin, packageManager}, null, 2));
	'
	mkdir -p database extensions uploads
EOF

####################################################################################################
## Create Production Image

FROM node:${NODE_VERSION}-alpine AS runtime

RUN npm install --global \
	pm2@5 \
	corepack@latest # Remove again once corepack >= 0.31 made it into base image

USER node

WORKDIR /directus

ENV \
	DB_CLIENT="sqlite3" \
	DB_FILENAME="/directus/database/database.sqlite" \
	NODE_ENV="production" \
	NPM_CONFIG_UPDATE_NOTIFIER="false"

COPY --from=builder --chown=node:node /directus/ecosystem.config.cjs .
COPY --from=builder --chown=node:node /directus/dist .

# TODO 以后可以考虑直接把node_modules目录拷贝进去，以免因为网络问题导致安装失败。

EXPOSE 8055

CMD : \
	&& node cli.js bootstrap \
	&& pm2-runtime start ecosystem.config.cjs \
	;

# 运行以下命令进行构建镜像：
# docker build -t skydtrtzmr/my-directus ./
# 此命令将会在当前目录下生成一个名为 my-directus 的镜像。

# 如果要在构建同时指定版本的话：
# docker build -t skydtrtzmr/my-directus:v1.0.0 ./