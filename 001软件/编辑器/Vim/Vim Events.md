---
title: "Vim Events"
categories: 
date: 2022-11-09 15:57:20 +0800
tags: 
excerpt: 自动命令事件，autocmd-events
---


BufNewFile
BufReadPre
BufRead
BufReadPost
BufReadCmd

FileReadPre
FileReadPost
FileReadCmd

FilterReadPre
FilterReadPost

StdinReadPre
StdinReadPost

BufWrite
BufWritePre
BufWritePost
BufWriteCmd

FileWritePre
FileWritePost
FileWriteCmd

FileAppendPre
FileAppendPost
FileAppendCmd

BufAdd
BufCreate
BufDelete
BufWipeout

BufFilePre
BufFilePost

BufEnter
BufLeave
BufWinEnter
BufWinLeave

SwapExists

FileType
Syntax
EncodingChanged
TermChanged
OptionSet
OSAppearanceChanged

VimEnter
GUIEnter
GUIFailed
TermResponse

QuitPre
ExitPre
VimLeavePre
VimLeave

VimSuspend
VimResume

TerminalOpen
TerminalWinOpen

FileChangedShell
FileChangedShellPost
FileChangedR0

DiffUpdated
DirChangedPre
DirChanged

ShellCmdPost
ShellFilterPost

CmdUndefined
FuncUndefined
SpellFileMissing
SourcePre
SourcePost
SourceCmd

VimResized
FocusGained
FocusLost
CursorHold
CursorHoldI
==CursorMoved==
==CursorMovedI==

WinNew
TabNew
WinClosed
TabClosed
WinEnter
WinLeave
TabEnter
CmdwinEnter
CmdwinLeave

CmdlineChanged
CmdlineEnter
CmdlineLeave

==InsertEnter==
InsertChange
==InsertLeave==
InsertLeavePre
InsertCharPre

ModeChanged

TextChanged
TextChangedI
TextChangedP
TextYankPost

SafeState
SafeStateAgain

ColorSchemePre
ColorScheme

RemoteReply

QuickFixCmdPre
QuickFixCmdPost

SessionLoadPost

MenuPopup
CompleteChanged
CompleteDonePre
CompleteDone

User
SigUSR1

WinScrolled



