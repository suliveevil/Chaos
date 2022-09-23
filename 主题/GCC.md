---
title: "GCC"
categories:
date: 2022-10-05 03:46:31 +0800
tags: GNU
excerpt: GNU Compiler Collection，原 GNU C Complier
---




## 依赖

```dot
digraph G {
    "gcc";
    "gmp";
    "isl";
    "libmpc";
    "mpfr";
    "zstd";
    "lz4";
    "xz";
    "gcc" -> "gmp";
    "gcc" -> "isl";
    "gcc" -> "libmpc";
    "gcc" -> "mpfr";
    "gcc" -> "zstd";
    "isl" -> "gmp";
    "libmpc" -> "gmp";
    "libmpc" -> "mpfr";
    "mpfr" -> "gmp";
    "zstd" -> "lz4";
    "zstd" -> "xz";
}
```


## 竞品

[[LLVM]]

[[clang]]


## Misc



