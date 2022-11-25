---
title: "Emacs 快捷键"
categories: 
date: 2022-10-10 15:18:55 +0800
tags: Emacs 快捷键
excerpt: 
---

[emacs-keybindings table](https://wttools.sourceforge.net/emacs-stuff/emacs-keybindings.html)

[jixiuf/vmacs/conf/conf-keybind.el](https://github.com/jixiuf/vmacs/blob/master/conf/conf-keybind.el#L106)

Ctrl+X `?`：按键列表（[[emacs-which-key]]）

> [!NOTE] 如何给一个快捷键绑定不同功能？
> 想法：根据是否有文本对象选中、选中的文本对象类型，执行不同操作。
> 参考资料：
> [region active的时候使用transient-map - Emacs China](https://emacs-china.org/t/region-active-transient-map/6932)


[【询问】如何记录并输出 Emacs 的按键过程 - Emacs China](https://emacs-china.org/t/emacs/22413)

[Here's a list of Emacs keyboard shortcuts that I use on a regular basis, might be useful to some. : emacs](https://www.reddit.com/r/emacs/comments/x43eie/heres_a_list_of_emacs_keyboard_shortcuts_that_i/)

## 按键

C：Ctrl
M：Option/Alt
A：
s：
S：
N：
O：
SPC：

dead-acute
dead-ascii-circum
dead-circum
dead-ascii-tilde
dead-circumflex
dead-diaeresis
dead-grave
dead-tilde
double-down-mouse-1
double-mouse-1
mouse-1
mute-acute
mute-ascii-circum
mute-ascii-tilde
mute-diaeresis
mute-grave

## 待整理

[[Ctrl+U]]：前缀参数接收（universal-argument）
numeric-argument
Ctrl+X：字符扩展命令（Character eXtend），之后输入另一个字符或组合键
Option+X：命令名扩展，之后输入一个命令名（execute-external-command）

Ctrl+U 8 Ctrl+F：向前移动8个字符
Ctrl+U 8 `*`：插入 8 个 星号

[[Ctrl+Z]]：挂起 Emacs，iconify Emacs or suspend it in terminal（suspend-frame）
[[Ctrl+X Ctrl+C]]：关闭（Close）Emacs 或永久退出（save-buffers-kill-terminal（exit Emacs permanently））

Ctrl+X `[`：移动光标到页首
Ctrl+X `]`：移动光标到页尾
Ctrl+X `<`：scroll left
Ctrl+X `>`：scroll right
Ctrl+X 2 0 Ctrl+X F：设置折行（Wrap）参数


[[Ctrl+X Ctrl+D]]：list-directory
[[Ctrl+X Ctrl+E]]：eval-last-sexp


[[Ctrl+X Ctrl+J]]：dired-jump
[[Ctrl+X Ctrl+K]]：kmacro-keymap

[[Ctrl+X Ctrl+N]]：set-goal-column

[[Ctrl+X Ctrl+V]]：replace this file with the file you really want
[[Ctrl+X Ctrl+W]]：write buffer to a specified file

[[Ctrl+X Return]]：Prefix Command

[[Ctrl+X Ctrl+Z]]：suspend-frame


## Major Mode Bindings

[[Ctrl+J]]：eval-print-last-sexp
[[Escape 键]]：Prefix Command
[[Delete 键]]：backward-delete-char-untabify
[[Ctrl+Option+I]]：completion-at-point

[[Ctrl+Option+X]]：eval-defun

## Global Bindings

[[Ctrl+C]]：mode-specific-command-prefix
[[Ctrl+H]]：help-command
[[Ctrl+Q]]：quoted-insert
Ctrl+`\`：toggle-input-method
Ctrl+`]`：abort-recursive-edit
[[Ctrl+_]]：undo
[[Ctrl+Space]]：set-mark-command
[[Ctrl+0]]：digit-argument
[[Ctrl+1]]：digit-argument
[[Ctrl+2]]：digit-argument
[[Ctrl+3]]：digit-argument
[[Ctrl+4]]：digit-argument
[[Ctrl+5]]：digit-argument
[[Ctrl+6]]：digit-argument
[[Ctrl+7]]：digit-argument
[[Ctrl+8]]：digit-argument
[[Ctrl+9]]：digit-argument



Ctrl+X `$`：set-selective-display
Ctrl+X (
Ctrl+X )
Ctrl+X `*`
[[Ctrl+X +]]
[[Ctrl+X -]]
[[Ctrl+X .]]
[[Ctrl+X ;]]：comment-set-column

Ctrl+X `\`：activate-transient-input-method
Ctrl+X `` ` ``：next-error
[[Ctrl+X A]]：Prefix Command
Ctrl+X A E：显示扩展缩写
Ctrl+X A G：添加全局缩写
Ctrl+X A L：添加模式本地缩写
Ctrl+X A I G：为缩写添加全局扩展
Ctrl+X A I L：为缩写添加模式本地扩展
[[Ctrl+X E]]：kmacro-end-and-call-macro
[[Ctrl+X F]]：set-fill-colomn
[[Ctrl+X L]]：count-lines-page
[[Ctrl+X M]]：compose-mail
Ctrl+X N：Prefix Command
Ctrl+X P：Prefix Command
[[Ctrl+X Q]]：kbd-macro-query
Ctrl+X R：Prefix Command
[[Ctrl+X V]]：vc-prefix-map
Ctrl+X X：Prefix Command


[[Ctrl+Option+C]]：exit-recursive-edit
[[Ctrl+Option+D]]：down-list

[[Ctrl+Option+J]]：default-indent-new-line

[[Ctrl+Option+L]]：reposition-window
[[Ctrl+Option+N]]：forward-list
[[Ctrl+Option+P]]：backward-list

[[Ctrl+Option+T]]：
[[Ctrl+Option+U]]：
[[Ctrl+Option+W]]：
[[Ctrl+Option+Y]]：
[[Ctrl+Option+Z]]：
Option+Space：just-one-space
Option+!：shell-command
Option+`$`：检查当前单词的拼写（ispell-word）
[[Option+%]]：query-replace
Option+&：async-shell-command
[[Option+']]：abbrev-prefix-mark
Option+(：insert-parenthese
Option+)：move-past-marker-stack
[[Option+,]]：xref-pop-marker-stack
[[Option+.]]：xref-find-definitions
Option+`:`：eval-expression
[[Option+=]]：count-words-region

Option+?：xref-find-references
Option+`\`：delete-horizontal-space
Option+`^`：delete-indentation
Option+`` ` ``：tmm-menubar
Option+G：Prefix Command
[[Option+I]]：tab-to-tab-stop
[[Option+J]]：default-indent-new-line
[[Option+Q]]：fill-paragraph
Option+S：Prefix Command

Option+`|`：shell-command-on-region


## 帮助

[[Ctrl+H .]]：describe-local-help
Ctrl+H 4：Prefix Command
[[Ctrl+H Ctrl+A]]：about-emacs
[[Ctrl+H Ctrl+C]]：describe-copying
[[Ctrl+H Ctrl+D]]：view-emacs-debugging
[[Ctrl+H Ctrl+E]]：view-external-packages
[[Ctrl+H Ctrl+F]]：显示 Emacs FAQ（view-emacs-FAQ）
[[Ctrl+H Ctrl+H]]：帮助界面（help-for-help）
[[Ctrl+H Ctrl+N]]：view-emacs-news
[[Ctrl+H Ctrl+O]]：describe-distribution
[[Ctrl+H Ctrl+P]]：view-emacs-problems
[[Ctrl+H Ctrl+S]]：search-forward-help-for-help
[[Ctrl+H Ctrl+T]]：view-emacs-todo
[[Ctrl+H Ctrl+W]]：describe-no-warranty
[[Ctrl+H I]]：打开 info 阅读器
[[Ctrl+H T]]：Emacs Tutorial
[[Ctrl+U Ctrl+H T]]：[Emacs TUTORIAL 中文](https://github.com/emacs-mirror/emacs/blob/3af9e84ff59811734dcbb5d55e04e1fdb7051e77/etc/tutorials/TUTORIAL.cn)
[[Ctrl+H ?]]：帮助的帮助（help-for-help），同[[Ctrl+H Ctrl+H]]
[[Ctrl+H A]]：相关命令搜索（apropos-command: show commands matching a string）
[[Ctrl+H B]]：runs the command describe-bindings (found in global-map)（describe-bindings）
[[Ctrl+H C]]：显示快捷键绑定的命令（describe-key-briefly）
[[Ctrl+H Shift+C]]：describe-coding-system
[[Ctrl+H D]]：列出含有某一关键词的文档（apropos-documentation）
[[Ctrl+H E]]：view-echo-area-messages
[[Ctrl+H F]]：查看函数定义（describe-function）
[[Ctrl+H Shift+F]]：Info-goto-emacs-command-node
[[Ctrl+H G]]：describe-gnu-project
[[Ctrl+H H]]：view-hello-file
[[Ctrl+H I]]：阅读手册（info）
[[Ctrl+H Shift+I]]：describe-input-method
[[Ctrl+H Shift+K]]：Info-goto-emacs-key-command-node
[[Ctrl+H K]]：查询指定快捷键绑定的命令和它的作用（describe the function a key runs（command key binding），describe-key）
[[Ctrl+H L]]：显示最后 100 个键入的内容（view-lossage(displays your last input keystrokes and the commands they invoked)）
[[Ctrl+H Shift+L]]：describe-language-environment
[[Ctrl+H M]]：查看当前 Buffer 的模式（Mode）相关帮助文档（get mode-specific information, describe-mode）
[[Ctrl+H N]]：view-emacs-news，同 [[Ctrl+H Ctrl+N]]
[[Ctrl+H O]]：describe-symbols
[[Ctrl+H P]]：finder-by-keyword
[[Ctrl+H Shift+P]]：显示本机 Emacs Lisp 包的信息（describe-package）
[[Ctrl+H Q]]：help-quit
[[Ctrl+H R]]：info-emacs-manual
[[Ctrl+H Shift+R]]：info-display-manual
[[Ctrl+H S]]：describe-syntax
[[Ctrl+H Shift+S]]：info-lookup-symbol
[[Ctrl+H T]]：Emacs Tutorial（help-with-tutorial）同 Ctrl+U Ctrl+H T
[[Ctrl+H W]]：显示命令被绑定到哪些快捷键上/当前 Buffer 所有的快捷键（where-is）
[[Ctrl+H V]]：查询变量的含义和值（describe-variable）
[[Ctrl+H Return]]：view-order-manuals
Ctrl+H Ctrl+`\`：describe-input-method


## 文件/缓冲区（Buffer）操作

[[Ctrl+X B]]：切换缓冲区（switch-to-buffer）
[[Ctrl+X D]]：[[Dired]]：Read a Directory, to operate on its files
[[Ctrl+X I]]：从其他文件内容插入到当前缓冲区（insert-file）
[[Ctrl+X K]]：关闭当前缓冲区（kill-buffer）
[[Ctrl+X S]]：保存（Save）多个缓冲区
[[Ctrl+X Ctrl+B]]：显示缓冲区列表（list-buffers）
[[Ctrl+X Ctrl+F]]：打开/新建文件（Find File）
[[Ctrl+X Ctrl+S]]：保存当前缓冲区/存储文件（save-buffer）
[[Ctrl+X Ctrl+R]]：打开文件（只读）（find-file-read-only）
[[Ctrl+X Ctrl+Q]]：将当前 Buffer 切换为只读模式（toggle read-only status of buffer（read-only-mode））
[[Ctrl+X Ctrl+V]]：打开相近文件（find-alternate-file，路径自动以当前文件名填充，方便修改）
[[Ctrl+X Ctrl+W]]：当前缓冲区另存为（write-file）



## 光标&屏幕移动

光标：[[Ctrl+X =]]：what-cursor-position
屏幕：[[Ctrl+L]]：调整光标在屏幕中的位置，即重绘屏幕（recenter-top-bottom, redraw garbaged screen: scroll current line to center, top, bottom)
[[Ctrl+L Ctrl+L]]：将光标所在行（当前行）带到屏幕的最上方
屏幕：[[Ctrl+X <]]：scroll-left
屏幕：[[Ctrl+X >]]：scroll-right
屏幕：[[Option+R]]：光标移动到窗口的中间、最上、最下（move-to-window-line-top-bottom）
屏幕：[[Ctrl+Option+V]]：光标在第一个窗口，控制第二个窗口翻页向下翻页（scroll-other-window）
屏幕：[[Ctrl+Option+Shift+V]]：光标在第一个窗口，控制第二个窗口翻页向上翻页
分页符：Ctrl+X `[`：backward-page
分页符：Ctrl+X `]`：forward-page
函数：[[Ctrl+Option+A]]：beginning-of-defun
函数：[[Ctrl+Option+E]]：end-of-defun
字符：[[Ctrl+B]]：移动到光标左侧一个字符（backward-char）
字符：[[Ctrl+F]]：移动到光标右侧一个字符（forward-char）
字符：Option+G C + 字符：转到指定字符
单词：[[Option+B]]：移动到光标左侧一个单词（backward-word）
单词：[[Option+F]]：移动到光标右侧一个单词（forward-word）
行：Option+G G + 行号：回车确认转到指定行
行：[[Ctrl+A]]：移动到行首（move-beginning-of-line）
行：[[Ctrl+E]]：移动到行尾（move-end-of-line）
行：[[Option+M]]：移动到一行缩进的开头（back-to-indentation）
行：[[Ctrl+N]]：移动光标到下一行（next-line）
行：[[Ctrl+P]]：移动到上一行（previous-line）

句子：[[Option+A]]：backward-sentense
句子：[[Option+E]]：forward-sentense
段落：[[Option+{]]：backward-paragraph
段落：[[Option+}]]：forward-paragraph
页：[[Ctrl+V]]：进入下一页，即查看下一屏文字（scroll-up-command, scroll to next screen），即 [[PageDown]]/Ctrl+X `]`
页：[[Option+V]]：进入上一页（scroll-down-command），即 [[PageUp]]/Ctrl+X `[`
Sexp：[[Ctrl+Option+B]]：backward-sexp
Sexp：[[Ctrl+Option+F]]：forward-sexp
文件/Buffer：[[Option+<]]/[[Option+Shift+,]]：beginning-of-buffer
文件/Buffer：[[Option+>]]/[[Option+Shift+.]]：end-of-buffer


## 窗口管理


[[Ctrl+X 6]]：2C-command

[[Ctrl+X 8]]：Prefix Command

### Window

[[Ctrl+X 0]]：关闭当前窗口（delete-window）
[[Ctrl+X 1]]：关闭其他窗口（delete-other-windows：离开缓冲区/关掉其他窗格，只保留一个）
[[Ctrl+X 2]]：水平分割窗口（split-window-below：分为上下两个 Window）
[[Ctrl+X 3]]：垂直分割窗口（split-window-right：分为左右两个 Window）
[[Ctrl+X O]]：切换到下一个窗口（other-window）
Ctrl+X `^`：扩大窗口  （enlarge-window，使窗口变高）
Ctrl+X `{`：缩小窗口  （shrink-window-horizontally）
Ctrl+X `}`：让窗口变宽（enlarge-window-horizontally）

Ctrl+X 4：ctl-x-4-prefix
[[Ctrl+X 4 B]]：**在另一个窗口**切换到另一个 Buffer，如果只有一个窗口就分割成两个。
[[Ctrl+X 4 D]]：**在另一个窗口**打开目录（Dired），如果只有一个窗口就分割成两个。
[[Ctrl+X 4 F]]：新窗口中打开文件
[[Ctrl+X 4 R]]：
[[Ctrl+X 4 .]]：在其他窗口中查找标签，同 [[Ctrl+X 5 .]]

### Frame

Ctrl+X 5：ctl-x-5-prefix
[[Ctrl+X 5 0]]：关闭当前面板，类似 [[Ctrl+X 0]]
[[Ctrl+X 5 1]]：删除所有其他面板，类似 [[Ctrl+X 1]]
[[Ctrl+X 5 2]]：打开新面板（Frame），类似 [[Ctrl+X 2]]
[[Ctrl+X 5 B]]：在其他面板中选择缓冲区，类似 [[Ctrl+X 4 B]]
[[Ctrl+X 5 D]]：在其他面板中运行 Dired，类似 [[Ctrl+X 4 D]]
[[Ctrl+X 5 Ctrl+O]]：在其他面板中显示缓冲区，类似 [[Ctrl+X 4 Ctrl+O]]
[[Ctrl+X 5 F]]：在新面板（Frame）中打开文件，类似 [[Ctrl+X 4 F]]
[[Ctrl+X 5 O]]：切换到其他面板，类似 [[Ctrl+X O]]
[[Ctrl+X 5 R]]：在其他面板中以只读模式查找文件，类似 [[Ctrl+X 4 R]]

### Tab



## 编辑

[[Ctrl+G]]：终止运行中的命令（放弃当前输入）
[[Return 键]]：newline/退出增量搜索
[[Ctrl+O]]：在下方新建一行（open-line）
[[Ctrl+Option+O]]：split-line
[[Ctrl+X Ctrl+O]]：删除连续空行为一个空行（delete-blank-lines）
[[Tab 键]]：缩进当前行（取决于模式）（indent-for-tab-command）
[[Option+;]]：缩进注释（comment-dwim）
Ctrl+Option+`\`：indent-region
[[Ctrl+Option+Q]]：缩进 sexp（取决于模式）（indent-pp-sexp）
[[Ctrl+X TAB]]：缩进区域刚性 arg 列（indent-rigidly）

## 标记

[[Option+H]]：mark-paragraph
[[Ctrl+X Ctrl+P]]：mark-page
[[Option+@]]：设置标记 arg 单词（mark-wkrd）
[[Ctrl+Option+@]]：mark-sexp
[[Ctrl+Option+H]]：mark-defun
[[Ctrl+Space]]：设置开始标记
[[Ctrl+X Space]]：rectangle-mark-mode
Ctrl+@：设置开始标记（set-mark-command）
[[Ctrl+X Ctrl+X]]：交换光标和标记（exchange-point-and-mark）
[[Ctrl+X Ctrl+@]]：pop-global-mark
[[Ctrl+X H]]：mark-whole-buffer


## 复制/拷贝

[[Ctrl+W]]：移除/剪切标记区域的内容 Cut（Kill）text in region between mark and current position（kill-region）
[[Option+W]]：复制标记区内容（kill-ring-save）
[[Super+C]]：拷贝


## 剪切（kill）


单词：[[Option+D]]：剪切光标右侧一个单词（kill-word）
单词：[[Ctrl+Backspace]]：backward-kill-word，同 [[Option+Delete]]
单词：[[Ctrl+Delete]]：kill-word
单词：[[Option+Delete]]：剪切光标左侧一个单词
行：[[Ctrl+K]]：剪切光标右侧一行（kill-line），第一次删除行内内容，第二次删除换行符。
句子：[[Option+K]]：剪切光标右侧句子（kill-sentense）
Sexp：[[Ctrl+Option+K]]：kill-sexp
区域：[[Ctrl+W]]：剪切选中区域（kill-ring-save）
区域：[[Option+W]]：
区域：S+Delete：kill-region

## 粘贴（yank/pull-back）

[[Ctrl+Y]]：粘贴/插入/召回（Yank）移除/剪切（Kill）的区域/行
[[Option+Y]]：召回更早的内容（yank-pop：在 Kill 缓冲区内循环）

粘贴（单次）：Yank：召回被移除（Kill）的字符
[[Option+Y]]：粘贴（多次）



## 删除（delete）

字符：[[Backspace]]：删除光标左侧一个字符
字符：[[Delete 键]]：删除光标右侧一个字符（delete-char）
字符：[[Ctrl+D]]：删除光标右侧一个字符（delete-char）
行：[[Option+0 Ctrl+K]]：删除光标左侧一行
句子：[[Ctrl+X Delete]]：删除光标左侧句子
区域：[[Option+Z]]：删除到指定字符（zap-to-char）


## 撤销（undo）/重做（redo）


[[Ctrl+X U]]：撤销上次的编辑（undo last edits），同 [[Ctrl+_]] 或 Ctrl+`/`
Ctrl+`?`：undo-redo，同 [[Ctrl+Option+_]]



## 重复

[[Ctrl+U]]
[[Ctrl+X Z]]：repeat

## 补全

[[Ctrl+X ']]：expand-abbrev

## 搜索&替换

[[Return 键]]：退出搜索模式
[[Ctrl+X Ctrl+F]]：寻找文件（find-file，打开/新建文件）
[[Ctrl+G]]：退出搜索模式/中止部分键入或执行的命令（keyboard-quit）
[[Ctrl+S]]：向前搜索（isearch-forward）
[[Ctrl+R]]：向后搜索（isearch-backward）
[[Ctrl+Option+S]]：正则表达式搜索
[[Ctrl+Option+R]]：正则表达式搜索（反向）
[[Option+%]]：询问并替换（query replace，交互式替换）
Option+S W Return
Option+S W Ctrl+R Return
[[Option+P]]：选择上一个搜索字符串
[[Option+N]]：选择下一个搜索字符串


## 交换&修改

[[Ctrl+T]]：交换两个字符的位置（transpose-chars）
[[Option+T]]：交换两个单词的位置（transpose-words）
[[Ctrl+X Ctrl+T]]：交换前后两行的位置（transpose-lines）
[[Option+C]]：从光标位置到单词开头字母修改为大写（capitalize-word）
[[Option+U]]：从光标位置到单词结尾字母修改为大写（upcase-word）
[[Option+L]]：从光标位置到单词结尾字母修改为小写（Lowercase, downcase-word）
[[Ctrl+X Ctrl+L]]：downcase-region
[[Ctrl+X Ctrl+U]]：upcase-region



## GUI

F10：下拉菜单栏
Option+`` ` ``：互动菜单栏



## 快捷键管理/配置插件

[[one-key]]

[[emacs-which-key]]

[[general.el]]

[[meow-edit]]

[[emacs-evil]]

[[xah-fly-keys]]



## 快捷键优化相关讨论

[Xah Lee Emacs Pinky 2020](http://xahlee.info/emacs/emacs/emacs_pinky_2020.html)

[我为什么要另开发一套模式编辑？ - Emacs China](https://emacs-china.org/t/topic/17343)

[畅玩emacs：一种全新的emacs快捷键使用方式(总结贴) - Emacs China](https://emacs-china.org/t/emacs-emacs/14369)



## Misc

[emacs 在Mac上的安装及一些相应配置 - 拾遗笔记](http://jixiuf.github.io/blog/00002-emacs-on-mac.html/#sec-8)

[[Vim 快捷键]]

[[VSCode 快捷键]]

[[Spacemacs 快捷键]]

[[SpaceVim 快捷键]]



[MarcoIeni/intellimacs](https://github.com/MarcoIeni/intellimacs): Spacemacs' like key bindings for IntelliJ platform.

[yugaego/cheat-sheets/Emacs.org](https://github.com/yugaego/cheat-sheets/blob/main/Emacs.org)

```dataview
LIST
FROM [[]] AND !outgoing([[]])
SORT file.name ASC
```


