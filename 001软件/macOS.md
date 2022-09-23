---
title: "macOS"
categories:
date: 2022-09-25 23:15:46 +0800
tags: 操作系统
excerpt:
---

[[Apple苹果]]的电脑[[操作系统]]

[macOS Ventura - Mac App Store](https://apps.apple.com/cn/app/macos-ventura/id1638787999?l=en&mt=12)

[macOS User Guide - Apple Support](https://support.apple.com/guide/mac-help/welcome/mac)

系统状态

[System Status - Apple Support](https://www.apple.com.cn/cn/support/systemstatus/)

[System Status - Apple Developer](https://developer.apple.com/system-status/)

核心操作系统：Darwin（内核：XNU，混合内核，包含 FreeBSD 和 Mach 两层）
图形界面：Aqua

[[macOS 快捷键]]

## 版本

macOS Mojave
macOS Catalina
macOS Big Sur
macOS Monterey
macOS Ventura

### Beta

```shell
# Developer Beta
sudo /System/Library/PrivateFrameworks/Seeding.framework/Resources/seedutil enroll DeveloperSeed
# Public Beta
sudo /System/Library/PrivateFrameworks/Seeding.framework/Resources/seedutil enroll PublicSeed

```


## 安装

[[Rosetta]]

Command Line Tools for [[Xcode]]：包含[[Git]]等工具，无需依赖 Xcode，可单独安装

```shell
xcode-select --install
```


## 功能

[macOS - 功能可用性 - Apple (中国大陆)](https://www.apple.com.cn/macos/feature-availability)

台前调度（Stage Manager）
[[实况文本]]
[[文本替换]]

## 系统自带 App
Xproduct Remediator：恶意软件防护

[[访达]]
[[股市]]
[[快捷指令]]
[[旁白实用工具]]
[[迁移助理]]
[[色彩同步使用工具]]
[[时间机器]]
[[数码测色计]]
[[语音备忘录]]
[[AirPort实用工具]]
[[App Store]]
[[Apple TV]]
[[Apple备忘录]]
[[Apple便笺]]
[[Apple播客]]
[[Apple查找]]
[[Apple词典]]
[[Apple磁盘工具]]
[[Apple地图]]
[[Apple调度中心]]
[[Apple国际象棋]]
[[Apple活动监视器]]
[[Apple计算器]]
[[Apple家庭]]
[[Apple脚本编辑器]]
[[Apple截屏]]
[[Apple控制台]]
[[Apple蓝牙文件交换]]
[[Apple启动台]]
[[Apple日历]]
[[Apple时钟]]
[[Apple提醒事项]]
[[Apple天气]]
[[Apple通讯录]]
[[Apple图书]]
[[Apple图像捕捉]]
[[Apple文本编辑]]
[[Apple系统设置]]
[[Apple系统信息]]
[[Apple信息]]
[[Apple钥匙串访问]]
[[Apple音乐]]
[[Apple音频MIDI设置]]
[[Apple邮件]]
[[Apple预览]]
[[Apple照片]]
[[Apple终端]]
[[Apple字体册]]
[[Automator]]
[[FaceTime通话]]
[[Grapher]]
[[Photo Booth]]
[[QuickTime Player]]
[[Safari]]浏览器
[[Siri]]


## 系统自带的编程语言

2019-03-14



| 编程语言 | 版本                        | 详细信息 | 备注 |
| -------- | --------------------------- | -------- | -------- |
| AppleScript |  |  |  |
| awk |  |  | Unix awk 与 GNU awk 略有不同 |
| gcc |  |  |  |
| g++ |  |  |  |
| ~~Java~~ |  |  |  |
| JavaScript |  |  | 不是标准 JS |
| Perl |  |  |  |
| php | 7.1.23 | built: Nov  7 2018 18:20:35; Zend Engine v3.1.0 |  |
| Python |  |  |  |
| Ruby    | 2.3.7p456 2018-03-28 revision 63024 | universal.x86_64-darwin18 |  |
| shell |  |  | Unix shell |
| osascript |  |  |  |


## 包管理器


[[Homebrew]]

[[MacPorts]]

[Nix](https://nixos.org)


## 系统设置

```applescript
tell application "System Preferences"
    set myIds to the id of every pane
    set myAnchors to anchors of current pane
end tell 
```

```shell
open "x-apple.systempreferences:com.apple.preference.keyboard?Text"
```

语言与地区-翻译语言-可供下载的语言

skip-proxy = seed-sequoia.siri.apple.com, sequoia.apple.com, cdn-apple.com, sequoia.cdn-apple.com

[更改 macOS 用户帐户和个人文件夹的名称 - Apple 支持](https://support.apple.com/zh-cn/HT201548)

[Restarting Setup Assistant to create Admi… - Apple Community](https://discussions.apple.com/docs/DOC-250002676)

```applescript
do shell script "open -b com.apple.systempreferences /System/Library/PreferencePanes/Displays.prefPane"
```

### 触控板

[ x ] 查询与数据检测器
[ x ] 轻点来点按

[[专注模式]]



### macOS 配置

[FelixKratz/dotfiles: My personal macOS configuration](https://github.com/FelixKratz/dotfiles)

[nikitavoloboev/dotfiles](https://github.com/nikitavoloboev/dotfiles): Zsh, [[Karabiner-Elements]], VS Code, Sublime, [[Neovim]], Nix

[pseudoyu/yu-tools: 我的个人工具箱 (设备, macOS 软件, iOS Apps...)](https://github.com/pseudoyu/yu-tools)


## 文件目录







## 搜索
[How do I get mdfind to include folder matches in addition to files? - Stack Overflow](https://stackoverflow.com/questions/30271328/how-do-i-get-mdfind-to-include-folder-matches-in-addition-to-files/30281424#30281424)


## rosetta

```shell
softwareupdate --install-rosetta
# 或跳过确认直接安装
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```


## 开源

[apple-oss-distributions/distribution-macOS](https://github.com/apple-oss-distributions/distribution-macOS)
## macOS 游戏

[RPCS3 - The PlayStation 3 Emulator](https://rpcs3.net/)

## 竞品

[[Linux]]

[[Windows]]

## 历史

Mach 内核：Mac OS 9
Darwin 内核：基于 BSD Unix、OpenStep、Mac OS 9

## 知名用户

Bill Joy

>Mac OS X is a rock-solid system that's beautifully designed. I much prefer it to Linux.




## Misc

[[OS X Daily]]

[macOS 重装基础内容 - Apple Power User ](https://kuanhsiaokuo.github.io/apple_power_user/)

[Mac 上常用的术语 - 官方 Apple 支持 (中国)](https://support.apple.com/zh-cn/guide/mac-help/cpmh0038/12.0/mac/12.0)

[[Swift]]

[[黑苹果]]

[[macOS Automation]]

[serhii-londar/open-source-mac-os-apps](https://github.com/serhii-londar/open-source-mac-os-apps): 🚀 Awesome list of open source applications for macOS. https://t.me/s/opensourcemacosapps

[herrbischoff awesome-macos-command-line](https://github.com/herrbischoff/awesome-macos-command-line)

[herrbischoff awesome-command-line-apps](https://github.com/herrbischoff/awesome-command-line-apps)

[ninxsoft/Mist](https://github.com/ninxsoft/Mist): A Mac utility that automatically downloads macOS Firmwares / Installers.

[pierre-rouleau/about-macOS](https://github.com/pierre-rouleau/about-macOS): A description of a macOS setup for software development

app bundle id

```shell
find . -name 'Info.plist' -exec \
    awk -F'[<>]' '/CFBundle(Identifier|Version)/{c=2} c&&c--{print $3}' {} +
```

[nikitavoloboev/my-mac-os](https://github.com/nikitavoloboev/my-mac-os): List of applications and tools that make my macOS experience even more amazing

[mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles): .files, including ~/.macos — sensible hacker defaults for macOS

[yannbertrand/macos-defaults: Incomplete list of macOS `defaults` commands with demos ✨](https://github.com/yannbertrand/macos-defaults)

macOS selectioselection color


https://apple.stackexchange.com/a/164905

```shell
# green
defaults write NSGlobalDomain AppleHighlightColor -string "0.615686 0.823529 0.454902"
```


[rgcr/m-cli:  Swiss Army Knife for macOS](https://github.com/rgcr/m-cli)

[willbchang/star-guardian-macos](https://github.com/willbchang/star-guardian-macos): A minimal and productive macOS configuration with a good documentation that you can live with for a long time.

[Crackway - Easy to direct Download All Software links](https://crackway.org/)


[RhetTbull/osxmetadata](https://github.com/RhetTbull/osxmetadata)：[[Python]] package to read and write various MacOS extended attribute metadata such as tags/keywords and Finder comments from files. Includes CLI tool for reading/writing metadata.
[The Mac Observer](https://www.macobserver.com/)
[OSStatus — Apple API Errors](https://www.osstatus.com/)

The Control key shortcuts in macOS are fascinating. Ctrl+H acts like Backspace which dates back to 1963, because the ASCII code for H, 0x48, aligned with backspace control code 0x08 (the Ctrl key zeroed the highest 2 bits).

macOS also has some emacs keybinds from the early 70s.

[Macintosh Repository](https://www.macintoshrepository.org)

[KeyDash](https://gilbert.github.io/keydash/)

[Essential Applications for macOS – dFlect](http://dflect.net/essential-applications-mac/)


[macos - Getting the bundle identifier of an OS X application in a shell script - Super User](https://superuser.com/questions/346369/getting-the-bundle-identifier-of-an-os-x-application-in-a-shell-script)


[Evian-Zhang/Assembly-on-macOS](https://github.com/Evian-Zhang/Assembly-on-macOS): Introduction to [[Assembly]] on macOS

[Evian-Zhang/learn-assembly-on-Apple-Silicon-Mac](https://github.com/Evian-Zhang/learn-assembly-on-Apple-Silicon-Mac): 在 [[Apple Silicon]] Mac 上入门[[汇编语言]]

[Downloads – The Eclectic Light Company](https://eclecticlight.co/downloads/)

