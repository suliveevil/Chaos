---
title: "Vim 快捷键"
author: 
categories: 
date: 2022-10-10 15:22:52 +0800
tags: Vim 快捷键
excerpt: 
---


按键映射：递归映射、非递归映射
前置键：Leader
模式

```vim
:help map-modes
```

七大基本模式：

普通模式：[[NormalMode]] 也称为命令模式。
插入模式：[[InsertMode]]
命令行模式：[[CmdLineMode]]
Ex 模式：[[ExMode]]
可视模式：[[VisualMode]]
选择模式：[[SelectMode]]
终端作业模式：[[TerminalMode]]


派生模式：

操作符等待模式：[[OperatingPendingMode]]
替换模式：[[ReplaceMode]]
虚拟替换模式[[VisualReplaceMode]]
插入普通模式：[[InsertNormalMode]]
终端普通模式：[[TerminalNormalMode]]
插入选择模式：[[InsertSelectMode]]
插入可视模式：[[InsertVisualMode]]
可视块模式：[[VisualBlockMode]]
[[VisualBlockSelectMode]]
[[VisualLineSelectMode]]



查找重复的快捷键

```vimscript
:enew|pu=execute('verbose map')
```


记录 Vim 按键历史

```shell
alias vim="vim -w ~/.vimkeys"
```



[dstokes/vimlex](https://github.com/dstokes/vimlex): A parser / lexer for vim log keystrokes

```shell
# install
go get github.com/dstokes/vimlex

# config zshrc
export PATH=$PATH:$GOPATH/bin

# use
cat ~/.vimkeys | vimlex | sort | uniq -c | sort -nr | head -n7
```


### 寄存器

Register：
Unnamed：[["]]
Numbered
Small delete：[[-]]
Named
Read-only：`:`、`.`、[[%]]
Alternative buffer：`#`
Expression：[[=]]
Selection：[[+]]、`*`
Drop：[[~]]
Black hole：[[_]]
Last search pattern：`/`




## 动作
y：yank 复制
h
j
k
l
w
b
c：change 修改
d：delete 删除
r：replace 替换
v：visual select 选取
~
gU
`>`
`/`

### 跳转

`/`
`?`
n
N



## 命令

## 范围与位置

i：inner，在对象内
a：around，整个对象，包括对象前后的空格
t：to 到某位置前
f：forward 到某位置上
`$`
0
`^`
T {char}
F {char}
I W
A W
I Shift+W
A Shift+W
I S
A S
I P
A P
I B
A B
I Shift+B
A Shift+B
I )
A )
I `]`
A `]`
I }
A }
I '
A '
I "
A "

## 文本对象

w：word 单词
s：sentence 句子
p：paragraph 段落
t：HTML 标签（tag）


## Misc

[[缩进]]
[[Ctrl+T]]：缩进
[[Ctrl+D]]：反缩进
设置 `smartindent` 关闭 `autoindent`

[[Ctrl+R Ctrl+W]]：搜索时插入光标所在单词

[dstokes/vim-stream](https://github.com/dstokes/vim-stream): A streaming parser / lexer for vim keystrokes

[hammerspoon: remove keylogger · wincent/wincent@848eb03](https://github.com/wincent/wincent/commit/848eb03bbf9bbf2d6a67c920d1283d9af4dcb630)

[skywind3000/awesome-cheatsheets/vim.txt](https://github.com/skywind3000/awesome-cheatsheets/blob/master/editors/vim.txt)

[[SpaceVim 快捷键]]

[[Emacs 快捷键]]

[[VSCode 快捷键]]


