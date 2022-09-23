---
title: "Magit"
categories: 
date: 2022-09-25 06:34:15 +0800
tags: Emacs Git
excerpt: 
---

[magit/magit](https://github.com/magit/magit): It's Magit! A [[Git]] porcelain inside Emacs.


## 依赖

[[compat.el]]
[[dash.el]]
[[magit-section]]
[[git-commit.el]]
[[transient]]
[[with-editor]]


## 生态

[[forge]]

[[magit-section]]

[alphapapa/magit-todos](https://github.com/alphapapa/magit-todos): Show source files' TODOs (and FIXMEs, etc) in Magit status buffer



## 快捷键

### Section Movement

[[P]]：previous section
[[N]]：next section
[[Shift+P]]：previous sibling section
[[Shift+N]]：next sibling section
`^`：parent section

### Section Visibility

[[Tab 键]]：toggle visibility of current section
[[Ctrl+Tab]]：cycle visibility of section and children
[[Option+Tab]]：cycle visibility of diff-related sections
[[Shift+Tab]]：cycle visibility of all sections in buffer

### Staging

[[S]]：stage change at point
[[U]]：unstage change at point
[[Shift+S]]：stage all changes in worktree
[[Shift+U]]：reset index to some commit
Option+X magit-unstage-all：remove all changes
Option+X magit-stage-file：stage current file
Option+X magit-unstage-file：unstage current file

### Status/Diff/Log Buffer

[[Space 键]]：update commit/diff buffer or scroll up
[[Delete 键]]：update commit/diff buffer or scroll down
[[H]]：show dispatch popup
[[G]]：refresh
[[Shift+G]]：refresh all
[[Q]]：bury current buffer
[[Shift+L]]：toggle margin
[[X]]：soft reset（hard when argument is given）
[[Y]]：show references（tags and branches）
[[Shift+Y]]：cherry
[[Ctrl+C Ctrl+B]]：move backward in buffers history
[[Ctrl+C Ctrl+F]]：move forward in buffers history
[[E]]：ediff DWIM
[[I]]：gitignore
[[Shift+I]]：gitignore locally

### Diff Buffer

[[Return 键]]：visit file（or blob）at appropriate position
[[Ctrl+Return]]：visit file at appropriate position
[[-]]：decrease context of diff hunks
[[+]]：increase context of diff hunks
[[0]]：reset context of diff hunks to default height
[[J]]：jump to diff stat ⬅️➡️ diff section

### References Buffer

[[Y]]：compare references with HEAD
[[C]]：compare references with current branch
[[O]]：compare references with other branch

### View Git Output

[[$]]：display process buffer for current repository
[[K]]：kill process represented by section at point

## Popup

[[!]]：running git
[[B]]：branching
[[Shift+B]]：bisecting
[[C]]：committing
[[D]]：diffing
[[Shift+E]]：ediff
[[F]]：fetching
[[Shift+F]]：pulling
[[L]]：logging
[[M]]：merging
[[Shift+M]]：remoting
[[Shift+P]]：pushing
[[O]]：submoduling
[[R]]：rebasing
[[W]]：apply patches
[[Shift+W]]：format patches
[[T]]：tagging
[[Z]]：stashing

### Blame

Option+X magit-blame
[[Return 键]]：
[[Space 键]]
[[Delete 键]]
[[N]]
[[Shift+N]]
[[P]]
[[Shift+P]]
[[Q]]
[[T]]

### Log Buffer

[[+]]：show more history
[[Ctrl+C Ctrl+C]]：select commit at point and act on it
[[Ctrl+C Ctrl+K]]：abort selecting commit

### Repository Setup

Option+X magit-init：initialize a Git repository
Option+X magit-clone：clone a Git repository

## 竞品

[[eaf-git]]

[ginqi7/git-emacs](https://github.com/ginqi7/git-emacs): A Emacs plugin for Git

## 兄弟产品

[[EmacSQL]]

[[emacsql-sqlite]]

[[transient]]

[magit/git-modes](https://github.com/magit/git-modes): Emacs major modes for Git configuration files


## Misc

[It’s Magit! And you’re the magician! · Endless Parentheses](https://endlessparentheses.com/it-s-magit-and-you-re-the-magician.html)

[emacsmirror/git-timemachine](https://github.com/emacsmirror/git-timemachine): Walk through git revisions of a file

[akib/emacs-why-this - Codeberg.org](https://codeberg.org/akib/emacs-why-this): Why the current line contains this?

[[neogit]]

[[vim-fugitive]]




