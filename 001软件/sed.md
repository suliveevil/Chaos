---
title: "sed"
categories: 
date: 2022-10-05 03:48:45 +0800
tags: GNU
excerpt: Stream Editor：流编辑器
---

Linux 三剑客（[[awk]]、sed、[[grep]]）之一
强项：数据修改，编辑匹配到的文本



## 版本

[GNU sed - Free Software Foundation](https://www.gnu.org/software/sed/)

手册：[sed, a stream editor - GNU Manual](https://www.gnu.org/software/sed/manual/sed.html)

```shell
brew install gnu-sed
```


## 书籍

Sed & Awk 101 Hacks

## 教程

[Sed - An Introduction and Tutorial](https://www.grymoire.com/Unix/Sed.html)


## 应用


分离奇偶行


```shell
sed '1d; n; d' myfile.txt > even.txt
sed 'n; d' myfile.txt > odd.txt
```



## Misc


[[Vim]]

[[正则表达式]]

