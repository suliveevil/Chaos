---
title: Markdown
categories:
date: 2022-09-23 23:45:59 +0800
tags:
  - 标记语言
  - 文件格式
excerpt:
---

一种标记语言、[[文件格式]]、语法，使用标记代替排版。


[Daring Fireball - John Gruber](https://daringfireball.net/)
Aaron Swartz


## 语法

[[CommonMark]]

[[GitHub Flavored Markdown]]（GFM）

[Syntax | kramdown](https://kramdown.gettalong.org/syntax.html)

[Mathpix Markdown](https://mathpix.com/docs/mathpix-markdown/overview)

## LSP

[artempyanykh/marksman](https://github.com/artempyanykh/marksman): Write Markdown with code assist and intelligence in the comfort of your favorite editor.


## 指导性规范

[Google Markdown style guide](https://github.com/google/styleguide/blob/gh-pages/docguide/style.md)

## 语法元素
### 区块元素
[[标题]]
[[表格]]
[[代码块]]：行内代码/内联代码、多行代码/代码块
[[列表]]：有序列表、无序列表、任务列表/任务清单/待办事项
[[引用]]
段落
分隔线
[[换行]]
居中
删除线

### 内联元素
[[视频]]（HTML iframe 嵌入视频）
[[图片]]
[[注释]]
粗体
链接：内联链接、引用链接
强调
斜体
高亮

## 空格

`&#160;&#160;&#160;&#160;` 与 `&nbsp;`

`&nbsp;` 是 html 中的空格的转义, `&#160;` 是 XSL/XML 中的。
XSL 并不认识 `&nbsp;` 它会原样输出。

`&#160;` 这样的空格，用 String 的 `trim();` 方法是去不掉的！ 因为 `&nbsp; &#160; ` 这些东西 `trim();` 不当他们是空格！

PS：
XSL是可扩展样式表语言的外语缩写，是一种用于以可读格式呈现 XML（标准通用标记语言的子集）数据的语言。
XSL = XML 样式表
XML 不使用预先定义的标签（我们可以使用任何喜欢的标签名），并且每个标签的意义并不都那么容易被理解。
`<table> ` 标签意味着一个 HTML 表格，一件家具，或是别的什么东西 - 浏览器不清楚如何显示它。
XSL 可描述如何来显示 XML 文档！
XSL - 不仅仅是样式表语言
XSL 包括三部分：

| 三部分 | 说明                        |
| ---- | --------------------------- |
| XSLT | 一种用于转换 XML 文档的语言 |
| XPath |  一种用于在 XML 文档中导航的语言 |
| XSL-FO | 一种用于格式化 XML 文档的语言 |




## 渲染引擎

render/parser

[hexojs/hexo-renderer-marked](https://github.com/hexojs/hexo-renderer-marked): Markdown renderer for [[Hexo]]

[hexojs/hexo-renderer-markdown-it](https://github.com/hexojs/hexo-renderer-markdown-it): Markdown-it is a Markdown parser, done right. A faster and CommonMark compliant alternative for Hexo.


[shd101wyy/mume](https://github.com/shd101wyy/mume): Powerful markdown tool

[hinesboy/mavonEditor](https://github.com/hinesboy/mavonEditor): mavonEditor - A markdown editor based on Vue that supports a variety of personalized features

[sbfkcel/towxml](https://github.com/sbfkcel/towxml): 微信小程序HTML、Markdown渲染库

[markdown-it/markdown-it](https://github.com/markdown-it/markdown-it): Markdown parser, done right. 100% CommonMark support, extensions, syntax plugins & high speed


[lute](https://gitee.com/dl88250/lute/): 🎼 一款结构化的 Markdown 引擎，支持 Go 和 JavaScript。A structured Markdown engine that supports Go and JavaScript.

## markdown 扩展

[[echarts]]
[[Graphviz]]
[[HTML]]
[[LaTeX]]：[[MathJax]]、[[KaTeX]]
[[mermaid]]
[[Prism.js]]
[[YAML]]
Callouts/Alerts

## App

app 对比：[The iOS Text Editor roundup](https://brettterpstra.com/ios-text-editors/)

[[iA Writer]]
[[MWeb]]
[[Obsidian]]
Metion
Taio
[妙言 - tw93/MiaoYan](https://github.com/tw93/MiaoYan)

[[Ghostwriter]]

## Misc

[syntax-tree/mdast](https://github.com/syntax-tree/mdast): Markdown Abstract Syntax Tree format

[Markdown Service Tools - BrettTerpstra.com](https://brettterpstra.com/projects/markdown-service-tools/)

[[Org-mode]]

[[思维导图]]

[[TXT]]

[wshuyi/markdown2slides](https://github.com/wshuyi/markdown2slides): Tools for converting Markdown Source File to Reveal.js HTML5 slides






