# Windows Deployment 在Windows Server上部署

本文档指导如何在不使用Docker的情况下，在Windows Server上部署Directus。

## 1. 开发环境builder

### 1.1 install

注意：
> Running Directus without Docker may result in errors as a result of environment-specific characteristics. In such a
case, make sure you have the required system dependencies for `isolated-vm`, `sharp`, and `argon2` installed.

先安装pnpm：
```
npm install -g pnpm
```

配置pnpm：
```
pnpm setup
```

要先安装isolate-vm、sharp、argon2:
```
npm install isolated-vm
```


```bash
pnpm install --recursive --offline --frozen-lockfile
```

### 1.2 build

在CMD中执行：

```cmd
set npm_config_workspace_concurrency=1 && pnpm run build
```

或者，在Powershell中执行：

```PowerShell
$env:npm_config_workspace_concurrency="1"; pnpm run build
```

### 1.3 deploy

在开发环境执行deploy命令，生成dist文件夹。

（注意如果根目录中已经有了dist文件夹且内容不为空，则需要先删除dist文件夹）

```bash
pnpm --filter directus deploy --prod dist
```

### 1.4 把所有package都打包成tgz

用来用本地包替换线上包，从而使用自己修改过的包。

在每个package中打包tgz到该package的tgz-output文件夹中：

```bash
pnpm -r exec -- pnpm pack --pack-destination ./tgz-output
```

把所有package的tgz都移动到all-packages文件夹中：

```bash
mkdir all-packages
```

```PowerShell
Get-ChildItem -Path . -Recurse -Filter *.tgz | Move-Item -Destination ./all-packages
```

### 制作离线版

找一个新的空文件夹，开始制作用npm执行安装的离线包。
（之所以不用pnpm，是因为pnpm安装的node_modules中会存在软连接，没法直接复制到其他机器上使用）

在空文件夹中执行：

```bash
npm install .\tgz-output\directus-11.7.2.tgz
```

（使用离线tgz包进行安装，会自动安装所有依赖，包括依赖的依赖）


注意package.json中需要把所有依赖都写成离线包的版本：

```json
{
	"name": "directus",
	"version": "11.7.2",
	"description": "Directus is a real-time API and App dashboard for managing SQL database content",
	"keywords": [
		"directus",
		"realtime",
		"database",
		"content",
		"api",
		"rest",
		"graphql",
		"app",
		"dashboard",
		"headless",
		"cms",
		"mysql",
		"postgresql",
		"cockroachdb",
		"sqlite",
		"framework",
		"vue"
	],
	"homepage": "https://directus.io",
	"repository": {
		"type": "git",
		"url": "https://github.com/skydtrtzmr/directus.git"
	},
	"funding": "https://github.com/directus/directus?sponsor=1",
	"license": "BUSL-1.1",
	"author": {
		"name": "skydtrtzmr",
		"email": "skydtrtzmr@gmail.com",
		"url": "https://github.com/skydtrtzmr"
	},
	"maintainers": [
		{
			"name": "skydtrtzmr",
			"email": "skydtrtzmr@gmail.com",
			"url": "https://github.com/skydtrtzmr"
		}
	],
	"type": "module",
	"exports": {
		"./package.json": "./package.json",
		"./version": "./version.js"
	},
	"bin": {
		"directus": "cli.js"
	},
	"dependencies": {
		"@directus/api": "file:tgz-output/directus-api-27.0.2.tgz",
		"@directus/update-check": "file:tgz-output/directus-update-check-13.0.1.tgz",
		"directus": "file:tgz-output/directus-11.7.2.tgz"
	},
	"npm": {
		"overrides": {
			"@directus/app": "file:tgz-output/directus-app-13.9.2.tgz"
		}
	},
	"engines": {
		"node": ">=22"
	}
}

```



## 2. 生产环境runtime

### 2.1 install

在生产环境安装Node.js

设置镜像

```bash
npm config set registry https://registry.npmmirror.com
```

执行安装

```bash
npm install --global pm2@5
```

### mkdir

在dist文件夹中创建三个空文件夹：

- database
- extensions
- uploads

### 2.2 run

bootstrap Directus

```bash
node cli.js bootstrap
```

```bash
pm2-runtime start ecosystem.config.cjs
```
