---
title: ""
categories: 
date: 2022-09-27 00:08:10 +0800
tags: macOS Vim
excerpt: 
---

[FelixKratz/SketchyVim](https://github.com/FelixKratz/SketchyVim): Adds all Vim moves and modes to macOS text fields

## 安装
```shell
brew tap FelixKratz/formulae
brew install svim
```

## 配置

blacklist

svim.sh
Copy the example configuration into your home directory and make the script executable:

```shell
mkdir ~/.config/svim
cp /opt/homebrew/opt/svim/share/svim/examples/* ~/.config/svim/
chmod +x ~/.config/svim/svim.sh
```

svimrc

```vim
nmap <C-k> <Esc>:m .+1<CR>
nmap <C-l> <Esc>:m .-2<CR>
```

## 使用

直接使用，不启动后台服务

```shell
# sketchyvim
svim
```

启动服务

```shell
# start felixkratz/formulae/svim now and restart at login
brew services start svim # brew services start felixkratz/formulae/svim
# 重启服务
brew services restart svim
```


## 竞品

[[firenvim]]

[algon-320/vime](https://github.com/algon-320/vime): Using Vim as an input method for X11 apps

## 兄弟产品

[[SketchyBar]]


## Misc

[[KindaVim]]

[[warpd]]


