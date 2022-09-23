---
title: "MacVim"
categories: 
date: 2022-09-26 23:55:15 +0800
tags: macOS Vim
excerpt: 
---


[macvim-dev/macvim](https://github.com/macvim-dev/macvim): [[Vim]] - the text editor

##  功能

[[URL Scheme]]：与 [[TextMate]] 兼容



## 依赖
cscope
gettext
[[Lua]]
[[Python]]
[[Ruby]]

```dot
digraph G {
    "macvim";
    "cscope";
    "gettext";
    "lua";
    "python@3.10";
    "gdbm";
    "mpdecimal";
    "openssl@1.1";
    "ca-certificates";
    "readline";
    "sqlite";
    "xz";
    "ruby";
    "libyaml";
    "macvim" -> "cscope";
    "macvim" -> "gettext";
    "macvim" -> "lua";
    "macvim" -> "python@3.10";
    "macvim" -> "ruby";
    "python@3.10" -> "gdbm";
    "python@3.10" -> "mpdecimal";
    "python@3.10" -> "openssl@1.1";
    "python@3.10" -> "readline";
    "python@3.10" -> "sqlite";
    "python@3.10" -> "xz";
    "openssl@1.1" -> "ca-certificates";
    "sqlite" -> "readline";
    "ruby" -> "libyaml";
    "ruby" -> "openssl@1.1";
    "ruby" -> "readline";
}
```

## 冲突

Conflicts with: vim (because vim and macvim both install vi* binaries)

## 安装

```shell
brew install --cask macvim
```

## Misc





