---
title: "到了 2018 年，还有学习 Emacs 的必要吗？"
author: JoyerHuang_悦
categories: 
date: 2022-09-25 03:31:52 +0800
tags: Emacs
excerpt: 
---




[到了 2018 年，还有学习 Emacs 的必要吗？](https://blog.csdn.net/DelphiNew/article/details/80112823)


> 版权声明：本文为博主原创文章，遵循 [CC 4.0 BY-SA](http://creativecommons.org/licenses/by-sa/4.0/) 版权协议，转载请附上原文出处链接和本声明。 

[[Emacs]] 是个古老的编辑器，部分使用者对其相当痴迷，认为所有其它编辑器都是渣渣。

作为 10 多年的老用户，在 2018 年，重新谈一谈这个编辑器。

如果在网上搜索“effective emacs 中文版”，应该还能看到本人 10 年前翻译 steve yegge 的 effective emacs

[[Effective Emacs 中文版]]

这篇文章当时对我来说关键是打开了思路：自己改变适应来提升效率。

那么多年以后，文中的 10 个建议应该如何看待呢？

> 条款 0：把 Caps-Lock 和 Control 键互换！

2018 review: 其实不换也行了。现在的机械键盘，用手掌边沿去按 Ctrl 比用小指按更容易更舒服

> 条款 1：不用 Alt 来调用 M-x

2018 review: 我还是用 alt 更多，只不过有时和虚拟机或者 ubuntu 系统冲突时用一个 esc x

> 条款 2: 使用 backward-kill-word (向后删一词) 而不是 Backspace（向后删一字）

2018 review: 这个一真在用，写东西时如果打错一个字符，整词重写配合补全真的单个位置改更快

> 条款 3：使用递增式搜索来进行快速导航

2018 review: 这条如今看来应该成为条款 0，在任何时候，用 vim 或者看网页用 IDE，即时反馈的搜索都比眼睛快，而且如果你不小心看错了 l 和 1，搜索绝对不会看错。

> 条款 4：使临时 Buffer

2018 review: 一直在用，临时计算会用 elisp buffer，草稿用 xxx0/xxx1 这样的名字随时新建 buffer，emacs 的 buffer 非常 lightweght，常开 200 个也无压力

> 条款 5：精通有关 buffer(缓冲区) 和 window(视窗) 的命令

2018 review: 必须掌握；分窗编辑，buffer 操控如果不掌握，条款 4 作废

> 条款 6：丢弃[[GUI]]

2018 review: 现在并不排斥 GUI，不过，ssh shell 时，recover shell 时，由于 emacs 的存在，没有任何不适感。

> 条款 7：掌握最重要的帮助功能

2018 review: Page by page 读完 emacs 用户手册，只能说，全部掌握更好，毕竟要用一辈子的

> 条款 8：掌握 Emacs 的正则表达式

2018 review: re is everywhere

> 条款 9：掌握一套细致的文本处理命令

2018 review: 时间久了套路自成

当时编辑器的行情和现在不同，EditPlus、UltraEdit、NotePad++虽然也算功能强大，但红火程度和如今的 Visual Code、TextMate 相去甚远。Emacs 和 Vim 功能完善，但 Linux 的桌面普及度很低，所以用这些高冷的编辑器很有神秘的仪式感。

我这篇 Markdown 是用 Visual Studio Code 写的，因为 preview 功能我不用配置。

我有个感觉：现在的主流编辑器能完成 99% 我用 emacs 能做的事。

但是不知道为什么，综合下来，发现别的编辑器最多 10 个 tab 左右，我就不想继续用了。而 emacs，今天没有重度使用，不知不觉开了 135 个 buffers，也许不只 1% 吧。

