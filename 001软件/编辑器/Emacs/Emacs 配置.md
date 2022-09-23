---
title: "Emacs 配置"
categories:
date: 2022-09-25 18:08:04 +0800
tags: Emacs 配置
excerpt:
---


[[Emacs]] 配置

[[Emacs Configuration Generator]]

[hick/emacs-chinese](https://github.com/hick/emacs-chinese): Emacs相关中文问题以及解决方案

[caisah/emacs.dz](https://github.com/caisah/emacs.dz): Awesome emacs config files

[Ergus/mini_dotemacs](https://github.com/Ergus/mini_dotemacs): Simple emacs 27 config without any external dependency

[bbatsov/crux](https://github.com/bbatsov/crux): A Collection of Ridiculously Useful eXtensions for Emacs

## 配置

[[EditorConfig]]

[Directory Variables (GNU Emacs Manual)](https://www.gnu.org/software/emacs/manual/html_node/emacs/Directory-Variables.html)

[Emacs有哪些核弹级的功能与应用可以当作我们布道的弹药库？ - Emacs China](https://emacs-china.org/t/emacs/16537)

[同一个按键如何根据不同的 major-mode 调用对应的实现函数 - Emacs China](https://emacs-china.org/t/major-mode/19704)

[有没有办法在 emacs 实现 vscode 那样的 tab 分组方式？ - Emacs China](https://emacs-china.org/t/emacs-vscode-tab/18011/16)

[Jump Between Buffers in a Slick Way - Kinono's blog](https://amaikinono.github.io/introduce-awesome-tab.html)

[往左快速删除操作 - Emacs China](https://emacs-china.org/t/topic/21598)

```emacs-lisp
(global-set-key (kbd "C-<backspace>") (lambda ()
                                        (interactive)
                                        (kill-line 0)
                                        (indent-according-to-mode)))
```


安装软件包（如果尚未安装）
修改`my-packages`变量并添加/删除要安装的软件包。`M-x describe-variable package-activated-list`将为您提供当前已安装软件包的列表。
之后，唯一要共享的是您的init文件。

```emacs-lisp
(defvar my-packages
  '(color-theme db-pg db kv magit-push-remote magit-tramp
                magit git-rebase-mode git-commit-mode pg
                pretty-lambdada projectile pkg-info epl dash
                python-mode rich-minority s yasnippet yasnippet-bundle
                use-package key-chord undo-tree guide-key move-text
                openwith ack ag aggressive-indent nginx-mode multiple-cursors
                smartparens with-editor haskell-mode)
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (package-refresh-contents)
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))
```

[根据evil和内置输入法的状态调整modeline的背景色 - Emacs China](https://emacs-china.org/t/evil-modeline/21879)

mode-line 变宽字体设置
https://emacs-china.org/t/topic/21079/60?u=suliveevil

[cstby/fixed-pitch-mode](https://github.com/cstby/fixed-pitch-mode): Use a proportional typeface globally while keeping a monospaced typeface for code in Emacs

```emacs-lisp
(custom-theme-set-faces
 'user
 '(fixed-pitch ((t (:family "SF Mono" :height 1.0))))
 '(variable-pitch ((t (:family "Bookerly" :height 1.0))))
 '(mode-line ((t (:inherit variable-pitch :height 1.0))))
 '(mode-line-inactive ((t (:inherit variable-pitch :height 1.0))))
 ;; 下面是可选的，如果需要在 org-mode启用
 ;; '(Info-quoted ((t (:inherit fixed-pitch))))
 ;; '(org-block ((t (:inherit fixed-pitch))))
 ;; '(org-code ((t (:inherit (shadow fixed-pitch)))))
 ;; '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 ;; '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 ;; '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 ;; '(org-property-value ((t (:inherit fixed-pitch))) t)
 ;; '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 ;; '(org-table ((t (:inherit fixed-pitch))))
 ;; '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 1.0))))
 ;; '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 )
;; 在需要开启变宽字体的 mode 加 hook
;; (add-hook 'org-mode-hook #'variable-pitch-mode)
```

跳转到下一处空格的位置，如果是连续的多个空格，则跳转到所有空
格的开头及结尾。

```emacs-lisp
;;;###autoload
(defun joseph-jump-to-space-forward()
  (interactive)
  (let ((old-pos (point))
        m-end m-begin
        )
    (when (re-search-forward "[ \t]+"  nil t)
      (setq m-begin (match-beginning 0))
      (setq m-end (match-end 0))
      (goto-char m-begin)
      (if (equal old-pos m-end)
          (progn
            (re-search-forward "[ \t]+"  nil t)
            (goto-char (match-beginning 0)))
        (if (equal m-begin old-pos)
            (goto-char m-end)
            )))))
```

```emacs-lisp
;;代码注释工作，如果有选中区域，则注释或者反注释这个区域
;;如果，没选中区域，则注释或者注释当前行，如果光标在行末，则在行末添加或删除注释
;;;###autoload
(defun joseph-comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
If no region is selected and current line is not blank and we are not at the end of the line,
then comment current line.
Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
```


```emacs-lisp
;;;###autoload
(defun joseph-append-semicolon-at-eol(&optional arg)
  "在当前行任何位置输入分号都在行尾添加分号，除非本行有for 这个关键字，
如果行尾已经有分号则删除行尾的分号，将其插入到当前位置,就是说输入两次分号则不在行尾插入而是像正常情况一样."
  (interactive "*p")
  (let* ( ( init_position (point))
          (b (line-beginning-position))
          (e (line-end-position))
          (line_str (buffer-substring b e))
          (semicolon_end_of_line (string-match ";[ \t]*$" line_str ))
          )
    (if semicolon_end_of_line ;;;;如果行尾已经有分号，则删除行尾的分号，并在当前位置输入分号;;;;;;
        (progn
          (save-excursion
            (goto-char (+ semicolon_end_of_line b))
            (delete-char 1) )
          (insert ";") )
      ;;在整行内容中搜索有没有关键字for的存在,或者当前位置已经是行尾,直接插入分号
      (if   (or (string-match "^[ \t]*$" (buffer-substring init_position e))
                (string-match "\\bfor\\b" line_str))
          (insert ";")
        (save-excursion ;;如果搜索不到 for 则在行尾插入分号;
          (end-of-line)
          (delete-trailing-whitespace)
          (insert ";")
          )))))
```


当光标在行首时，调用此函数，在上一行添加空行。当光标在行尾时，调用此命令则
在下一行添加空行。所以可以节省下一个快捷键.

```emacs-lisp
;;;###autoload
(defun open-line-or-new-line-dep-pos()
  "if point is in head of line then open-line
if point is at end of line , new-line-and-indent"
  (interactive)
  (if (and (= (point) (point-at-bol))
           (not (looking-at "^[ \t]*$")))
      (progn
        (open-line 1)
        (indent-for-tab-command))
    (newline-and-indent)))
```

[对光标离开当前 buffer 的操作有没有 hook？ - Emacs China](https://emacs-china.org/t/buffer-hook/22091)

[最简输入法自动中英文切换配置 - Emacs China](https://emacs-china.org/t/topic/19048/1)

[GPG in Emacs – EmacsTalk](https://emacstalk.github.io/post/011/)

## Evil
```emacs-lisp
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))
```

## 中文用户

[[manateelazycat]]
[[Centaur Emacs]]
[[condy0919]]
[[Eason0210]]
[[Emacs-helper]]
[[redguardtoo]]
[包昊军](http://baohaojun.github.io/): 公众号 Programate
[dogEmacs](https://github.com/DogLooksGood/dogEmacs)
[yqrashawn/yqdotfiles](https://github.com/yqrashawn/yqdotfiles)
[gujiaxi/.emacs.d](https://github.com/gujiaxi/.emacs.d): 极简配置
[coldnight/dump-brain-with-emacs](https://github.com/coldnight/dump-brain-with-emacs): 从零开始用 Emacs 管理笔记！
[[InfernoEmacs]]
[casouri/lunarymacs](https://github.com/casouri/lunarymacs): Moon-based Emacs configuration.
[nowislewis/nowisemacs](https://github.com/nowislewis/nowisemacs): A full-blown emacs configuration framework with an easy abstraction level.
[ilyaw39/.emacs.d](https://github.com/ilyaw39/.emacs.d): A simple setup for emacs-mac focusing on scientific writing in [[Org-mode]].
[Jousimies/.emacs.d](https://github.com/Jousimies/.emacs.d)：非程序员的 Emacs 配置（org-roam）
[guanyilun/.emacs.d](https://github.com/guanyilun/.emacs.d/): 宇宙学博士的Emacs，Org-roam 等
[willbchang/ward-emacs](https://github.com/willbchang/ward-emacs): Make Emacs an easy to use Text Editor for English and Chinese on macOS.
[zilongshanren/emacs.d](https://github.com/zilongshanren/emacs.d)
[napfy/cumacs](https://github.com/napfy/cumacs): A out of box emacs config for Chinese developer. 一个开箱即用的Emacs配置
[tshu-w/.emacs.d](https://github.com/tshu-w/.emacs.d): personal Emacs config, originally from Spacemacs
[theFool32/.emacs.d](https://github.com/theFool32/.emacs.d)
[fwar34/emacs.d](https://github.com/fwar34/emacs.d)：Emacs、Vim、Neovim 三栖用户
[EvanMeek/.emacs.d](https://github.com/evanmeek/.emacs.d/)：快速、简单、多功能的 Emacs 配置。[美味的樱桃菌 - 哔哩哔哩_bilibili](https://space.bilibili.com/27137545)
[chanshunli/emacs_spark_nlp](https://github.com/chanshunli/emacs_spark_nlp): 基于流处理和NLP的Emacs编辑器: EmacsSparkNLP, 只要编辑代码的数据源头,其他的自动编辑都是它变化的映射编辑 & 学习历史搜索,排序和输入信息等进行NLP向量化, 实现智能搜索和推荐列表等
[Imymirror/imy-emacs.d](https://github.com/Imymirror/imy-emacs.d)：从 Doom Emacs 到 vanilla Emacs
[jixiuf/vmacs](https://github.com/jixiuf/vmacs)：Vim Emacs 双修
[emacs配置 - 果丁 - 博客园](https://www.cnblogs.com/wuyuans/p/4214088.html)
[王垠（Yin Wang）](https://docs.huihoo.com/homepage/shredderyin/index.html)
[ksqsf/emacs-config](https://github.com/ksqsf/emacs-config): Back-up of my finely tweaked Emacs configuration
[qdzhang/vanilla-emacs](https://github.com/qdzhang/vanilla-emacs): Vanilla emacs config
[junjiemars/.emacs.d](https://github.com/junjiemars/.emacs.d): Nore Emacs on MacOS, Windows and Linux

## 国际用户

[technomancy/better-defaults - sourcehut git](https://git.sr.ht/~technomancy/better-defaults)
[sachac/.emacs.d](https://github.com/sachac/.emacs.d): [Sacha Chua's Emacs configuration](https://sachachua.com/dotemacs/index.html)
[[Doom Emacs]]
[[Spacemacs]]
[[purcell]]
[[ward-emacs]]
[freetonik/castlemacs](https://github.com/freetonik/castlemacs): Modern, minimalist Emacs for macOS ⌘
[alhassy/emacs.d: My Emacs configuration, literately](https://github.com/alhassy/emacs.d)
[Imymirror/imy-emacs.d](https://github.com/Imymirror/imy-emacs.d)
[RenWenshan/wenshan-emacs](https://github.com/RenWenshan/wenshan-emacs): Wenshan's emacs configuration
[SystemCrafters/crafted-emacs](https://github.com/SystemCrafters/crafted-emacs): A sensible base Emacs configuration.
[daviwil/emacs-from-scratch](https://github.com/daviwil/emacs-from-scratch): An example of a fully custom Emacs configuration developed live on YouTube!
[protesilaos/dotfiles](https://github.com/protesilaos/dotfiles): [Mirror] Configuration files for Emacs and some other programs. Running on Arch Linux. Managed with GNU Stow.
[madgrid/demonacs](https://github.com/madgrid/demonacs): Emacs Configuration for the masochist. (Default Keybindings, Projectile, Vertico & Consult, TS & Node,...) <3 Rian
[cybniv/emacs.d](https://github.com/cybniv/emacs.d)
[Lambda-Emacs/lambda-emacs](https://github.com/Lambda-Emacs/lambda-emacs): Emacs distribution with sane defaults, pre-configured packages, and useful functions.
[NateEag/.emacs.d](https://github.com/NateEag/.emacs.d): Nate Eagleson's Emacs config.
[turbana/emacs-config](https://github.com/turbana/emacs-config)
[mbezjak/dotfiles/emacs.d](https://github.com/mbezjak/dotfiles/tree/main/emacs.d)
[pjheslin/easymacs](https://github.com/pjheslin/easymacs): An easy to use configuration of Emacs for students
[Negdayen/.emacs.d](https://github.com/Negdayen/.emacs.d)
[juanjux/emacs-dotfiles](https://github.com/juanjux/emacs-dotfiles): Vim user's Emacs dotfiles
[overtone/emacs-live](https://github.com/overtone/emacs-live): M-x start-hacking
[mbezjak/dotfiles](https://github.com/mbezjak/dotfiles): $HOME/.{file|directory}
[winfred-lu/emacs.d](https://github.com/winfred-lu/emacs.d)
[mpereira/.emacs.d](https://github.com/mpereira/.emacs.d#a-fast-non-projectile-based-project-file-finder): Vanilla, Evil, literate Emacs configuration
[Ethanlinyf/General-Pure-Emacs](https://github.com/Ethanlinyf/General-Pure-Emacs): Something Good as Indicated for Puremacs
[daviderestivo/galactic-emacs](https://github.com/daviderestivo/galactic-emacs): An Emacs distribution coming from the space ...
[mmagnus/emacs-env](https://github.com/mmagnus/emacs-env): I've been using Emacs for over 15 (since 2007) years now. This's my config file :-) it might be useful for someone.
[pierre-rouleau/pel](https://github.com/pierre-rouleau/pel): Pragmatic Emacs Library
[Xaldew/dotfiles](https://github.com/Xaldew/dotfiles)
[incandescentman/Emacs-Settings](https://github.com/incandescentman/Emacs-Settings): Emacs for Writers





## Misc

[[Emacs 插件]]

[[Emacs 快捷键]]


[配置全新的 Macbook Pro M1 下 Emacs 开发环境 - 子龙山人](https://zilongshanren.com/post/setup-macbook-pro-m1/)

[我想分享一下我的emacs配置和学习思路，并向大家介绍一些我觉得有用的package - Emacs China](https://emacs-china.org/t/emacs-package/19922)


[攒了自己一点配置，发现必须要有一个包管理机制，有什么好的建议，能避免一些坑 - Emacs-general - Emacs China](https://emacs-china.org/t/topic/21087/13)



