---
title: Obsidian
categories:
date: 2022-09-23 19:36:29 +0800
tags:
  - Markdown
  - 双向链接
  - 知识图谱
excerpt:
---



Obsidian is a powerful **knowledge base** on top of a **local folder** of plain text [[Markdown]] files.



性能：使用英文194000单词测试非常卡顿

## 技术

[[CodeMirror Editor]] 6
Prismjs
Electron
Mantle
Squirrel


## 功能

[[YAML]] Front-matter

```text
---
title: newpost
date: 2020-
categories:   - Uncategorized
tags:   - posts
---
```


内部链接/[[双向链接]]（Outgoing Links）
关系图谱（Graph View）
局部关系图
[[Obsidian 插件]]
嵌入文件
Obsidian [[URI]]/ [[URL Scheme]]
[[Callout]]
发布静态网站
[[Obsidian 快捷键]]

### catalyst



## warning&bug

文件名中不能有 `\/|:#*^[]` 可以有：`+{;"=?~()<>&$`

文件中有 [[Unicode]] 零宽字符会导致编辑模式下文件显示不全。


## 插件

[[obsidian-path-finder]]

[[find-unlinked-files]]

[[graph-analysis]]

[[obsidian-dataview]]

[请问有实现回顾类似Dayone里面“那年今日”功能的插件吗？ - Obsidian 中文论坛](https://forum-zh.obsidian.md/t/topic/11243)

[pteichman/obsidian-moreemacs-plugin](https://github.com/pteichman/obsidian-moreemacs-plugin): More Emacs keybindings, because muscle memory is hard to break

[lukka5/obsidian-emacs-keymap](https://github.com/lukka5/obsidian-emacs-keymap): Hacky way of restoring the old Emacsy CodeMirror keymap that Obsidian was using before v0.11.10

[runchard/obsidian-emacs](https://github.com/runchard/obsidian-emacs): migrate some of emacs functionality to obsidian world.

## Obsidian 语法

基于 [[CommonMark]]、[[GitHub Flavored Markdown]]、[[LaTeX]]

[[脚注]]
[[图表]]：[[mermaid]]
[[注释]]
表格
高亮
内部链接
嵌入文件（Obsidian特有语法）
任务列表
数学公式
### [[Front-matter]]

tags
aliases
cssclass


### 网页（在线视频）嵌入

B站嵌入代码
```html
<iframe src="//player.bilibili.com/player.html?aid=202727323&bvid=BV16a411c7UK&cid=251646232&page=1"
		scrolling="no"
		border="0"
		frameborder="no"
		framespacing="0" 
		allowfullscreen="true">
</iframe>
```

美化B站嵌入视频

```html
<iframe src="http://player.bilibili.com/player.html?aid=202727323&bvid=BV16a411c7UK&cid=251646232&page=1"
		scrolling="no"
		border="0"
		frameborder="no"
		framespacing="0"
		allowfullscreen="true"
		style="height:100%;width:100%; aspect-ratio: 16 / 9;">
</iframe>
```

### 视频嵌入

```html
<video width=100% height=50% controls>
    <source src="movie.mp4" type="video/mp4">
    <source src="movie.ogg" type="video/ogg">
    <source src="movie.webm" type="video/webm">
</video>
```


### 音频嵌入


```html
<audio controls="controls" preload="none" src="音频链接地址">
</audio>
```



## 配置/模板


[llZektorll/OB_Template](https://github.com/llZektorll/OB_Template): OB_Templates is a Obsidian reference for note templates focused on new users of the application using only core plugins.

[zhaoshenzhai/MathWiki](https://github.com/zhaoshenzhai/MathWiki): An Obsidian vault for my math course notes in university

[cuken/obsidian-weave](https://github.com/cuken/obsidian-weave): Obsidian Vault Template for Software Developers/Managers working in the corporate world.

[cumany/Blue-topaz-examples](https://github.com/cumany/Blue-topaz-examples): Blue topaz themes example vault for Obsidian

## 分享

[oldwinter/knowledge-garden](https://github.com/oldwinter/knowledge-garden): 我的第二大脑 second brain，我的数字花园 digital garden，用obsidian双链笔记软件写作而成

[法政西南 - Obsidian Publish](https://publish.obsidian.md/wanyulawyer/)

[oldwinter/knowledge-garden](https://github.com/oldwinter/knowledge-garden)

[善用佳软 2022 - Obsidian Publish](https://publish.obsidian.md/xbeta/docsify/README)

## 主题

[chrisgrieser/shimmering-focus](https://github.com/chrisgrieser/shimmering-focus): Minimalistic Obsidian Theme for keyboard-centric users.

[chetachiezikeuzor/Yin-and-Yang-Theme](https://github.com/chetachiezikeuzor/Yin-and-Yang-Theme): An Obsidian theme with a stark contrast between dark mode and light mode, much like the Yin and Yang symbol ☯️.

[damiankorcz/Prism-Theme](https://github.com/damiankorcz/Prism-Theme): A Comprehensive, Highly-Customizable and Elegant Light/Dark Theme for Obsidian

[kepano/obsidian-minimal](https://github.com/kepano/obsidian-minimal): Meticulously designed to make Obsidian feel native across platforms. You can customize colors, fonts and more with the companion plugin Minimal Theme Settings.

[mgmeyers/obsidian-california-coast-theme](https://github.com/mgmeyers/obsidian-california-coast-theme): A minimalist obsidian theme inspired by macOS Big Sur


## 生态

[Actions for Obsidian](https://obsidian.actions.work/)

## 联动

Emacs：[[markdown-mode]]+[[obsidian.el]]

[czottmann/obsidian-actions-uri](https://github.com/czottmann/obsidian-actions-uri): Adds additional `x-callback-url` endpoints to Obsidian for common actions — it's a clean, super-charged addition to Obsidian [[URI]].

[[Logseq]] 与 Obsidian 共享 vault
Obsidian 使用 [[iCloud]] 同步
[[Working Copy]] 读取 Obsidian 的 vault 并推送到 remote [[Git]] repository

[[Hookmark]]


[Geralt-TYH/obsidian-zhihu-crawler](https://github.com/Geralt-TYH/obsidian-zhihu-crawler)



## 竞品 app

[[Roam Research]]

[[Logseq]]

[[Dendron]]

[[MWeb]]

Bear

[streetwriters/notesnook](https://github.com/streetwriters/notesnook): A fully open source & end-to-end encrypted note taking alternative to Evernote.

Lattics

[Meogic](https://meogic.com/zh/)

### 导入

[ze-kel/DayOne-JSON-to-MD](https://github.com/ze-kel/DayOne-JSON-to-MD): Converts json from Day One app to Markdown. Intended for transferring from DayOne to Obsidian but should work with everything else. =====UPDATE=====: I made it to solve my specific need, and not really interested in working on it any further. Check out forks though, there seems to be a few improved implementations.

## Obsidian Publish



### 第三方

[[quartz]]

[[jekyll-garden]]


[obsidian-userland/publish](https://github.com/obsidian-userland/publish): Open source Obsidian Publish alternative

[obsidian 目前最完美的免费发布方案 - 渐进式教程 - 经验分享 - Obsidian 中文论坛](https://forum-zh.obsidian.md/t/topic/8852)

[oleeskild/obsidian-digital-garden](https://github.com/oleeskild/obsidian-digital-garden)

[TuanManhCao/digital-garden](https://github.com/TuanManhCao/digital-garden): Free Obisidian Publish alternative, for publishing your digital garden.

[jobindjohn/obsidian-publish-mkdocs](https://github.com/jobindjohn/obsidian-publish-mkdocs): A Template to Publish Obsidian/Foam Notes on Github Pages (uses MkDocs)

[yoursamlan/pubsidian](https://github.com/yoursamlan/pubsidian): An Obsidian-Publish alternative but it's FREE

[secure-77/Perlite](https://github.com/secure-77/Perlite): A web-based markdown viewer optimized for Obsidian

[binyamin/eleventy-garden](https://github.com/binyamin/eleventy-garden): A starter site for building a mind garden with eleventy




## 社区

[Obsidian Forum](https://forum.obsidian.md/)

[Obsidian 中文论坛](https://forum-zh.obsidian.md/)

## API

[obsidianmd/obsidian-api](https://github.com/obsidianmd/obsidian-api)

## Misc

[kmaasrud/awesome-obsidian](https://github.com/kmaasrud/awesome-obsidian): 🕶️ Awesome stuff for Obsidian

[[CodeMirror Editor]]

[zoni/obsidian-export](https://github.com/zoni/obsidian-export): Rust library and CLI to export an Obsidian vault to regular Markdown

[jml/obsidian-to-org](https://github.com/jml/obsidian-to-org): Convert an Obsidian directory to [[Org-roam]]

[[obsidian.nvim]]

[[Zettelkasten卡片盒笔记法]]

[[Zotero]]

[[Gephi]]

[x28de/mytool](https://github.com/x28de/mytool): A visual think tool whose two panes are adequate to the two basic modes of brain operation



