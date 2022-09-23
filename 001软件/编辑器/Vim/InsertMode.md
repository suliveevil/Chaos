---
title: "Insert Mode"
categories: 
date: 2022-09-24 23:03:51 +0800
tags: Vim 模式
excerpt: 
---





[[UpArrow]]：光标向上移动
[[DownArrow]]：光标向下移动
[[LeftArrow]]：光标向左移动
[[RightArrow]]：光标向右移动
[[Shift+LeftArrow]]：向左移动一个单词
[[Shift+RightArrow]]：向右移动一个单词
[[Shift+UpArrow]]：向上翻页
[[Shift+DownArrow]]：向下翻页
[[PageUp]]：上翻页
[[PageDown]]：下翻页
[[Delete 键]]：删除光标处字符
[[Backspace]]：向右删除字符
[[Home键]]：光标跳转行首
[[End键]]：光标跳转行尾
[[Ctrl+W]]：向左删除单词
[[Ctrl+X Ctrl+E]]：向上滚动屏幕，同 [[Ctrl+E]]
[[Ctrl+X Ctrl+Y]]：向下滚动屏幕，同 [[Ctrl+Y]]
Ctrl+R %：插入当前文件名
Ctrl+R 0：插入 0 号寄存器（Register）
Ctrl+R "：插入匿名寄存器，相当于插入模式下的 P 粘贴
Ctrl+R =：插入表达式运算结果，等号后面跟表达式
Ctrl+R `:`：插入上一次命令行命令
Ctrl+R `/`：插入上一次搜索的关键字
Ctrl+F：自动缩进
Ctrl+U：删除当前行所有字符
Ctrl+V：插入非数字的字面量
Ctrl+K
Ctrl+D：文字向左缩进
Ctrl+T：文字向右缩进




### 模式切换


[[Escape 键]]：退出插入模式，回到 [[NormalMode]]
[[Insert 键]]：进入替换模式（[[ReplaceMode]]）
Ctrl+`[`：退出插入模式
[[Ctrl+O]]：临时退出插入模式，执行单条命令后返回插入模式
Ctrl+`\` Ctrl+O：临时退出插入模式（光标保持），执行单条命令后返回插入模式

## 补全

[[Ctrl+X Ctrl+D]]：定义/宏定义补全
[[Ctrl+X Ctrl+F]]：文件名/文件路径补全
[[Ctrl+X Ctrl+K]]：字典（dictionary）补全
[[Ctrl+X Ctrl+T]]：同义词字典（thesaurus）补全
[[Ctrl+X Ctrl+L]]：整行补全
[[Ctrl+X Ctrl+V]]：Vim 命令补全
[[Ctrl+X Ctrl+I]]：当前文件以及包含的文件中的关键字补全
[[Ctrl+X Ctrl+N]]：当前缓冲区中的关键字补全
[[Ctrl+X Ctrl+O]]：Omni Completion 补全（`omnifunc`）
[[Ctrl+X S]]：拼写建议
Ctrl+X Ctrl+`]`：标签补全
[[Ctrl+X Ctrl+U]]：用户自定义补全（`completefunc`）



## Misc

[[Vim]]



