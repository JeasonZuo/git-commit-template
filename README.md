# git-commit-template

git commit message 规范参考 https://www.ruanyifeng.com/blog/2016/01/commit_message_change_log.html

```
<type>(<scope>): <subject>
// 空一行
<body>
// 空一行
<footer>
```

本项目是一个创建标准 git commit message 的shell脚本

## 使用方法：
### 安装
1. 直接下载git-commit文件放到项目中，与.get文件夹同级，一般是项目根目录
2. 可以修改文件中的item数组配置type类型

### 使用
`./git-commit -a` 等于 `git commit -am`

`./git-commit` 等于 `git commit -m`

MacOS & Linux 可直接运行脚本
Windows可通过Git Bash运行脚本

### 其他解决方案
https://github.com/commitizen/cz-cli （需要安装NPM）

vscode 可使用插件 Visual Studio Code Commitizen Support https://github.com/KnisterPeter/vscode-commitizen

phpstorm 可使用插件 Git Commit Template https://plugins.jetbrains.com/plugin/9861-git-commit-template