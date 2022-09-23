---
title: "Vimscript"
categories: 
date: 2022-09-25 18:30:51 +0800
tags: Vim 编程语言
excerpt: 
---

[[DSL]] for [[Vim]]



Vim9script

[tjdevries/vim9jit](https://github.com/tjdevries/vim9jit): a vim9script -> lua transpiler (written in Rust)

## LSP

[[vim-language-server]]


## 命名空间
```vimscript
a:
$
```


## 关键字


if
else
elseif
try
catch
finally
endtry
throw
for
endfor
in
while
endwhile
break
continue
function
endfunction
true
false


### 命令 Command


let
unlet
const
call
execute
normal
set
setlocal
echo
echomsg
autocmd
augroup
return
lua
ruby
perl
python
highlight
command
delcommand
comclear
startinsert
stopinsert
global
runtime
wincmd
cnext
cprevious
cNext
vertical
leftabove
aboveleft
rightbelow
belowright
topleft
botright
edit
enew
find
ex
visual
view


### 语法 Syntax

enable
on
off
reset
case
spell
foldlevel
iskeyword
keyword
match
cluster
region

### 高亮 highlight

default
link
clear


### 操作符

```vimscript
||
&&
&
+
-
*
/
%
..
is
isnot
==
!=
>
>=
<
<=
=~
!~
=
+=
-=
*=
/=
%=
.=
..=
.
!
```

### 标点符号
```vimscript
(
)
{
}
[
]
,
:
?
```

## debug

[[Vfix]]

[Termplexed/deblog](https://github.com/Termplexed/deblog): Vim; Log debug information from vim-script and command-line to file, to use with tail

## 书籍

Learn Vimscript the Hard Way


## Misc

[[Lua]]



