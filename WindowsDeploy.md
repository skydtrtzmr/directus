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

### 1.4 mkdir

在dist文件夹中创建三个空文件夹：

- database
- extensions
- uploads

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

把开发环境项目根目录下的dist文件夹和ecosystem.config.cjs文件，拷贝到生产环境的项目根目录下。

### 2.2 run

bootstrap Directus

```bash
node cli.js bootstrap
```

```bash
pm2-runtime start ecosystem.config.cjs
```
