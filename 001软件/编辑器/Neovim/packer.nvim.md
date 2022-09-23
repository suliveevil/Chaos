---
title: "packer.nvim"
author: 
categories: 
date: 2022-10-01 07:02:47 +0800
tags: Neovim 插件管理器
excerpt: 
---

[[Neovim 插件]]

[wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim): A [[use-package]] inspired plugin manager for Neovim. Uses native packages, supports Luarocks dependencies, written in Lua, allows for expressive config


## Quick Start

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```



管理已有插件：加入管理
管理本地插件：安装、打开、关闭、卸载
管理从网上下载的插件：下载、安装、打开、关闭、更新、卸载

## 命令


```vimscript
:PackerClean
:PackerCompile
:PackerInstall
:PackerUpdate
:PackerSync
:PackerLoad
:PackerSnapshot
:PackerSnapshotDelete
:PackerSnapshotRollback
```



## 兄弟产品


[[nvim-treesitter-context]]

[[nvim-treesitter-textobjects]]


[nvim-treesitter/completion-treesitter: Treesitter source for completion-nvim and more](https://github.com/nvim-treesitter/completion-treesitter)




## 竞品

### 基于内置包管理功能

[savq/paq-nvim: 🌚 Neovim package manager](https://github.com/savq/paq-nvim)

[Chromosore/lazily-nvim: A standalone plugin lazy loader for Neovim](https://github.com/Chromosore/lazily-nvim)


[notomo/optpack.nvim: Neovim plugin manager that uses only opt packages](https://github.com/notomo/optpack.nvim)

[loichyan/spark.nvim: 🌟 A lazy and sequential loading plugin manager for neovim written in TypeScript.](https://github.com/loichyan/spark.nvim)

### 基于 runtime

[[vim-plug]]

[ii14/neopm: Plugin manager for neovim, pre-alpha stage.](https://github.com/ii14/neopm)

[spywhere/plug.nvim: An extensible plugin manager wrap on top of vim-plug in pure lua](https://github.com/spywhere/plug.nvim)

## Misc



