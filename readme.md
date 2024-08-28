# directus/readme.md

启动命令：

```bash
pnpm --filter api dev
```

```bash
pnpm --filter app dev
```

地址：
http://localhost:8055

### 信息

初始admin：
email：
12345678@qq.com
密码：
12345678

教师账号：
123456@qq.com
密码：123456

### 系统设计

exam和practice的区别主要在于，exam只能考一次，practice可以多次考。
所以exam中每个学生只有一张对应的submission_paper，而practice中每个学生可以有多张submission_paper。

### 数据库设计

flow中，用脚本来把对象添加到列表的属性中，从而解决数据库中有时候缺少我们需要的字段的问题。

