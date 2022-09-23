---
title: "helix-editor"
author: 
categories: 
date: 2022-10-10 17:48:02 +0800
tags: 
excerpt: 
---

[helix-editor/helix](https://github.com/helix-editor/helix): A post-modern modal text editor.


基于 [[Kakoune]] 理念

```shell
brew install helix
hx /path/to/file.txt
```

## 功能

编程语言支持




## 快捷键

[Keymap - Helix Editor Documentation](https://docs.helix-editor.com/master/keymap.html)

### Normal Mode - Movement
[[H]]：Move Left（[[LeftArrow]]）
[[J]]：Move Down（[[DownArrow]]）
[[K]]：Move Up（[[UpArrow]]）
[[L]]：Move Right（[[RightArrow]]）
[[W]]：Move Next Word Start
[[Shift+W]]：Move next WORD start
[[B]]：Move Previous Word Start
[[Shift+B]]：Move previous WORD start
[[E]]：Move Next Word End
[[Shift+E]]：Move next WORD End
[[T]]：find Till next char
[[Shift+T]]：find Till previous char
[[F]]：Find next char
[[Shift+F]]：find previous char
[[Shift+G]]：go to line number
[[Option+.]]：Repeat Last Motion（f、t、m）
[[Home键]]：Move to the start of the line
[[End键]]：Move to the end of the line
[[Ctrl+B]]：Move Page Up（[[PageUp]]）
[[Ctrl+F]]：Move Page Down（[[PageDown]]）
[[Ctrl+U]]：Move half page Up
[[Ctrl+D]]：Move half page Down
[[Ctrl+I]]：jump forward on the jumplist
[[Ctrl+O]]：jump backward on the jumplist
[[Ctrl+S]]：Save the current selection to the jumplist

### Normal Mode - Changes

[[R]]：Replace with a character
[[Shift+R]]：Replace with yanked text
`~`：Switch Case if the Selected Text
`` ` ``：Set the Selected Text to Lower Case
Option+`` ` ``：Set the Selected Text to Upper Case
[[I]]：Insert before selection
[[A]]：Insert after selection（Append）
[[O]]：Open new line below selection
[[Shift+O]]：Open new line above selection
`.` ：Repeat last insert
[[U]]：Undo change
[[Shift+U]]：Redo change
[[Option+U]]：move backward in history
[[Option+Shift+U]]：move forward in history
[[Y]]：Yank selection
[[P]]：Paste after selection
[[Shift+P]]：Paste before selection
[["]]：Select a register to yank to or paste from
[[<]]：UnIndent selection
[[>]]：Indent selection
[[=]]：
[[D]]：Delete Selection
[[Option+D]]：Delete selection without yanking
[[C]]：Change selection（delete and enter insert mode）
[[Option+C]]：Change selection（delete and enter insert mode without yanking）
[[Ctrl+A]]：Increment object（number） under cursor
[[Ctrl+X]]：Decrement object（number） under cursor
[[Q]]：Play back a record macro from the selected register
[[Shift+Q]]：Start/Stop macro recording to the selected register

### Normal Mode - Shell

`|`：Pipe each selection through shell command, replacing with output
Option+`|`：Pipe each selection into shell command, ignoring output
`!`：Run shell command, inserting output before each selection
Option+`!`：Run shell command, appending output after each selection
`$`：Pipe each selection into shell command, keep selections where command returned 0

### Normal Mode - Selection manipulation

[[S]]：Select all regex matches inside selections
[[Shift+S]]：Split selection into sub-selections on regex matches
[[Option+S]]：Split selection on newlines
[[&]]：Align selection in columns
[[_]]：Trim whitespace from the selection
[[;]]：Collapse selection onto a single cursor
[[Option+;]]：Flip selection cursor and anchor
Option+`:`：Ensures the selection is in forward direction
[[,]]：Keep only the primary-selection
[[Option+,]]：Remove the primary-selection
[[Shift+C]]：Copy selection onto the next line (Add cursor below)
[[Option+Shift+C]]：Copy selection onto the previous line (Add cursor above)
[[(]]：Rotate main selection backward
[[)]]：Rotate main selection forward
[[Option+(]]：Rotate selection contents backward
[[Option+)]]：Rotate selection contents forward
[[%]]：Select entire file
[[X]]：Select current line, if already selected, extend to next line
[[Shift+X]]：Extend selection to line bounds (line-wise selection)
[[Option+X]]：Shrink selection to line bounds (line-wise selection)
[[Shift+J]]：Join lines inside selection
[[Shift+K]]：Keep selections matching the regex
[[Option+Shift+K]]：Remove selections matching the regex
[[Ctrl+C]]：Comment/uncomment the selections
[[Option+O]]：（[[Option+UpArrow]]）Expand selection to parent syntax node (**TS**)
[[Option+I]]：（[[Option+DownArrow]]）Shrink syntax tree object selection (**TS**)
[[Option+P]]：（[[Option+LeftArrow]]）Select previous sibling node in syntax tree (**TS**)
[[Option+N]]：（[[Option+RightArrow]]）Select next sibling node in syntax tree (**TS**)


### Normal Mode - Search

`/`：Search for regex pattern
[[?]]：Search for previous pattern
[[N]]：Select next search match
[[Shift+N]]：Select previous search match
`*`：Use current selection as the search pattern

### Minor modes

[[V]]：Enter select (extend) mode
[[G]]：Enter goto mode
[[M]]：Enter match mode
`:`：Enter command mode
[[Z]]：Enter view mode
[[Shift+Z]]：Enter sticky view mode
[[Ctrl+W]]：Enter window mode
[[Space 键]]：Enter space mode

### View mode

[[Z]]：（[[C]]）Vertically center the line
[[T]]：Align the line to the top of the screen
[[B]]：Align the line to the bottom of the screen
[[M]]：Align the line to the middle of the screen (horizontally)
[[J]]：（[[DownArrow]]）Scroll the view downwards
[[K]]：（[[UpArrow]]）Scroll the view upwards
[[Ctrl+F]]：（[[PageDown]]）Move page down
[[Ctrl+B]]：（[[PageUp]]）Move page up
[[Ctrl+D]]：Move half page down
[[Ctrl+U]]：Move half page up


### Goto mode

[[G]]：Go to line number `<n>` else start of file
[[E]]：Go to the end of the file
[[F]]：Go to files in the selection
[[H]]：Go to the start of the line
[[L]]：Go to the end of the line
[[S]]：Go to first non-whitespace character of the line
[[T]]：Go to the top of the screen
[[C]]：Go to the middle of the screen
[[B]]：Go to the bottom of the screen
[[D]]：Go to definition (**LSP**)
[[Y]]：Go to type definition (**LSP**)
[[R]]：Go to references (**LSP**)
[[I]]：Go to implementation (**LSP**)
[[A]]：Go to the last accessed/alternate file
[[M]]：Go to the last modified/alternate file
[[N]]：Go to next buffer
[[P]]：Go to previous buffer
`.`：Go to last modification in current file


### Match mode

[[M]]：Goto matching bracket (**TS**)
[[S]] `<char>`：Surround current selection with `<char>`
[[R]] `<from>` `<to>`：Replace surround character `<from>` with `<to>`
[[D]] `<char>`：Delete surround character `<char>`
[[A]] `<object>`：Select around textobject
[[I]] `<object>`：Select inside textobject


### Window mode

[[W]]：（[[Ctrl+W]]）Switch to next window
[[V]]：（[[Ctrl+V]]）Vertical right split
[[S]]：（[[Ctrl+S]]）Horizontal bottom split
[[F]]：Go to files in the selection in horizontal splits
[[Shift+F]]：Go to files in the selection in vertical splits
[[H]]：（[[Ctrl+H]]、[[LeftArrow]]）Move to left split
[[J]]：（[[Ctrl+J]]、[[DownArrow]]）Move to split below
[[K]]：（[[Ctrl+K]]、[[UpArrow]]）Move to split above
[[L]]：（[[Ctrl+L]]、[[RightArrow]]）Move to right split
[[Q]]：（[[Ctrl+Q]]）Close current window
[[O]]：（[[Ctrl+O]]）Only keep the current window, closing all the others
[[Shift+H]]：Swap window to the left
[[Shift+J]]：Swap window downwards
[[Shift+K]]：Swap window upwards
[[Shift+L]]：Swap window to the right

### Space mode

[[F]]：Open file picker
[[B]]：Open buffer picker
[[J]]：Open jumplist picker
[[K]]：Show documentation for item under cursor in a popup (**LSP**)
[[S]]：Open document symbol picker (**LSP**)
[[Shift+S]]：Open workspace symbol picker (**LSP**)
[[G]]：Open document diagnostics picker (**LSP**)
[[Shift+G]]：Open workspace diagnostics picker (**LSP**)
[[R]]：Rename symbol (**LSP**)
[[A]]：Apply code action (**LSP**)
[[']]：Open last fuzzy picker
[[W]]：Enter window mode
[[P]]：Paste system clipboard after selections
[[Shift+P]]：Paste system clipboard before selections
[[Y]]：Join and yank selections to clipboard
[[Shift+Y]]：Yank main selection to clipboard
[[Shift+R]]：Replace selections by clipboard contents
`/`：Global search in workspace folder
[[?]]：Open command palette


#### Popup

[[Ctrl+U]]：Scroll up
[[Ctrl+D]]：Scroll down

### Unimpaired

[[vim-unimpaired]]

`[`+D：Go to previous diagnostic (**LSP**)
`]`+D：Go to next diagnostic (**LSP**)
`[`+Shift+D：Go to first diagnostic in document (**LSP**)
`]`+Shift+D：Go to last diagnostic in document (**LSP**)
`[`+F：Go to previous function (**TS**)
`]`+F：Go to next function (**TS**)
`[`+C：Go to previous class (**TS**)
`]`+C：Go to next class (**TS**)
`[`+A：Go to previous argument/parameter (**TS**)
`]`+A：Go to next argument/parameter (**TS**)
`[`+O：Go to previous comment (**TS**)
`]`+O：Go to next comment (**TS**)
`[`+T：Go to previous test (**TS**)
`]`+T：Go to next test (**TS**)
`[`+P：Go to previous paragraph
`]`+P：Go to next paragraph
`[`+Space：Add newline above
`]`+Space：Add newline below


### Insert mode

[[Escape 键]]：Switch to normal mode
[[Ctrl+X]]：Autocomplete
[[Ctrl+R]]：Insert a register content
[[Ctrl+W]]：（[[Option+Backspace]]、[[Ctrl+Backspace]]）Delete previous word
[[Option+D]]：（[[Option+Delete]]、[[Ctrl+Delete]]）Delete next word
[[Option+B]]：（[[Ctrl+LeftArrow]]）Backward a word
[[Ctrl+B]]：（[[LeftArrow]]）Backward a char
[[Option+F]]：（[[Ctrl+RightArrow]]）Forward a word
[[Ctrl+F]]：（[[RightArrow]]）Forward a char
[[Ctrl+E]]：（[[End键]]）Move to line end
[[Ctrl+A]]：（[[Home键]]）Move to line start
[[Ctrl+U]]：Delete to start of line
[[Ctrl+K]]：Delete to end of line
[[Ctrl+J]]：（[[Enter键]]）Insert new line
[[Backspace]]：（[[Ctrl+H]]）Delete previous char
[[Delete 键]]：（[[Ctrl+D]]）Delete next char
[[Ctrl+P]]：（[[UpArrow]]）Move to previous line
[[Ctrl+N]]：（[[DownArrow]]）Move to next line
[[PageUp]]：Move one page up
[[PageDown]]：Move one page down
[[Option+<]]：Go to start of buffer
[[Option+>]]：Go to end of buffer


### Select/Extend mode



### Picker


[[Tab 键]]：（[[UpArrow]]、[[Ctrl+P]]）Previous entry
[[PageUp]]：（[[Ctrl+U]]）Page up
[[Shift+Tab]]：（[[DownArrow]]、[[Ctrl+N]]）Next entry
[[PageDown]]：（[[Ctrl+D]]）Page down
[[Home键]]：Go to first entry
[[End键]]：Go to last entry
[[Ctrl+Space]]：Filter options
[[Enter键]]：Open selected
[[Ctrl+S]]：Open horizontally
[[Ctrl+V]]：Open vertically
[[Ctrl+T]]：Toggle preview
[[Escape 键]]：（[[Ctrl+C]]）Close picker

### Prompt


[[Escape 键]]：（[[Ctrl+C]]）Close Prompt
[[Option+B]]：（[[Ctrl+LeftArrow]]）Backward a word
[[Ctrl+B]]：（[[LeftArrow]]）Backward a char
[[Option+F]]：（[[Ctrl+RightArrow]]）Forward a word
[[Ctrl+F]]：（[[RightArrow]]）Forward a char
[[Ctrl+A]]：（[[Home键]]）Move prompt start
[[Ctrl+E]]：（[[End键]]）Move prompt end
[[Ctrl+W]]：（[[Ctrl+Backspace]]、[[Option+Backspace]]）Delete previous word
[[Option+D]]：（[[Ctrl+Delete]]、[[Option+Delete]]）Delete next word
[[Ctrl+U]]：Delete to start of line
[[Ctrl+K]]：Delete to end of line
[[Backspace]]：（[[Ctrl+H]]）Delete previous char
[[Delete 键]]：（[[Ctrl+D]]）Delete next char
[[Ctrl+S]]：Insert a word under doc cursor, may be changed to Ctrl-r Ctrl-w later
[[Ctrl+P]]：（[[UpArrow]]）Select previous history
[[Ctrl+N]]：（[[DownArrow]]）Select next history
[[Ctrl+R]]：Insert the content of the register selected by following input char
[[Tab 键]]：Select next completion item
[[BackTab]]：Select previous completion item
[[Enter键]]：Open selected

## Commands


## 依赖


```dot

```

## 竞品

[[Vim]]


## 插件

[RiggsMackay/RiggsHelixPlugins: All my helix plugins that I have created.](https://github.com/RiggsMackay/RiggsHelixPlugins)

## 配置

[baratoxis/Helix-Plugins](https://github.com/baratoxis/Helix-Plugins)



## Misc






