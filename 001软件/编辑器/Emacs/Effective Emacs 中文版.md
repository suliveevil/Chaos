---
title: "Effective Emacs 中文版"
categories: 
date: 2022-11-11 06:14:54 +0800
tags: 
excerpt: 
---

译者：[uppet (Joyer Huang)](https://github.com/uppet)

[带附注的 Effective Emacs 中文版](https://blog.csdn.net/DelphiNew/article/details/2053676)
十个提升你Emacs生产力的高招

[[到了2018年，还有学习Emacs的必要吗？]]

[[Emacs]] 是世界上最好的[[编辑器]](真的有很多人这么认为)。不要以为emacs只是在编写程序时很牛X，其实只要你真正精通了emacs，会发现她几乎在所有用到打字的应用(比如写email啦，起草文档啦，写blog啦，写html/xml文件等等等)时都是最牛的。 

本文中所写的招数是面向emacs高级用户（译者看此文时并不是emacs高级用户，同样获益非浅啊）的，你应该熟悉基本的emacs启动编辑操作，你得知道怎么把东东拷到你的.emacs里面，在所拷的东东出现问题时，你得知道怎么调试（或者能找到一个乐于助人的emacs高手也行）。 

这里所列出的招数并非都是对emacs的定制，有些是对你桌面环境的调节，这些调节可以使桌面环境更好地与emacs无缝连接工作。 

要想理解emacs的高效，关键是要明白她的所有设计都是出于效率考虑的，这里所说的效率包括“动作的效益”。任何一个老练的音乐家都知道“动作的效益”是成为世界级艺术家的关键一环。在演奏时任何多余的动作都是浪费精力而且会产生不良效果。 

使用鼠标基本上可以说是最违背动作效益的行为，因为你得提起你的手...摸着鼠标...摆正方位...可以说鼠标是个极笨重的设备，emacs高手在不得不用一下鼠标的时候，都认为这是一次高速缓冲命中失败（学过微机原理的人可能听得懂这句话吧），大大影响的连贯性和速度。 

相对于emacs高手，图形化[[IDE]]用户就好比业余的音乐家，带着些许郁闷地把玩着自己的乐器。一般IDE都又炫又好看的对话框，让你很难与之交互（这句话面向的听众是emacs高手，看过下面的条款6就会明白他说什么了），但是却给新手一些操控的快感。可是咧~这种操控是相当粗糙的，真正的程序员需要的是能给他们更多操控机能的东东。（所以基本上可以说，emacs对真正的程序员来说是世界上最好的编辑器啦） 

IDE还具备重构功能，一般什么多人都爱拿这个来吹，因为重构工具可以自动地帮你整理结构不良的代码。没错，在某些程度上来说。但是偶告诉你个秘密喔：重构工具不懂英文耶（所以更不懂中文啦，55）。重构工具一般只能处理一些特定的文本（前面所说的“某种程度”），当她碰上其它编辑工作时，就无能为力啦。重构工具只能解决一小部分问题，而emacs却几乎能在你进行任何一类编辑时提供一系列条理清晰的操控能力。 

然而，正如我常说的，眼见为实，即便你相信，你也得看到实际效果才心甘。那么接下来，你得对emacs做一个严肃的、深远的、长期的承诺，才能真正精通emacs。精通emacs的过程包括学习Lisp、定制emacs使她最符合你的设想，随着这一过程的，你会更加地渴望有更多定制、更多的自动化，所以，哪怕你已经精通了emacs，你对她的定制和扩展也不会停息的。 

所以，你看明白了吧？emacs可不是一个给懦夫使用的编辑器，这篇博客文章是给那些下了决心、做了承诺并且想要进一步增强他们对这个优雅的顶级的万古长青的软件的掌握。 

其他的读者或者听众：我想你的Eclipse应该刚好启动完毕了，你可以调头回去忙你自个儿的啦~ 

条款1：把Caps-Lock和Control键互换！ 

[windows平台现在用一个叫remapkey.exe的程序可以轻松实现了]  

在Windows和苹果Mac键盘上，那个Ctrl键居然被远远地放在左下角，而Ctrl对于emacs的使用却是时时刻刻都很重要的，如果你不把Ctrl放到一个更舒服的位置，你就很难成一个emacs艺术大师了。这位置应该与你的基本手位处于同一行，那么，Caps Lock是最佳选择。在很多unix工作站上，这个位置放的就是Ctrl键，原因同上。 

要想在w2000或者XP中实现这个互换，需要修改注册表。从开始菜单中选择“运行”，输入regedit。在左边的树状视图中，找到： 

HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Control/Keyboard Layout 

XXXXX不用译了。 

点击 KeyboardLayout 项，使之获得焦点。再从“编辑”菜单中选择新建一个二进制值，命名为 "Scancode Map"，它的类型应该显示为 REG_BINARY。 

然后选择这个新建的"Scancode Map"值项，用“编辑”菜单中选择修改二进制值，在二进制编辑对话框中，输入下列数据：   
 0000: 00 00 00 00 00 00 00 00   
 0008: 03 00 00 00 3A 00 1D 00   
 0010: 1D 00 3A 00 00 00 00 00 

选择OK关闭对话框，退出注册表编辑器，注销后重登入，你的caps和ctrl键应该就互换成功了。也可能要重启一次。 

在linux的X-Window中，可以使用xmodmap工具。在你的主目录新建一个名字为.xmodmap的文件，如果已经存在则只需修改。向该文件加入下列内容：   
 !   
 ! Swap Caps_Lock and Control_L   
 !   
 remove Lock = Caps_Lock   
 remove Control = Control_L   
 keysym Control_L = Caps_Lock   
 keysym Caps_Lock = Control_L   
 add Lock = Caps_Lock   
 add Control = Control_L   
保存，再向你的 ~/.bash_profile 文件加入一行：   
xmodmap ~/.xmodmap 

在Mac OS X（Panther或Jaguar）中，你得安装一个修改过的键盘驱动，这说来有些吓人，但是很有效。   
这儿有个关于驱动的讨论：   
http://www.macosxhints.com/article.php?story=20031102032521826   
如果你用的不是Mac笔记本，好像有一个XML文件可以编辑来实现，可以参考这儿：   
http://www.eecs.wsu.edu/%7Eschneidj/mac-os-x-10.3.html#swap   
下面的URL有一条关于在其它系统上实现的信息：   
http://www.manicai.net/comp/swap-caps-ctrl.html 

条款2：不用Alt来调用M-x 

Alt-x是最常用的emacs组合键，每次使用时你都得把左手蜷起来。任何一个你要做几千次的动作最好应该是流线型的，所以你最好希望可以用Ctrl键来调用M-x。（要想用Ctrl舒服，你得选把条款1完成了） 

要养成使用Ctrl键习惯的另一个重要原因是:Alt键并不可靠也并不是跨平台的标准键（译注：好羡慕作者能接触那么多BT的机型啊）。尤其是当你通过telnet或者ssh远程序登录时，在一些系统的设置或者终端设置下，alt-x可能都不能使用。与其为不同的系统设置而头痛，还不如直接就不使用alt键，使用一个任何时候都有效的组合键相对来说更加容易且方便。 

我选用的组合键序列是Ctrl-x Ctrl-m。请注意，当你调用一个2键序列，而这两个组合键都使用相同的转义键时，你只需按住转义键（这里指Ctrl），再按其它两个键即可（这里指x和m）。所以现在调用M-x的方法是：按住Ctrl，按x，按m，松开Ctrl。 

将下面的lisp表达式加到你的.emacs文件中，就可以启用Ctrl-x Ctrl-m了：   
(global-set-key "/C-x/C-m" 'execute-extended-command)   
(global-set-key "/C-c/C-m" 'execute-extended-command) 

我另加了一行设定Ctrl-c Ctrl-m也调用同一命令，使得这个按键组合更能容错一些。如果偶不小心把Ctrl-x按成Ctrl-c，仍然能够成功调用。这两个按键都没有默认的emacs绑定，所以你的设置不会影响到其实的快捷键。 

你应该把这个按键序列练到习惯为止，到时你差不多都不想再用alt-x了。（当然，你还会用到alt键来做其它的事，一会儿就告诉你） 

顺便说一下，如果你想把这招发挥到极致，那在你按Ctrl-x最好不要用你的无名指来敲x键。这时我会用左手的食指的敲，因为觉得这样比较习惯，但是你可能会觉得用左手中指会更好一些。这是因为当你用小指去按那个变成Ctrl的Caps-Lock时，你的手并不处于键盘的基本方位。关键是要使用尽可能少的肢体伸缩，尽可能少的手指动作。你可以实验出你自己觉得最舒服的方式来。 

条款 3: 使用 backward-kill-word (向后删一词)而不是 Backspace（向后删一字） 

emacs高手一般都尽量避免使用backspace键，因为它离手的基本方位太远了。如果你经常打错字，但是你的速度又很快，一分钟打50个词以上的话，把整个词删掉重打可比勤勤恳恳地用backspace倒删到你打错的地方再从一半打起要经济实惠得多。 

加入下面的几行到你的.emacs文件中：   
(global-set-key "/C-w" 'backward-kill-word)   
(global-set-key "/C-x/C-k" 'kill-region)   
(global-set-key "/C-c/C-k" 'kill-region) 

请注意ctrl-w已经有一个默认绑定kill-region了，这是个相当重要的命令，所以你得把它重新绑定到其它按键序列中去。我用的是Ctrl-x Ctrl-k(然后再加一个容错版的Ctrl-c Ctrl-k)。这样用主要是因为我在以前工作的公司，一个很牛X的emacs高手这么帮偶设的，现在我会的很多emacs技术都是当初这个高手教偶的。重绑定Ctrl-x Ctrl-k意味着你没有了edit-kbd-macro的快捷键，但是这个键你真的不会经常去用，所以不会觉得丢了什么东东的。 

这样做还有一个额外的好处：很多Unix命令行shell都提供类似emacs的命令行编辑按键，而Ctrl-W一般都是backward-kill-word的默认绑定。这样的话，你的习惯就和很多shell一致了。 

你打字越快，这招就越升值。慢慢地你对如何最快更改各种打字错误会培养出一种最适合你自己的感觉。我的手感一般是这样的： 

1.如果我打错一两个字符，而此时我的光标刚好就在错误的旁边，我就用backspace键。 

2.如果错误字符在光标前面15到20个字符左右的地方，那我一般就使用Ctrl-W直接杀回去，然后重新打出这些词来。 

如果错误的字还在更远处，那偶就用alt-b跳回到错词后面，再做ctrl-b定位到错误的字符处理进行更正。 

对于比之更远的错误，我会使用快速导航来回到那个位置。条款4讲到一部分这个技术。 

使用ctrl-w绑定backward-kill-word时有件事情你可得小心了：Ctrl-w在很多windows程序中是强行绑定到“关闭窗口”这一操作上的。这一动作没得后悔，在浏览器窗口中，它也不会保存你填写过的表单。也就是说，如果你正在为一个网页填写表单，然后你忽地想用ctrl-w来更正一个错误，咔嘣！--完咧~在你那好用的OLE版M$ windows上，你的所有工作都白费了。目前我还不知道怎么覆盖掉这个可怕的行为，如果你知道怎么做，麻烦你考虑我一下。 

条款4：使用递增式搜索来进行快速导航 

知道如何高效地移动光标是成为emacs高手的关键。IDE用户把他们大部份的时间花在摸索鼠标上了，根本没有想过如何用其它方法来实现光标导航，却不知道自己的方法是多么的低效。在一个高手的手中，emacs是世界上最高效的文本编辑工具，主要是因为她可以让你不用鼠标做到几乎所有的事情。 

emacs高手总是设法让他们的会话窗口越高越好，最好是能垂直地填满整个屏幕--因为垂直的屏幕空间在你查看一个文档时可以说是最宝贵的空间了。当你使用屏幕空间一次性查看多行文本时，使用递增式搜索一般比使用鼠标直接定位要快得多。 

养成使用ctrl-r(向前递增式搜索)和ctrl-s(向后递增式搜索)来在文档中进行移动的习惯。当你要向前或者向后移动5行左右，而且你又看得到移动的目的地时，你应该使用递增式搜索。 

要想高效地做到这一点，你并不需要搜索你光标目的地处的整个单词。让你的目光掠过目标点周围的一行或者一段话，选择一个看起来唯一性比较强而且比较好敲的单词，然后递增地搜过去。如果你选单词不是那么的唯一，那可能要按两三次crtl-r或者ctrl-s。但是放心，emacs会把已匹配的单词高亮显示，如果你看到匹配的东东太多了，按一下ctrl-g，然后重找一个词来递增导航。 

一旦你掌握了它，再怎么强调这一招数的强大都不会过份的。你必须不断地重复直到你的手“自动地”去这样按才能算是真正掌握这一招。这时，emacs就好像变成你身体的延伸一样，成为你身体的一部分，你可以想都不用想就把这些微妙的按键敲出来。这类似于你学车时最终掌握的一些微妙的本能反应。 

条款5：使临时Buffer 

emacs最强大的功能之一就是她可以迅捷地生成一个不与任何一个文件关联的buffer。一旦你习惯了使用这一技术，你就对明显地感觉到其它编辑器这一功能性的不足。 

要想建一个临时buffer，很简单，切换过去就是了！Ctrl-x b调用命令switch-to-buffer，然后你就瞎按一通adsflj。马上地你就来到一个草稿本上，你可以在上面做笔记，把临时结果导过来，或者用来做任何对你手头问题有帮助的事。 

如果你打算维护多个临时buffer，你则应该给它们起些好记点的名字，比如：foo, bar, baz, buh...等等 

如果你打算边靠边地比对两个buffer，你可把emacs屏幕水平地分割一下。（条款6会讲到） 

由于你的临时buffer并不与任何一个文件关联，你杀它们就跟创建它们一样方便，用ctrl-k，也就是kill-buffer命令。 

如果你打算保存临时buffer的内容了，也很简单，使用Ctrl-x Ctrl-w调用write-file命令。她会提示你输入一个文件名。保存文件后，你可以杀掉这个buffer（译注：区区真的很喜欢用杀这个词来替代关闭这一说法~），并可以随时通过打开文件重新访问它的内容。 

条款6：精通有关buffer(缓冲区)和window(视窗)的命令 

你会经常做一些需要打开多个视窗的编辑工作的。emacs使用一套与其它应用程序有些许不同的术语。一个buffer是指一个包含文本的逻辑空间，这个空间有可能会与一个进程或者文件关联；一个window是屏幕上显示着一个buffer（或者这个buffer的一部分内容）的可见区域。一个frame(窗框)则是一个你在操作系统说法里面管它叫window（窗体）的东西：一个独立的包含标题栏或者是类似东西的窗体。   
下面是几个需要重点掌握的命令：   
 * ctrl-x 2: split-window-vertically -- 把你的当前window切成上下两个等高并且显示同一buffer的window（在你改变其中一个让它显示其它buffer之前） 

 * ctrl-x 3: split-window-horizontally -- 很多人并不常用这个，但有时它非常有用喔。--把当前window切成左右两个等宽window。 

 * ctrl-x +: balance-windows  -- 让所有可见的window近似等高。如果你刚用ctrl-x 2两次，那你就有两个1/4高的window和一个1/2高的，使用这招可以让这三个window变得等高。 

 * ctrl-x o: other-window --把光标移动到window列表的下一个window当中去，一般会把光标移到window下面一个window，或者回滚到最顶的window。 

 * ctrl-x 1: delete-other-window -- 让当前光标所在的window填满整个frame；其它的window都会消失。请注意buffer是由buffer-list的维护的，所以无论什么时候运行这个命令都是安全的啦。 

对话框：所有罪恶的根源 

有几个软件设计决择是促使emacs成为一个无比强大的编辑器的主要原因。其中一个就是：emacs没有对话框！当然，这也是emacs在一个只能显示文本的终端窗口也能提供完备功能的一个前提条件。但是巧就巧在，这正是使emacs暴走般强大的一个关键的特性。 

对话框很废！对新手，经常会有焦点不明的问题，很多设计不好的程序还会因为对话框而自锁在刷新线程里面。对话框在你定制的视频模式下面从来就不会表现得很好。比如说吧，如果你设置了用双显卡设置了双头显示，在windows中的应用程序对话框老是会从错误的一个窗口中弹出来，这种事情跟生痔疮似的让人难受无比。 

在一个单显示器的机器上，对话框有时会在出现在你意料之外的地方。哪怕是像Microsoft Office这样设计精良软件程序，模式对话框也会从一堆被隐盖的窗口中的某一个里弹出来，这会让整程序看上去完全没有回应，在你找到那个无赖对话框并把它置顶之前，程序就像死掉一样。 

由于一些很奇怪的原因，对话框一般都大小不变的。这与应用程序窗体正好相反：它们几乎都是可改变大小的，也正因为如此，很多用户界面设计师要花好大的功夫来保证各种用户界面元素在窗体改变时能安排恰当的位置和尺寸。但是在默认情况下，大部分的对话框都是尺寸固定的--也许这是因为对话框根本就是窗口管理器设计完成之后再草草加入的补丁功能，而窗口管理器的设计压根儿就没把对话框考虑在内(猜猜俺是怎么知道这个的吧~~)。TMD，甚至在Java Swing中，对话框也是一团糟。 

还有，你别跟俺提按钮的事儿，一提这个就来气儿。对话框在GUI世界里都有至少25年历史了，但是对话框上该有些什么按钮都还没有一个统一的标准--甚至连按钮应该放在哪儿都各有各的说法。有些对话框把按钮放在标题栏里、有些放在底下、有些左边、有些还在右边。当你想用标题栏中的控件来关闭对话框时，由于不同的GUI设计，很难100%保证它真的会按你想的那样去做。谁都知道这样很违背直觉，但是大伙儿又只能听之任之。 

对话框的问题远不止于“输入焦点”、“尺寸变更”、“控件定位”。哪怕你把对话框做得和主程序的UI一模一样，对话框也无法具备主UI的功能。比如你定义(或者录制)了键盘输入的宏(不光是emacs有macro--其它程序如Excel或Word都有)，那么这些宏在对话框中是无效的。如果对话框有一个可以卷动的控件，那可能你除了用卷动条之外再没其它办法可以卷页了(在emacs里的话，哪都能用C-v M-v)。 

形象一点来说就是，现在你打开IE，选择Internet选项，进入‘高级’标签页。就在这儿了：你所有的全局自定义IE的选项都可怜巴巴地列在这儿。如果你想找到其中一个特定的选项，那就得小心翼翼地卷动，放大眼睛地看，再用鼠标点。休想用‘编辑/查找’，这当然得是一个模式的，尺寸固定的对话框。基本上，对话框都这样。 

救星：Buffer 

在Emacs中，所有的输入都写入buffer里，而buffer是Emacs的‘一等公民’。所有你最喜爱的导航快捷键，包括增量搜索，在任何buffer中都是可用的。你可以在任意buffer中选择和拷贝文本，在Emacs中没有什么‘模式的buffer’，所以你可以在保留任何buffer的内容的同时在其它window中工作，这些buffers不一定是可见的--这种‘对话框’的内容会一直保留在buffer列表中，直到你亲自删除它。 

在其它的程序中你很难找到像Emacs的buffer系统这样的体验。一旦你领会到这种模型是多么的强大和一致，你使用其它程序时就会觉得有点不爽了--因为老会觉得它们的UI很碍事儿。 

精通buffer和window，并且对它们的操控游刃有余的时候，你就步上Emacs的大师之路了。 

条款7：丢弃UI 

你不需要菜单栏，菜单栏只不过是给那些找不着北的新手用的拐杖而已。同样，你也不需要有大按钮的工具栏，不需要卷动条--这些东东都是给失败者的，而它们却占用了宝贵的屏幕空间。还是在.emacs中用下面的代码把它们全关了吧。 

关掉这些东西，你不会丢失什么功能的，在下一个条款中我将谈到具体的高效作法。 

(2006/01/02加入的注解)最近看到一个人回复，此君因为条款7而对本文全篇不爽。显然，他就是那种非常习惯于使用鼠标啊菜单啊之类东东的人，因此，觉得被称为“找不着北的新丁”很不爽。此君进一步阐述，说有无数的研究表明使用鼠标更加快捷。于是乎我也觉得自己应该把事情说清楚一点好：条款接下来的部分是全新的，这多亏了这位不忿的读者的Blog。 

首先要说的是，我也常常希望emacs能有一个更猛一点儿的显示引擎（译注：这方面Xemacs做得可以），可以有像其它桌面应用程序一样的GUI和图像功能。然而未能如愿啊；我的博客文章"The Emacs Problem"(译注：自己google一下吧)对此有所阐述。当然，我也乐于看到emacs没加入这种功能。。诶，我说这些是想表明，我不是个没头没脑的反GUI份子。 

滚动条：是可有可无的 

由于用键盘就能达到同样效果，一般我都把emacs的滚动条关掉。然后，滚动条也有个好处：它可以很形象地显示出你在文本中的编辑位置及文本的长度；在状态区（译注:指mode line）的%-指示器不是那么好读取--无数研究都表明，确实如此。比如，这也是为什么美军在他们的反应堆中使用类似的比例量变尺。我们看数字时常出错，而读比例尺时不会~ 

所以，如果你觉得滚动条让你很爽，那我也没意见。就只是想提醒你，它会促使你去摸鼠标，而某些操作（比如跳转到文本头部）用键盘会更快，对此没必要做什么用户调查的。如果做一些计时试验的话，哪怕一些很耍赖的人，也不得不承认用键盘来导航更快捷。 

假定我们打算在一个很长的文本缓冲区的头部和尾部都插入包含80个连字符（-）的一行，而你现在又在文本缓冲区中间编辑。这个例子有些做作，但我还真是做过一些需要包含全部文本内容的剪辑工作。用键盘的话，我三秒就可以完成，并且完全回到编辑状态。我要按的键盘序列是："C-x t C-u 8 0 - RET C-x e C-u 8 0 -" 

如果你用鼠标，没有什么简易的方法能让你在3秒内做到这些事情。你想啊，你得往返两次去摸鼠标，抓住滚动柄，他它拖到第一行，这时候光标还不一定在行首，他就是说，你还得小心地点到那个位置去。 

当然，如果你勤加练习，可能5秒钟就得搞定，但何苦呢？如果经常要做这个，你应该写个宏啊。 

鼠标用例(only 1)：区域选择 

有些操作明显用鼠标更快。在emacs之外与你的窗口系统交互，如果另一个程序没有类似emacs的键盘导航功能，用鼠标一般会更快捷。但是在emacs内部时，我能想到的鼠标比键盘方便的操作就是：区域选择，尤其是你打算选一个矩形文本时。 

有时区域选择也是用键盘更好。比如，设定mark位置，然后用ctrl-n来选行，用ctrl-f一次多选一个字符。键盘的按键重复率是和硬件设定相关的，有时会觉得很慢。我自己的显示设定在一屏中可以包含大约100行。如果从中间移到屏幕底部，大约要用5秒。如果用鼠标来回操作，需要4秒。所以在可见区域选择时，用鼠标也不是很超值。 

但是，如果我是想选比一屏还要多的文本，或者选区的开头和结尾都在行内位置时，用鼠标就又可靠双快捷了。我也乐于使用。 

使用鼠标跟关掉UI不是一个事儿，只不过是相关的事情，所以就搁一块说罢了；我20年前就做过这样的计时试验了。我衷心地建议你把菜单关掉~ 

菜单：丢了它！   
用菜单来探索，了解更多的emacs功能是不错的。不幸的是，它比较容易产生误导，让你认为emacs的功能就那么多了。其实，很多emacs扩展并没有什么菜单支持――只有非常细心的扩展模块设计者才会花时间去添加菜单支持。所以如果你想只用菜单来了解emacs，你会错过很多很多功能的。 

菜单的另一个问题，有点儿类似于之前我们提到的对话框：它没有很强的伸缩性能。如果你用菜单来给用户提供1500个选项，这个菜单的显示搞不好会把窗口整死的；便如果用Emacs的buffer来做，小case啦，还有很诸如漂亮布局和分组显示等额外的好处。你用M-x list-colors-display或者M-x list-faces-display就知道我说的东东了。。 

菜单还有一个（大）问题，它没有自动补全~当你查看到一个比较深的子菜单层级中，以不小心进错一个子树时，很容易觉得自己是迷路了。没有什么探索方法比较可搜索的帮助系统更加灵活了，在MS的程序中是这样，在emacs中也是。 

最后，一旦你记住一个菜单功能了，每次你要使用时，你都得重新点击（搞不好还得进入子菜单）来调用。你调用次数越多，浪费的时间也就越多（相对于使用键盘来说）。 

所以我觉得emacs菜单不好：不能展现emacs全部的功能；不能给出提示帮助你找到你想要的功能；选择一多时菜单又撑不住（所以相比于树视图之类的组件，它不算是一个很通用的UI机制。）；当你知道怎么用时，用起来又很慢。 

简单来说呢就是：关掉菜单！就像那些闪亮的按钮一样~诶~~任何重要到要提供一个快捷按钮的操作，都应当有个快捷键。 

条款8：掌握最重要的帮助功能 

要找出当前buffer中所以的按键功能，输入M-x describe-bindings。它显示一个包含按键及被绑定命令的列表。   
你把光标移动到相应的命令上，按回车，emacs会显示那个命令的帮助。 

想知道一个按键操作是干什么的，使用M-x describe-key，然后按入你感兴趣的按键序列。如果你输的序列是有绑定的，emacs会直接转到那个按键的帮助信息中。 

如果你对某个功能感兴趣，想找出相应的命令，并且你已经心里有个大约的命令名，那么你可以用M-x apropos，然后再输入一个正则表达式（参见条款9）来搜索命令名。所以的emacs命令（也包括函数和属性表）都存在一个全局表中，以备M-x apropos检索。 

比如：你想找一个功能，可以把一个buffer放到buffer列表的最末端，你就可以用M-x apropos-command，再输入“buffer”，就显示出所有200来个包含有buffer这词的命令。在这个列表里面靠前的有一个命令，bury-buffer，它的文档写道：   
bury-buffer         M-x bury-buffer RET Command: Put BUFFER at the end of the list of all buffers.（译注：帮助真的是英文，要养成看E文的习惯啊） 

瞧！这不就是你要找的吗？用好(regexp)正则表达式的话，你很容易就可以限定搜索显示的范围。 

要说最最重要的emacs帮助命令，当属M-x info，这命令会开启emacs内置的交互式，菜单驱动的Info引擎。你应该学学怎么用Info。它包含数千页的文档，而且是超文本链接的（很不巧，是web出现之前的emacs自有链接风格），所以比man页要易读得多。一旦你掌握了Info系统的导航键，用起来铁定比用浏览器看HTML帮助要快，即便是看本地文件也是如此。一方面，是因为emacs info有跨info文件搜索的功能，另一方面，就只归功于emacs有相比于浏览器更好的文本导航能力。 

条款9：掌握Emacs的正则表达式 

最好的办法，就是买本Friedl的书《Mastering Regular Expressions》。绝对值！任何一位程序员都该有一本，管你用什么语言什么编辑器。 

emacs的正则表达式有些大伙儿都不太喜欢的特质，但这并不是不可克服的，一旦你学到手，你的编辑功力会精进的喔~ 

与正则表达式相关的命令中，最重要的是 isearch-forward-regexp和 isearch-backward-regexp。默认设定下，分别绑定于 ESC C-s和 ESC C-r，但这么按有点儿僵。任何要用到Escape键的操作都很僵，而且如果是在我的Compaq电脑上，Alt-Ctrl-s这个按法emacs无法截获，因为它是弹出系统诊断对话框的热键。 

由于使用频繁，我把自己的isearch-*-regexp命令绑定到 Alt-r 和 Alt-s上了。alt-s一般没有默认绑定，alt-r默认为我不怎么使用的move-to-window-line，因为我用条款4的方法在编辑窗口移动。 

有些mode坚决要重绑定alt-r和alt0s，这很烦人――害我要使用per-mode的招数来重绑定。但我没办法把所以的mode都招呼到。如果有哪个哥们儿知道怎么防止这两个键被任何mode重绑定，麻烦你教我一下，我会非常感激的。 

另外两个也很重要的正则表达式命令是 replace-regexp 和 query-replace-regexp。它俩功能差不多，提示你输入一个正则表达式和替换字符串，只是 query-replace-regexp 要求你在每一个可能的替换发生时输入y或者n。   
我跟 query-replace-regexp 关系很铁，以至于还得给它起个外号（别名~）：   
(defalias 'qrr 'query-replace-regexp)   
这样一来，我就用 M-x qrr 就可以使用这个功能了。 

其它有用的命令还有 M-x list-matching-lines -- 可以把buffer中匹配某一regexp的行全列出来； M-x apropos -- 就是那个把所以匹配的命令都列出来的帮助命令 

emacs正则表达式最常被问到的是：“怎么在正则表达式或者替换字符串读取时输入回车呢？” 如果仅仅简单地直接打回车，那emacs会认为你把regexp输完了。（这也是推荐qrr而不是 replace-regexp的原因啊――――在你非常有信心一次试写就可以把正则表达式写对之前，至少，我还没到那个境界）。   
回答是：要输入一个 ^j (译注：也就是Ctrl-j) 字符。在你要输入表达式或者替换串的时候，如果你要输回车符，选按Ctrl-q然后再按Ctrl-j。Ctrl-q是emacs的"quote"命令，它不执行下一个按键，而是把它插入到当前buffer或者minibuffer当中。 

还有一些其它与regexp相关的知识：   
  * 在elisp代码中，你写两次转义（"//"），而在minibuffer输入时，你只写一次转义就OK了。   
  * 由于emacs代码有很多要匹配括号，所以emacs反转了括号的语义，在emacs的regexp中，"(",")"匹配实际的括号,而"/)","/("则用以建立匹配组（字串）。   
  * 在替换串中，使用/1 /2 ...来插入匹配组中的字符串   
  * 如果你输入的regexp没有正确工作，把结果undo掉，重新输一次命令，当提示输入表达式时，使用上下箭头按键可以找出你之前输入过的记录。这样可以习省时间开销和防止混乱。 

条款10：掌握一套细致的文本处理命令 

emacs提供很多小巧实用的命令来对文本进行外科手术作业，极大地提升了编辑效率。 

如果是初学者，不要经不住诱惑把ctrl-k重绑定到一个删除整行的命令上。我知道，这是很多其它编辑器的"删行"命令。但相比于kill-line的默认行为，这显行很粗造。默认行为，删除到行末而不把行末换行符删除，会让你有更细致的操控，当你在对全盘文本进行外科手术作业时这会提高效率的。相信我：所有的emacs用户都用过那些只支持鲁莽"kill-whole-line"的编辑器，他们早就用过了，但还把kill-line的默认行为设成现今这个样子，不是没有原因的。 

键盘宏记录 

我可以毫不夸张地说，emacs的宏是全宇宙最酷的东东了。从感觉上讲，它们是一种特定用途的细致操作，因为你当即把它们做出来，然后就当即用来解决手头特定的问题。只要你觉得自己要进行一组特定的，有迹可寻的操作，而且不止一次（比如10次，15次）时，写一个键盘宏，这真的非常简单高效。 

先试运行一下宏是有益的。首先把光标移到你第一个要改动的地方，按下Ctrl-x ( 启动宏记录。继续你的编辑操作，确保你的光标刚好在下一行（或者说下几行，视情况而定），这样就可以按模式运行了。用Ctrl-x )来结束宏录制。再来就是用Ctrl-x e(call-last-kbd-macro)来调用宏了。。 

有时，定义一个可靠的宏算得上是一种技艺――你得学会在添加操作之前，使用 beginning-of-line和 end-of-line 这样的锚点来保证宏操作在一个可确定的位置上。   
递增搜索可以很方便地跳过下一个位置。如果你在记录宏时使用了isearch，那么宏调用时，isearch也会被执行，非常方便。   
在记录宏时有时会有些小的失误，这不要紧，直接改正这个失误，继续录宏。在宏调用时，这个失误会反复出现，然后反复被改正，而且很快，你几首注意不到。 

用宏的技巧是很死的:确保你的宏完成它的任务，并且不要放弃，哪怕有时录一个正确的宏比你手工编辑还慢。因为下一次你就会快很多，久而久之，会成为你的本能反应。键盘宏是emacs最强大的功能之一，它让你的生活更美好~~~   
最捂一个有关宏的招数：有时候你得调用它们几百次，而且不止在一个文件中，可能在多个文件中。这时你应该把 call-last-kbd-macro 绑定到一个单次按键中，比如f5啦。这时你可以翘起二郎腿，反复地按那个键，再看看编辑器上文本的变化有没什么意外即可。所以把综绑定到一个很远的按键也是可行的: 

(global-set-key [f5] 'call-last-kbd-macro) 

调换XXX的功能   
虽然看起来很古怪，但一旦你习惯了它们，你就会发现调换功能出奇地有用。可能最突出要是默认绑定到alt-t的transpose-words了:它的作用有两个，一个是调换连续的两个词，一个是把单词在句子中拖来拖去。   
transpose-words对mdoe特定的语法和词法边界是有感知的，比如。把光标放到下面两个词的中间：   
([this])-is   
然后按alt-t，结果变为：   
([is])-this 

你可以在连字符，html标签，和其它标点符号之间调换单词。这是一个急你所需的灵活功能。 

当你调换两个词时，比如"dog food"，左过的词与右边的词互换了（这里假定你把光标放到两个词中间），变成"food dog"。但是这时的光标是还是在被移到右边来的这个词(food)的右边。所以如查你不停地按调换键，那个词就不断地在句子中向右边爬行驶。我不知道有什么内置的方法可以让一个词往左边爬的，但是如果要写一个的话，也一点也不难。。相应的eclipse插件，可能就得要5000行代码，分布在60个文件中，得花个9天时间来编写和调试了。。。 

你还可以调换字符，行，句子，段落。无论你在编写纯文本还是程序时，这些都是很有用的，试验并试着记住它们，目标是形成本能反应~ 

下次要写的东东… 

一开始我有点想写50个条款的，就像Scott Meyers的力作《Effective C++》那样写50个条款。但最终我还是放弃了用一次休息时间就写出50个tips的相法，并把题目中的50改成了10。我至少花了两个小时坐下来写了这篇文章。要是一个eclipse用户的话，很可能会愿意花更多时间在文档中找寻可以帮助写blog的重构工具。 

下面列一下接下来想到的，有用的条款吧：   
   1。 fill-paragraph (alt-p) -- 智能地帮你把文本分行，这是必备良药啊，在注释里面都能用。   
   2。 gnuserv: 自动用emacs来开启特定文档（包括你浏览器的"view source"）。   
   3。 M-x dired: 一个很强的文件/目录管理工具，它提供了一些其它工具完全没有的强大功能（至少据我所知），比如用regexp把某个用户组的文件重命名。   
   4。 whitespace处理命令：C-x C-o（delete-blank-lines）, delete-trailing-whitespace, tabify 和 untabify 等等。。。。   
   5。 nxml-mode: 唯一让你在处理xml时编辑如飞的方法，作者是xml高手James Clark；完全把其它基于IDE的XML编辑器比下去了。。   
   6。 picture-mode: 搞ascii艺术时最好用的东东。   
   7。 minibuffer管理: 掌握递归编辑，在各种情况下怎样中断退出，命令补全及其它各种输入技巧。   
   8。 不费吹费之力的导航: 绑定一些各个方向移动光标的命令:以字符为单位，以词为单词的。使用alt加某个字符的快捷键组合。   
   9。 区域管理: 选一个不太难看的区域高亮颜色。   
   10。 矩形区域命令: 这是另一组很神奇的命令（译注：不过很多编辑器现在也都有这功能了）。   
   11。 emacs shell: 高效使用emacs shell的技巧。   
   12。 align-regexp: 我新收藏的命令，最近才学到的，几乎天天都用到。   
   13。 frame初始化: 如何在每次打开emacs时，自动根据显示器尺寸把emacs窗口设定好。   
   14。 使用goal column: 每个emacs强人都该知道的。   
   15。 设定fill column: 最大发挥 fill-paragraph 和 fill-region的功能。   
   16。 优化操作系统设定: 设定键盘重复率，设定好的emacs字体，等等。   
   17。 浏览编辑归档文件: tar,gzip,zip,jar等等。这没什么奇怪的。   
   18。 高级绑定: 学习绑定的语法，home/end等其它不常绑定的按键，学习如何特定于buffer来绑定按键。   
   19。 掌握 kill ring， 包括用 Derek upham的新mode来查看它的内容。   
   20。 掌握 Info: 定制你的Info目录，查找和添加新的Info文档，高级导航及书签功能。   
   21。 使用好 M-x customize: 学习它的运作，以及怎么避免使用它。   
   22。 工具程序: M-x calendar, M-x calc, 及其它。 

这个列表会一直增长下去……呵呵，在某天我会再把它们写出来吧。   
就这么多了，我得睡觉啦~~~。 

后面是对这个blog的回复，也有一些不错的建议喔~   
++ 

Comments ----------------------------------------------------------------------------------------------------- 

Some random comments: 

To yank at the i-search prompt, use M-y instead of C-y. The emacs info node on Incremental Search talks about the rebinding of C-y, C-w, etc at the i-search prompt. 

To repeat execution of the last kbd macro, after hitting C-xe to run it once, keep hitting just the 'e' key for repeated execution. 

Zap-to-char (M-z) is incredibly useful if you need to change myDatafileHandler to myStreamHandler and point is at D (the first char to change). Simple M-z e to zap the "Datafile" part and type in the replacement. This is not orthogonal to the backward-kill-word (bound to C-backspace for me since that works in windows browser windows as well as everything else) so there's a feel needed for which is optimal when, which for me mostly depends on where point is already. 

Posted by: Ami F. at January 23, 2005 07:12 PM 

"Swap Caps-Lock and Control": Or you could just get yourself a keyboard that's already swapped, or that lets you swap them in hardware. The Happy Hacking Keyboard is an example of the former. I like the Avant Stellar keyboard for the latter. 

"Binding Alt-r and Alt-s": Try setting up a minor mode with the definitions you want. Then stick that keymap on the *front* of MINOR-MODE-MAP-ALIST. 

Other tips: 

Use `iswitchb' mode. It's faster for switching between buffers, and it provides more feedback. 

Use P4 mode. But be sure to download a more recent version than what we have installed. 

Emacs' integration with X11 selections is written to work well with xterm's sucky default policies. That means it works badly with modern apps and badly over slow network connections (say, a VPN from home). I have written a new set of commands to make Emacs talk to the clipboard, and they make life much easier. 

Posted by: Derek U. at January 24, 2005 07:37 PM 

Doing the swapping of control/cap-lock key can be done in //HKEY_CURRENT_USER/Keyboard Layout instead of under //HKEY_LOCAL_MACHINE. 

Posted by: Chris W. at January 27, 2005 07:52 AM 

I disagree with your agressive rebinding of keys. I used to rebind almost all my emacs keys so they would be more familiar to a windows user (Ctrl+C does copy, Ctrl+V is paste, etc). However, I found myself at a loss when I tried using my neighbor's computer with the default emacs installed. 

Always learn default emacs keybindings first, then over-write them as you find appropriate. For example, I rebound Ctrl+J to be the goto-line macro. By default, Ctrl+J enters a newline. F7 is not bound to anything by default, so I made that bound to the compile macro (that keybinding actually comes from Visual Studio). That is about the extent of the keybindings I need/use. And, if I have to use a non-customized emacs, I can still get work done. 

Cheers,   
-Brian 

Posted by: Brian M. at January 27, 2005 10:29 PM 

To not pursue aggressive editor and keyboard customizations because other people stick to the standard is a bogus argument, in my opinion. Firstly, how often do you really use a terminal other than your own? And even then, how often do you write just scads of code there? When I do this, it's usually for just a couple of quick edits. So, why optimize for that 1% of time when you're not at your own setup? Secondly, if it does annoy me enough to care, I can always just load my rc file remotely. I use vim and have my .vimrc hardlinked into my /workplace directory so I can just say vim -u /net/ericw/workplace/.vimrc if I really need my magic. I'm certain the same can be done in emacs. 

Customization is one of the main selling points of powerful editors, and our wrists are two of our most valuable assets as developers, so I don't understand why people eschew customization just because they fear that small percentage of the time when they won't have it. 

Posted by: Eric W. at January 28, 2005 07:34 PM 

Brian, I'm afraid I'm with Eric on this one. 

I have friends who have nonstandard keyboards, in some cases to avoid repetitive-stress injury. I can't type at their workstations. I have this little secret, though, that works like a charm. I say: "uh, you type." 

OK, not much of a secret, but it's gotten me by. 

Everyone customizes their environment. Some SDEs use fonts so small I actually can't read them. Some use custom window managers with non-CUA hotkeys and behavior. People use Windows, Linux, MacOS. There are different Unix shells with different default keybindings and aliases. Should we tell everyone they have to use plain-vanilla Windows installations with no customizations? 

You're effectively arguing that we should all reduce ourselves to the least common denominator of productivity. This argument has been debunked in other domains (e.g. should we make people with good vision wear blur-inducing glasses, so nobody feels like they're at a natural disadvantage?), and it doesn't hold water in ours either. 

You're welcome to use the default bindings yourself, of course. But I wouldn't get on a bandwagon that tries to discourage people from getting better at their jobs. It's a slippery slope that I think you want to avoid. 

Anyway, we now issue laptops with wireless iVPNs, so you can even bring your environment with you. It's just not an issue anymore. 

Posted by: Steve Yegge at January 28, 2005 09:30 PM 

I just want to know the tips you allude to in number (8) of your "Tune in next time..." section. How do you do the up/down/left/right browsing? I've been trying to train myself to use C-n, C-p, C-f, C-b and friends, but its awkward, and it isn't getting easier. Also, can I plllleeeeasssseee see your .emacs file :) 

Posted by: Charles G. at February 18, 2005 01:47 AM 

On March 4 2006, Luke Gorrie wrote: 

Howdy, 

I know it's bad form to comment on a blog entry without having read it thoroughly but I will take a chance because your eternal salavation is at stake. 

I use C-h for backspace in Emacs and move `help-command' elsewhere: 

 (global-set-key "/C-h" 'backward-delete-char-untabify)   
 (define-key isearch-mode-map "/C-h" 'isearch-delete-char)   
 (global-set-key [(hyper h)] 'help-command) 

and this also works in the shell along with C-m, C-j, C-i, etc. 

Offered for your consideration. :-) 

On March 5 2006, Anupam Kapoor wrote: 

hi,   
regarding tip #7, imho, its better to just disable it via Xresources,   
rather than loading it all up and making it invisible (as you have   
shown) via: 

,----   
| ! better to turn this off here than in .emacs   
| ! where it has already been loaded.   
| emacs.menuBar: off   
| emacs.toolBar: off   
|   
| ! no scrollbars fur me   
| emacs.verticalScrollBars: off   
`---- 

kind regards   
anupam 

On March 9 2006, Scott Anderson wrote: 

Steve, 

Great article. 

Reading section 7, I became amused by the person who claimed that   
"countless studies" (or whatever) had proven that the mouse was   
faster. 

I'm guessing he never studied GOMS, which is a method of decomposing   
UIs into their basic operations and then performing objective   
complexity and time analysis. 

A quick typist can hit about 10 keys per second, or .1s per key. To   
use a mouse there are four movements involved: move from the keyboard   
to the mouse, move the cursor to a location, perform some operation at   
the location, then move the hand back to the keyboard. 

Moving the hand takes about .4s. Moving the mouse cursor on the screen   
takes .5s. So without even doing anything, you've used 1.3 seconds. A   
mouse click takes .1 seconds, and if you're dragging something, you   
measure the click down, the drag, and the release, adding up to   
another .7 seconds. 

So let's say I want to highlight a line for copy: 

mouse:   
.4 move to mouse   
.5 move cursor to first character   
.1 depress button   
.5 drag to highlight (and this is optimistic, depending on how good   
 you are with finicky targets like highlighting)   
.1 release button   
.4 move to keyboard   
.2 copy (alt-w, ctrl-c, whatever. count control keys as a separate keypress) 

2.2 seconds to perform. 

kb scenario 1: best case: already at beginning of line   
.2 mark (ctrl-space)   
.2 end-of-line (ctrl-e)   
.2 copy 

.6 seconds to perform, or nearly 4 times as fast. 

kb scenario 2: worst case: requires navigation: 30 lines down, line   
starts with "Reading"   
.9s move to start of line (ctrl-r readi ctrl-r)   
.2 mark (ctrl-space)   
.2 end-of-line (ctrl-e)   
.2 copy 

1.5s, still faster 

As it turns out, the only thing a mouse is really good for is   
something involving a gross motor movement, like moving a window or   
the like. Unless you're a crappy typist. 

Anyway, good article, and I'm looking forward to reading the rest of   
them. 

Regards,   
-scott 

Back to Stevey's Drunken Blog Rants     image of my email address, steve dot yegge at ye olde gmail
