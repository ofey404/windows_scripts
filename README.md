# windows scripts

author: Ofey Chan

一些脚本, 用于提升windows机器的使用体验

## autohotkey脚本

remap一些键, 广泛使用空格作为prefix, 采取vim键位.

感谢[spacemacs](https://github.com/syl20bnr/spacemacs)的优良设计.

写得能用就行, 所以很丑.

控制了功能以免出现性能问题. 目前hjkl从来没有出现过掉键问题, 就像网上的某些脚本一样. 浏览代码的时候由于脚本问题输进去一些无用字符, 那就哭吧...

## startservice.vbs

开机打开 wsl 的 bash 功能. 其实可以废弃了, 因为原来是让 xshell 能连上 wsl 用的, 现在有了 vscode-remote 和 windows terminal.

## caps2ctrl

把caps硬映射到ctrl的注册表修改器.