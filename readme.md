# directus/readme.md

这里是directus的fork。在这里进行我的修改！

## 命令

### 安装依赖

```bash
pnpm install
```

### 初始化数据库
先创建好要用的数据库，然后执行初始化：
```
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

```bash
pnpm --filter api dev
```

```bash
pnpm --filter app dev
```

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

用户名：
2368178395@qq.com

密码：
19990314

### 系统设计

exam和practice的区别主要在于，exam只能考一次，practice可以多次考。
所以exam中每个学生只有一张对应的submission_paper，而practice中每个学生可以有多张submission_paper。

### 数据库设计

flow中，用脚本来把对象添加到列表的属性中，从而解决数据库中有时候缺少我们需要的字段的问题。

关于题型，参考这篇文章：
https://testfellow.com/what-are-mcqs/#google_vignette

## Bug

现在这个版本源码有bug……我可能应该重新fork一份代码，然后再进行修改。
现在的bug在于，markdown编辑器无法正常渲染了。

## directus Admin静态密钥：
Hi-SYXX9aIn4VasXEu5YrjGyVz_0kNVa

#### 注意

当可见的collection数量超过20，会自动出现“搜索”功能，可以快速定位到想要的collection。

搜索功能的实现在`app\src\modules\content\components\navigation.vue`中，可以看到：

```
<div v-if="showSearch" class="search-input">
    <v-input v-model="search" type="search" :placeholder="t('search_collection')" />
</div>
```
