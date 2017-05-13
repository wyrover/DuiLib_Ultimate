DuiLib_Ultimate是DuiLib库的增强拓展版，库修复了大量用户在使用中反馈的Bug，新增了用户需求的功能，并持续维护更新。

支持功能：

1、官方原有功能；

2、增加资源管理器支持，资源管理更加方便；

3、支持多国语言功能；

4、增加对高DPI自适应的机制（接口简单，实用方便）；

6、控件支持样式表（Style）功能，控件属性管理设置更加方便易用；

7、新增功能（IP地址控件、List网格线等）；

8、修正大量Bug：RichEdit输入变化消息、Combo字体设置、Button自动布局、控件右下边框绘制不完全、菜单控件崩溃等；

9、项目内置各种使用例子与编译选项（多字节Unicode，静态库和动态库）


## 此版本 DuiLib 加载皮肤的方式

- UILIB_FILE            从文件目录加载皮肤
- UILIB_RESOURCE        被弃用(不实用)
- UILIB_ZIP             从 zip 文件加载皮肤
- UILIB_ZIPRESOURCE     从资源中加载二进制 zip 资源


## git 流程

1. fork 原始版本

从 https://github.com/qdtroy/DuiLib_Ultimate fork 一份，pull 自己的仓库

git@github.com:wyrover/DuiLib_Ultimate.git

2. 添加原始库跟踪

git remote add upstream https://github.com/qdtroy/DuiLib_Ultimate.git

3. 获取原始仓库最新版

```
git fetch upstream
git merge upstream/master 
```

或者
```
git pull upstream master
```

4. 创建自己的 develop 分支

```
git checkout -b develop master
```


5. 在 develop 分支工作一段时间后，合并到自己的 master 分支

```
# 切换到Master分支
git checkout master

# 对Develop分支进行合并
git merge --no-ff develop
```

6. push 到自己的远程 master 分支


7. pull request


### 其他流程


在 develop 分支基础上创建一个功能分支
```
git checkout -b feature-x develop
```

开发完成后，将功能分支合并到develop分支：
```
　　git checkout develop
　　git merge --no-ff feature-x
```
删除feature分支：
```
　　git branch -d feature-x
```

## links

- [Git分支管理策略](http://www.ruanyifeng.com/blog/2012/07/git.html)