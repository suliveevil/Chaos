---
title: "rsync"
author:
categories:
date: 2022-10-14 10:33:47 +0800
tags: 文件下载 文件同步
excerpt: rsync：远程同步（remote synchronize）
---



[WayneD/rsync](https://github.com/WayneD/rsync): An open source utility that provides fast incremental file transfer. It also has useful features for backup and restore operations among many other use cases.

官网：[rsync](https://rsync.samba.org/)


## 算法

差分算法

## 依赖



```dot
digraph G {
    "rsync";
    "lz4";
    "openssl@3";
    "ca-certificates";
    "popt";
    "xxhash";
    "zstd";
    "xz";
    "rsync" -> "lz4";
    "rsync" -> "openssl@3";
    "rsync" -> "popt";
    "rsync" -> "xxhash";
    "rsync" -> "zstd";
    "openssl@3" -> "ca-certificates";
    "zstd" -> "lz4";
    "zstd" -> "xz";
}
```

## Misc

[[Git]]

[[SSH]]

[[RFC]]

