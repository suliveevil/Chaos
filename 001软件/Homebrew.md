---
title: Homebrew
categories:
date: 2022-09-26 23:59:48 +0800
tags:
  - macOS
  - 自由软件
excerpt:
---

macOS [[包管理器]]

[The Missing Package Manager for macOS (or Linux) - Homebrew](https://brew.sh/)

2-Clause BSD License

## 安装

https://gitee.com/cunkai/HomebrewCN

[Homebrew/install: 📥 Homebrew (un)installer](https://github.com/Homebrew/install)

在[[macOS]]上先运行 [[Git]]，根据系统提示安装命令行工具
然后安装 Homebrew：

```shell
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
```



## 使用
```shell
# 检查过时应用
brew outdated
brew outdated --cask
# 升级
brew update && brew upgrade
brew cu -a -y --cleanup
# 清除安装包/清理缓存
brew cleanup --prune=all
brew cleanup --cask --outdated
```



### 依赖关系
检查软件[[依赖]]关系：[[homebrew-graph]]



## App


### 非官方

抖音

[[Meld]]

[[Keyboard Maestro]]


### 未提及

可以通过 Homebrew 安装，官方未提及

[[Alacritty]]

[TagSpaces](https://www.tagspaces.org/)

### 不赞同

DEVONThink：可以通过 Homebrew 安装，官方不赞同
DEVONagent：可以通过 Homebrew 安装，官方不赞同
DEVONsphere：可以通过 Homebrew 安装，官方不赞同



### 暂不支持

暂不支持 Homebrew 方式安装的软件

[[ohmyzsh]]
[[坚果云]]
[[AudioJam]]
[[Billfish]]
[[CHINER]]
[[Understand-scitools]] 
[阿里云盘](https://www.aliyundrive.com)
[ApiPost](https://www.apipost.cn/)
[[BetterAndBetter]]
[[BitComet]]
[[dev-sidecar]]
[[Shottr]]
[Mouse Miles](https://www.pointworks.de/software/mouse-miles/)
[qlZipInfo](https://github.com/srirangav/qlZipInfo)
[SearchLink - BrettTerpstra.com](https://brettterpstra.com/projects/searchlink/)
[[WhatPulse]]
[[Wireshark]]

[x74353/Amphetamine-Enhancer](https://github.com/x74353/Amphetamine-Enhancer): Add new abilities to the macOS keep-awake utility, Amphetamine.
Goxel

## 联动

[[homebrew-mode]]

## 竞品

[[MacPorts]]

[[Nix]]/[[Guix]]

[[pkgsrc]]


[innobead/huber](https://github.com/innobead/huber): Huber 📦, Package Manager for GitHub repos


## Misc


[whalebrew/whalebrew](https://github.com/whalebrew/whalebrew): Homebrew, but with [[Docker]] images




