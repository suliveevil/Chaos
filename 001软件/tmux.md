---
title: "tmux"
categories: 
date: 2022-11-14 06:20:02 +0800
tags: 
excerpt: 
---





## 概念

session: 对应 Emacs 的 frame
window: 对应 Emacs 的 tab
pane: 对应 Emacs 的 window



## 启动 Shell 时自动启动 tmux

Bash

对bash用户, 只需要将下面命令添加到自己家目录下的.bashrc, 要注意这句命令需要在alias配置之前.对其它shell的配置也是类似的

```shell
~/.bashrc
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
```

注意: 这些代码确保tmux不会在tmux中启动(tmux嵌套于tmux中). tmux 通过设置环境变量$TMUX 来设置tmux启动所用的socket, 如果$TMUX不存在,或者长度为0那么就可以知道当前没有运行tmux.
下面的配置会尝试只启动一个会话, 当你登录时, 如果之前启动过会话, 那么它会直接attach, 而不是新开一个. 想要新开一个session要么是因为之前没有会话, 要么是你手动启动一个新的会话.


```shell
# TMUX
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi
```

下面的配置实现的功能相似, 但是他会在启动tmux之前先检查一下tmux是否已经安装. 它也会在你登出之前帮你重新连接上未关闭的session, 这样可以让你手动关闭会话并保存相应的工作,避免数据丢失,进程异常中断.


```shell
# TMUX
if which tmux >/dev/null 2>&1; then
    # if no session is started, start a new session
    test -z ${TMUX} && tmux

    # when quitting tmux, try to attach
    while test -z ${TMUX}; do
        tmux attach || break
    done
fi
```

另外一种配置, 一样可以实现自动连接已存在的会话,否则会新开一个:


```shell
if [[ -z "$TMUX" ]] ;then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi
```




## Misc

