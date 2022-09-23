---
title: "Kakoune 快捷键"
categories: 
date: 2022-10-31 17:32:03 +0800
tags: 
excerpt: 
---




Counts
Hooks
Marks
Jump List
Multi Selection

## Normal mode

## Insert mode

[[Escape 键]]：leave insert mode
[[Backspace]]：delete characters before cursors
[[Delete 键]]：delete characters under cursors
[[LeftArrow]]：
[[RightArrow]]：
[[UpArrow]]：
[[DownArrow]]：
[[Home键]]：
[[End键]]：
[[Ctrl+N]]：select next completion candidate
[[Ctrl+P]]：select previous completion candidate
[[Ctrl+X F]]：explicit insert mode file completion query
[[Ctrl+X W]]：explicit insert mode word completion query
[[Ctrl+X L]]：explicit insert mode line completion query
[[Ctrl+O]]：disable automatic completion for this insert session
[[Ctrl+R]]：insert contents of the register given by next key
[[Ctrl+V]]：insert next keystroke directly into the buffer, without interpreting it
[[Ctrl+U]]：commit changes up to now as a single undo group
[[Option+;]]：escape to normal mode for a single command



## Movement
[[H]]：
[[J]]：
[[K]]：
[[L]]：
[[W]]：
[[B]]：
[[E]]：
[[Option+W]]：
[[Option+B]]：
[[Option+E]]：
[[F]]：
[[T]]：
[[Option+F]]：
[[Option+T]]：
[[M]]：
[[Shift+M]]：
[[X]]：
[[Shift+X]]：
[[Option+X]]：
[[Option+Shift+X]]：
[[%]]：
[[Option+H]]：
[[Option+L]]：
`/`：search（select next match）
Option+`/`：
`?`：
Option+`?`：
[[N]]：
[[Shift+N]]：
[[Option+N]]：
[[Ctrl+B]]：[[PageUp]]
[[Ctrl+F]]：[[PageDown]]
[[Ctrl+U]]：
[[Ctrl+D]]：
`)`：
`(`：
[[;]]
[[Option+;]]
Option+`:`：[[Option+Shift+;]]
[[Option+.]]：
[[_]]：


## Appending

For most Movement commands, using [[Shift 键]] extends the current selection instead of replacing it

`wWW`：select 3 consecutive words
`f/F/`：selects up to and including the second `/` character forward

## Counts

`3w`：select the third word on the right of selection end
`3W`：selects 3 consecutive words

## Disabling Hooks

`\i`：disable hooks for the whole insert session

## Changes

[[I]]：
[[A]]：
[[D]]：
[[C]]：
`.`：
[[Option+D]]：
[[Option+C]]：
[[Shift+I]]：
[[Shift+A]]：
[[O]]：
[[Shift+O]]：
[[Option+O]]：
[[Shift+O]]：
[[Y]]：
[[P]]：
[[Shift+P]]：
[[Option+P]]：
[[Option+Shift+P]]：
[[R]]：
[[Shift+R]]：
[[Option+Shift+R]]：
[[Option+J]]：
[[Option+Shift+J]]：
[[Option+_]]：

……


## Goto Commands

## View Commands


## Marks


## Jump list

## Multi Selection

## Object Selection

## Prompt Commands


## Misc

[[helix-editor]]


