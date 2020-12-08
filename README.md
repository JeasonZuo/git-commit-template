# git-commit-template
### 简介
本工具通过在/usr/local/bin中创建git文件，对git命令进行过滤，只影响 git commit 命令
在终端运行使用 git commit 或 git commit -am

### 安装
/bin/bash -c "$(curl https://gitee.com/JeasonZuo/git-commit-template/raw/main/install)"
### 卸载
/bin/bash -c "$(curl https://gitee.com/JeasonZuo/git-commit-template/raw/main/uninstall)"

将以上命令粘贴至终端

### git commit 规范
git commit message 规范参考 https://www.ruanyifeng.com/blog/2016/01/commit_message_change_log.html

```
<type>(<scope>): <subject>
// 空一行
<body>
// 空一行
<footer>
```
### 其他解决方案
https://github.com/commitizen/cz-cli （需要安装NPM）

vscode 可使用插件 Visual Studio Code Commitizen Support https://github.com/KnisterPeter/vscode-commitizen

phpstorm 可使用插件 Git Commit Template https://plugins.jetbrains.com/plugin/9861-git-commit-template