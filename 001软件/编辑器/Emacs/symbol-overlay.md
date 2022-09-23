---
title: "symbol-overlay"
categories:
date: 2022-11-09 18:12:54 +0800
tags:
excerpt:
---


[wolray/symbol-overlay](https://github.com/wolray/symbol-overlay): Highlight symbols with keymap-enabled overlays

适合单文件重构代码

作者的 Emacs 配置：[wolray/emacs](https://github.com/wolray/emacs)

## 联动

[manateelazycat/instant-rename-tag](https://github.com/manateelazycat/instant-rename-tag): Instant rename tag

[manateelazycat/highlight-matching-tag](https://github.com/manateelazycat/highlight-matching-tag): This plugin will highlight matching tag instantaneously.

## 竞品

[[embark]]
[Search · embark - Eason0210/.emacs.d](https://github.com/Eason0210/.emacs.d/search?q=embark)

## Misc

[[color-rg]]

prettify-symbols
```emacs-lisp
(add-hook 'prog-mode-hook 'prettify-symbols-mode)
(setq-default prettify-symbols-alist
              '(("lambda" . ?λ)
                ("function" . ?𝑓)))
```


