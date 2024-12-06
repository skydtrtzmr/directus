# directus/readme.md

这里是directus的fork。在这里进行我的修改！

## 命令

### 安装依赖

```bash
pnpm install
```

### 初始化数据库

先创建好要用的数据库，然后执行初始化：

```bash
pnpm --filter api cli bootstrap
```

### 构建

```bash
pnpm build
```

### 运行

```bash
pnpm --recursive dev
```

#### 启动后端

启动后端加上build过的前端代码（不能热更新）

```bash
pnpm --filter api dev
```

启动后端命令行（无客户端）
（这个命令是我自己加的，在api/package.json中。源仓库中没有这个命令。）

```bash
pnpm --filter api dev:no-client
```

#### 启动前端（热更新）

```bash
pnpm --filter app dev
```

注意：如果需要前端部分（app）热更新的话，不要从`pnpm --filter api dev`（或者api目录下`pnpm dev`）启动，而是从`pnpm --filter app dev`（或者app目录下`pnpm dev`）启动。

#### 关于系统collections的显示

在数据库“directus_presets”中设置。
比如可以找到collection字段值为“directus_users”的记录，然后对该记录的`layout_options`字段进行修改，就可以解决用户列表中显示用户名时“名在前姓在后”的问题。

```json
{"cards":{"icon":"account_circle","title":"{{ last_name }}{{ first_name }}","subtitle":"{{ email }}","size":5}}
```

记得在数据库中修改完后，要保存数据库修改！

#### 关于系统collections的字段

在`packages\system-data\src\fields\users.yaml`中，可以修改系统字段的显示顺序。

（记得修改后要重新`pnpm build`）

## 密码

系统管理员账号：
用户名：
2368178395@qq.com

密码：
19990314

教师账号：123456@qq.com
密码：123456

### 系统设计

exam和practice的区别主要在于，exam只能考一次，practice可以多次考。
所以exam中每个学生只有一张对应的submission_paper，而practice中每个学生可以有多张submission_paper。

### 数据库设计

flow中，用脚本来把对象添加到列表的属性中，从而解决数据库中有时候缺少我们需要的字段的问题。

关于题型，参考这篇文章：
https://testfellow.com/what-are-mcqs/#google_vignette

## directus Admin静态密钥：

2368178395@qq.com：
YQSH47GeRT8le9Tp7HeqKlnjiimDgwC5

skydtrtzmr@gmail.com：
xoMOrTYoHHIB4oa8nNCHjlNfZWMR8ykM

更新时间：2024-11-17.

#### 注意

当可见的collection数量超过20，会自动出现“搜索”功能，可以快速定位到想要的collection。

搜索功能的实现在`app\src\modules\content\components\navigation.vue`中，可以看到：

```
<div v-if="showSearch" class="search-input">
    <v-input v-model="search" type="search" :placeholder="t('search_collection')" />
</div>
```


## 关于.env

HOST="127.0.0.1"

PORT=8055

PUBLIC_URL="http://127.0.0.1:8055"

DB_CLIENT="pg"
DB_HOST="localhost"
DB_PORT=5432
DB_DATABASE="directus"
DB_USER="postgres"
DB_PASSWORD="pg19990314"


STORAGE_LOCATIONS="local"
STORAGE_LOCAL_DRIVER="local"
STORAGE_LOCAL_ROOT="./uploads"

