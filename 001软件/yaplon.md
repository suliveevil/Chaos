---
title: "yaplon"
categories: 
date: 2022-09-23 22:53:00 +0800
tags: 格式转换 CSV JSON PLIST XML YAML Python
excerpt: 
---

[twardoch/yaplon](https://github.com/twardoch/yaplon): Python 3-based commandline converter YAML ↔ JSON ↔ PLIST

```shell
pip3 install --user --upgrade git+https://github.com/twardoch/yaplon
```


```shell
yaplon -h
Usage: yaplon [OPTIONS] COMMAND [ARGS]...

  Convert between JSON, YAML and PLIST (binary and XML) in the commandline.

  Usage: yaplon j2p|j2y|p2j|p2y|y2j|y2p -i input -o output [options]

  Omit -i to use stdin. Omit -o to use stdout. Type 'yaplon command --help'
  for more info on each conversion command.

Options:
  --version   Show the version and exit.
  -h, --help  Show this message and exit.

Commands:
  j2p  -i JSON -o PLIST [-b] (make binary PLIST)
  j2y  -i JSON -o YAML [-m] (minify YAML)
  p2j  -i PLIST -o JSON [-m] (minify) [-b] (keep binary)
  p2y  -i PLIST -o YAML [-m] (minify YAML)
  y2j  -i YAML -o JSON [-m] (minify) [-b] (keep binary)
  y2p  -i YAML -o PLIST [-b] (make binary PLIST)
```





## Misc

[[CSV]]
[[JSON]]
[[PLIST]]
[[XML]]
[[YAML]]


