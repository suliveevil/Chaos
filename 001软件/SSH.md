---
title: "SSH"
author: 
categories: 
date: 2022-10-16 16:32:59 +0800
tags: 
excerpt: 
---

IETF 网络小组（Network Working Group）制定的安全协议，方便远程登录




macOS Ventura 默认禁用了 用 SHA-1 的哈希算法的 RSA 签名，因为被破解了所以不安全

方法 1

ssh 配置文件~/.ssh/config 中添加下面两行
```shell
HostKeyAlgorithms +ssh-rsa
PubkeyAcceptedKeyTypes +ssh-rsa
```
方法 2
直接换 ed25519




## Misc

[[GPG]]

[[mosh]]


