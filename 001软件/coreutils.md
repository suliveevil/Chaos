---
title: "coreutils"
categories: 
date: 2022-09-30 19:37:54 +0800
tags: GNU
excerpt: 
---

[Coreutils - GNU core utilities](https://www.gnu.org/software/coreutils/)




```bash
# brew info coreutils
==> **coreutils**: stable 9.1 (bottled), HEAD

GNU File, Shell, and Text utilities

https://www.gnu.org/software/coreutils

Conflicts with:

  aardvark_shell_utils (because both install `realpath` binaries)

  b2sum (because both install `b2sum` binaries)

  ganglia (because both install `gstat` binaries)

  gdu (because both install `gdu` binaries)

  idutils (because both install `gid` and `gid.1`)

  md5sha1sum (because both install `md5sum` and `sha1sum` binaries)

  truncate (because both install `truncate` binaries)

  uutils-coreutils (because coreutils and uutils-coreutils install the same binaries)

/opt/homebrew/Cellar/coreutils/9.1 (480 files, 13.3MB) *

  Poured from bottle on 2022-09-27 at 19:04:09

From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/coreutils.rb

License: GPL-3.0-or-later

==> **Dependencies**

Required: **gmp** **✔**

==> **Options**

--HEAD

Install HEAD version

==> **Caveats**

Commands also provided by macOS and the commands dir, dircolors, vdir have been installed with the prefix "g".

If you need to use these commands with their normal names, you can add a "gnubin" directory to your PATH with:

  PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
```
