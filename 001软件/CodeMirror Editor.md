---
title: "CodeMirror Editor"
author:
categories:
date: 2022-10-13 17:14:36 +0800
tags:
excerpt:
---


[CodeMirror](https://codemirror.net/)

[codemirror/commands/src/commands.ts](https://github.com/codemirror/commands/blob/main/src/commands.ts)

## 快捷键

[[Command+A]]：Select All
[[Escape 键]]：
[[Ctrl+K]]：Emacs-style line killing. Deletes the part of the line after the cursor. If that consists only of whitespace, the newline at the end of the line is also deleted.
[[Command+D]]：Deletes the whole line under the cursor, including newline at the end.
[[Command+Backspace]]：Delete the part of the line from the left side of the visual line the cursor is on to the cursor.
[[Command+Delete]]：Delete the part of the line from the cursor to the right side of the visual line the cursor is on.
[[Command+Z]]：Undo the last change. Note that, because browsers still don't make it possible for scripts to react to or customize the context menu, selecting undo (or redo) from the context menu in a CodeMirror instance does not work.
[[Command+Y]]：（[[Command+Shift+Z]]）Redo the last undone change.
[[Command+U]]：Undo the last change to the selection, or if there are no selection-only changes at the top of the history, undo the last change.
[[Command+Shift+U]]：Redo the last change to the selection, or the last text change if no selection changes remain.
[[Command+UpArrow]]：  （[[Command+Home]]）Move the cursor to the start of the document.
[[Command+DownArrow]]：（[[Command+End]]） Move the cursor to the end of the document.
[[Ctrl+A]]：Move the cursor to the start of the line.
[[Command+RightArrow]]：Move the cursor to the right side of the visual line it is on.
[[Command+LeftArrow]]：Move the cursor to the left side of the visual line it is on. If this line is wrapped, that may not be the start of the line.
[[Ctrl+P]]：Move the cursor up one line.
[[Ctrl+N]]：Move the cursor down one line.
[[Ctrl+Shift+V]]：（[[PageUp]]）Move the cursor up one screen, and scroll up by the same distance.
[[Ctrl+V]]：（[[PageDown]]）Move the cursor down one screen, and scroll down by the same distance.
[[Ctrl+B]]：（[[LeftArrow]]）Move the cursor one character left, going to the previous line when hitting the start of line.
[[Ctrl+F]]：（[[RightArrow]]）Move the cursor one character right, going to the next line when hitting the end of line.
[[Option+B]]：Move the cursor to the start of the previous word.
[[Option+F]]：Move the cursor to the end of the next word.
[[Option+LeftArrow]]：Move to the left of the group before the cursor. A group is a stretch of word characters, a stretch of punctuation characters, a newline, or a stretch of _more than one_ whitespace character.
[[Option+RightArrow]]：Move to the right of the group after the cursor
[[Ctrl+H]]：Delete the character before the cursor.
[[Ctrl+D]]：Delete the character after the cursor.
[[Option+D]]：Delete up to the end of the word after the cursor.
[[Option+Backspace]]：Delete up to the start of the word before the cursor.
[[Option+Backspace]]：Delete to the left of the group before the cursor.
[[Ctrl+Option+Backspace]]：（[[Option+Delete]]）Delete to the start of the group after the cursor.
[[Shift+Tab]]：Auto-indent the current line or selection.
Command+`[`：Delete the current line or selection by one indent unit
Command+`]`：Indent the current line or selection by one indent unit
[[Tab 键]]：If something is selected. indent it by one indent unit. If nothing is selected, insert a tab character.
[[Ctrl+T]]：Swap the characters before and after the cursor.
[[Enter键]]：Insert a newline and auto-indent the new line.
[[Insert 键]]：Flip the overwrite flag
[[Command+S]]：Save file
[[Command+F]]：Find
[[Command+G]]：Find Next
[[Command+Shift+G]]：Find Previous
[[Command+Option+F]]：Replace
[[Command+Option+Shift+F]]：Replace All



### Emacs

[Emacs Keymap - CodeMirror](https://codemirror.net/5/keymap/emacs.js)

[replit/codemirror-emacs/src/index.ts](https://github.com/replit/codemirror-emacs/blob/master/src/index.ts)

```text
"Ctrl-W": "killRegion"
"Ctrl-K": "killLineEmacs"
"Alt-W": "killRingSave"
"Ctrl-Y": "yank"
"Alt-Y": "yankPop"
"Ctrl-Space": "setMark"
"Ctrl-Shift-2": "setMark"
"Ctrl-F": "forwardChar"
"Ctrl-B": "backwardChar"
"Right": "forwardChar"
"Left": "backwardChar"
"Ctrl-D": "deleteChar"
"Delete": "deleteForwardChar"
"Ctrl-H": "deleteBackwardChar"
"Backspace": "deleteBackwardChar"
"Alt-F": "forwardWord"
"Alt-B": "backwardWord"
"Alt-Right": "forwardWord"
"Alt-Left": "backwardWord"
"Alt-D": "killWord"
"Alt-Backspace": "backwardKillWord"
"Ctrl-N": "nextLine"
"Ctrl-P": "previousLine"
"Down": "nextLine"
"Up": "previousLine"
"Ctrl-A": "goLineStart"
"Ctrl-E": "goLineEnd"
"End": "goLineEnd"
"Home": "goLineStart"
"Alt-V": "scrollDownCommand"
"Ctrl-V": "scrollUpCommand"
"PageUp": "scrollDownCommand"
"PageDown": "scrollUpCommand"
"Ctrl-Up": "backwardParagraph"
"Ctrl-Down": "forwardParagraph"
"Alt-{": "backwardParagraph"
"Alt-}": "forwardParagraph"
"Alt-A": "backwardSentence"
"Alt-E": "forwardSentence"
"Alt-K": "killSentence"
"Ctrl-X Delete": "backwardKillSentence"
"Ctrl-Alt-K": "killSexp"
"Ctrl-Alt-Backspace": "backwardKillSexp"
"Ctrl-Alt-F": "forwardSexp"
"Ctrl-Alt-B": "backwardSexp"
"Shift-Ctrl-Alt-2": "markSexp"
"Ctrl-Alt-T": "transposeSexps"
"Ctrl-Alt-U": "backwardUpList"
"Alt-Space": "justOneSpace"
"Ctrl-O": "openLine"
"Ctrl-T": "transposeCharsRepeatable"
"Alt-C": "capitalizeWord"
"Alt-U": "upcaseWord"
"Alt-L": "downcaseWord"
"Alt-;": "toggleComment"
"Ctrl-/": "undoRepeatable"
"Shift-Ctrl--": "undoRepeatable"
"Ctrl-Z": "undoRepeatable"
"Cmd-Z": "undoRepeatable"
"Ctrl-X U": "undoRepeatable"
"Shift-Ctrl-Z": "redo"
"Shift-Alt-,": "goDocStart"
"Shift-Alt-.": "goDocEnd"
"Ctrl-S": "findPersistentNext"
"Ctrl-R": "findPersistentPrev"
"Ctrl-G": "keyboardQuit"
"Shift-Alt-5": "replace"
"Alt-/": "autocomplete"
"Enter": "newlineAndIndent"
"Ctrl-J": "newline"
"Tab": "indentAuto"
"Alt-G G": "gotoLine"
"Ctrl-X Tab": "indentRigidly"
"Ctrl-X Ctrl-X": "exchangePointAndMark"
"Ctrl-X Ctrl-S": "save"
"Ctrl-X Ctrl-W": "save"
"Ctrl-X S": "saveAll"
"Ctrl-X F": "open"
"Ctrl-X K": "close"
"Ctrl-X H": "selectAll"
"Ctrl-Q Tab": "quotedInsertTab"
"Ctrl-U": "universalArgument"
"fallthrough": "default"
```


### Vim

[Vim Keymap - CodeMirror](https://codemirror.net/5/keymap/vim.js)

[replit/codemirror-vim/src/vim.js](https://github.com/replit/codemirror-vim/blob/master/src/vim.js)

### VSCode

[replit/codemirror-vscode-keymap/src/index.ts](https://github.com/replit/codemirror-vscode-keymap/blob/master/src/index.ts)

### Sublime Text

[Sublime Text Keymap - CodeMirror](https://codemirror.net/5/keymap/sublime.js)

## 生态

[[Obsidian]]

[[Overleaf]]

## Misc

[[Monaco Editor]]

[[Scintilla]]


