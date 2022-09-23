---
title: "straight.el"
categories: 
date: 2022-09-30 03:48:42 +0800
tags: Emacs 包管理器
excerpt: 
---

[[Emacs 插件]]
[radian-software/straight.el](https://github.com/radian-software/straight.el#getting-started): 🍀 Next-generation, purely functional package manager for the Emacs hacker.

## 原理

https://emacs-china.org/t/straight-el/9094/3

`straight.el` 的原理是把包克隆到 `straight/repos` 目录，然后在 `straight/build` 目录产生字节码、autoload 文件和软链接，然后把这边的目录加到 `load-path` 里。


## 联动

[[use-package]]


## 竞品

[[package.el]]

[[quelpa]]

[[el-get]]

[[borg]]



## 兄弟产品

[radian-software/radian](https://github.com/radian-software/radian): 🍉 Dotfiles that marry elegance and practicality.

[[apheleia]]

[[prescient.el]]

[[el-patch]]

### Selectrum

> [!WARNING]
> Selectrum is deprecated
> [Deprecating Selectrum in favor of Vertico · Issue #237 · minad/vertico](https://github.com/minad/vertico/issues/237)
> [去掉 helm/ivy/selectrum 使用原生的 completions buffer - Emacs-general - Emacs China](https://emacs-china.org/t/helm-ivy-selectrum-completions-buffer/17148)

- Selectrum 生态

[[embark]]
[[consult.el]]：已停止支持 Selectrum
[[prescient.el]]
[[marginalia]]
[[orderless]]

- Selectrum 竞品

[[ivy]]

[[Counsel]]

[[Helm]]

## 使用

[分享：使用 straight 安装 eaf 的思路 - Emacs China](https://emacs-china.org/t/straight-eaf/19929)


## Misc





