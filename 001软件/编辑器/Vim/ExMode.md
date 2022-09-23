---
title: "ExMode"
categories: 
date: 2022-09-25 18:00:09 +0800
tags: Vim 模式
excerpt: 
---

Vim 主帮助文件

```shell
:h!
```

删除所有空行

```shell
:g/^\s*$/d
```


## 模式切换

`:vi`：进入 [[NormalMode]]



## 排序

根据全角括号中的内容排序

```shell
:sort r /【.\+】/
```


## 提权保存

```shell
:w !sudo tee %
```

