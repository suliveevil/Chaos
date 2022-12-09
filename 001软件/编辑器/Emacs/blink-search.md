---
title: "blink-search"
categories:
date: 2022-09-30 00:43:00 +0800
tags: Emacs 模糊搜索
excerpt:
---


[manateelazycat/blink-search](https://github.com/manateelazycat/blink-search): In the blink of an eye, the search is complete（successor of snails）

文本搜索

> [!WARNING] obsoleted
> [snails](https://github.com/manateelazycat/snails): A modern, easy-to-expand fuzzy search framework
> 依赖：[[exec-path-from-shell]]

## Supported Backend

Buffer List
Common Directory
Recent File
Current Buffer
Grep File
IMenu
Find File
EAF Browser History
Elisp Symbol
Google Suggestion
Key Value（requires SQLite and `pip3 install sqlite3`）

## 依赖

[[emacs-epc]]
[[fd]]
[[ripgrep]]

### 可选依赖

[[posframe]]

## 快捷键

`#`: search current buffer
[[!]]: grep current directory
[[Ctrl+N]]：select next candidate item
[[Ctrl+P]]：select previous candidate item
[[Option+N]]：select next backend item
[[Option+P]]：select previous backend item
[[Ctrl+M]]：Do action for select backend item
[[Option+J]]：select next candidate group item
[[Option+K]]：select previous candidate group item
[[Ctrl+J]]：jump parent for select candidate item
[[Ctrl+L]]：continue search from directory of current candidate item
[[Ctrl+M]]：do action for select candidate item
[[Ctrl+Option+M]]：preview select candidate item
[[Ctrl+Option+N]]：preview next candidate item
[[Ctrl+Option+P]]：preview previous candidate item
[[Option+W]]：copy select candidate item
[[Ctrl+G]]：quit


## 竞品

[[Helm]]

[muffinmad/emacs-ibuffer-project](https://github.com/muffinmad/emacs-ibuffer-project): Group ibuffer's list by project



## 兄弟产品

grep-dired

## Misc

[[vim-clap]]

[[LeaderF]]

[[telescope.nvim]]

[[ugrep]]

[agzam/browser-hist.el](https://github.com/agzam/browser-hist.el): Search through browser history, in Emacs

