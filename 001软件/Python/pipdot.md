---
title: "pipdot"
categories:
date: 2022-10-07 21:26:42 +0800
tags: 依赖
excerpt:
---


[tanbro/pipdot](https://github.com/tanbro/pipdot): Generate a [[Graphviz]] dot file representing installed PyPI distributions


```shell
# 安装
pip3 install pipdot
```

```shell
# 帮助文档
python3 -m pipdot --help

usage: /opt/homebrew/opt/python@3.10/bin/python3.10 -m pipdot
       [-h] [--version] [--path PATH] [--local-only | --no-local-only]
       [--include-editables | --no-include-editables]
       [--editables-only | --no-editables-only] [--user-only | --no-user-only]
       [--show-extras-label | --no-show-extras-label]
       [--installed-only | --no-installed-only] [--template TEMPLATE]
       [output]

Generate a GraphViz dot file representing installed PyPI distributions

positional arguments:
  output                Write generated graphviz dot to the file. It will
                        output to "stdout" if not specified.

options:
  -h, --help            show this help message and exit
  --version, -V         show program's version number and exit
  --path PATH, -p PATH  If path is set, only report the distributions present
                        at the specified location. This option can be
                        specified multiple times for more than one locations.
  --local-only, --no-local-only
                        If in a virtual-env that has global access, do not
                        list globally-installed packages. (default: True)
  --include-editables, --no-include-editables
                        List editable projects. (default: True)
  --editables-only, --no-editables-only
                        List editable projects only. (default: False)
  --user-only, --no-user-only
                        Only output packages installed in user-site. (default:
                        False)
  --show-extras-label, --no-show-extras-label
                        Show extras dependencies label. (default: False)
  --installed-only, --no-installed-only
                        Only output installed packages. Extras packages those
                        are not installed will not be shown. (default: True)
  --template TEMPLATE, -t TEMPLATE
                        The Jinja2 template file be used to render GraphViz.
                        If not specified, a default template will be used.

```



```dot
digraph {
    rankdir = "LR";

    node [color=grey, style=dotted];
    edge [color="#61c2c5", style="filled,setlinewidth(2)", fontcolor=grey];



    subgraph {
        node [shape=box,color="#51bf5b",fillcolor="#91b5c9",style="dotted,filled,setlinewidth(4)"];
    }

    subgraph {
        node [shape=egg,color="#8383cc",fillcolor="#d9e7ee",style="filled,setlinewidth(4)"];
        "wheel" [label="wheel\n0.37.1"];
        "tomli" [label="tomli\n2.0.1"];
        "six" [label="six\n1.16.0"];
        "setuptools" [label="setuptools\n65.3.0"];
        "platformdirs" [label="platformdirs\n2.5.2"];
        "pipdot" [label="pipdot\n0.2"];
        "pip" [label="pip\n22.2.2"];
        "pathspec" [label="pathspec\n0.10.1"];
        "mypy-extensions" [label="mypy-extensions\n0.4.3"];
        "markupsafe" [label="MarkupSafe\n2.1.1"];
        "jinja2" [label="Jinja2\n3.1.2"];
        "click" [label="click\n8.1.3"];
        "black" [label="black\n22.10.0"];
    }

    subgraph {
        node [shape=polygon,color="#61c2c5",fillcolor="#d9e7ee",style="filled,setlinewidth(4)"];
    }

    subgraph {
        node [shape=septagon,color="#e27dd6ff",fillcolor="#d9e7ee",style="filled,setlinewidth(4)"];
    }

    subgraph {
        node [shape=octagon,color="#e27dd6ff",fillcolor="#d9e7ee",style="filled,setlinewidth(4)"];
    }


    "setuptools" -> "wheel" [style="dashed,setlinewidth(2)",];
    "setuptools" -> "pip" [style="dashed,setlinewidth(2)",];
    "setuptools" -> "tomli" [style="dashed,setlinewidth(2)",];
    "pipdot" -> "pip" [];
    "pipdot" -> "jinja2" [];
    "jinja2" -> "markupsafe" [];
    "black" -> "mypy-extensions" [];
    "black" -> "click" [];
    "black" -> "pathspec" [];
    "black" -> "platformdirs" [];
    "black" -> "tomli" [];

}
```




## 竞品

pip-audit

## Misc


[[Python]]






