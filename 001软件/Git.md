---
title: "Git"
categories: 
date: 2022-09-30 22:48:07 +0800
tags: 文件同步 版本控制
excerpt: 
---

[[Linus Torvalds]]

其实第一次听说要改用 git 进行版本控制我是拒绝的，因为，你不能让我改用 git ，我就马上去改，第一，我要用一下，因为我不愿意只稍微试了一下，就加上一些明明不懂，非要装逼说好的说辞，然后吹鼓 git 有多叼，合并代码时 “咣” 一下， 冲突就不见了，这样我的同事一定会骂我，根本没有这样的版本管理器，就证明这个 git 是假的。后来我也经过证实它确实有自己的优势，比如本地管理，分布式等等，我用了大概一个月左右，也用了一些高级用法，感觉还不错，后来我在给别人宣传的时候，也不瞎比吹牛逼说 git 有多叼，因为我要让我的同事看到，我用完之后，代码管理变得简单轻松，你们用完也会变得轻松。 - [的卢](https://www.zhihu.com/question/21218703/answer/82784116)

## 安装

三种主要的安装方式（on macOS）

[[Homebrew]]

[[Xcode]]

源码编译



## 设置/配置

设置 [[001软件/SSH]]
```shell
ssh-keygen -t rsa -C "your@email.com"
cd ~/.ssh
pbcopy < id_rsa.pub
ssh-add id_rsa# 在 GitHub、Gitee 等 Git 服务器上粘贴 SSH Key
```

设置 Git

```shell
git config --global user.name "your_name"
git config --global user.email "your@email.com"
# 检查一下
git config --list 
```


## 使用

[k88hudson/git-flight-rules/README_zh-CN.md](https://github.com/k88hudson/git-flight-rules/blob/master/README_zh-CN.md)

[GitSheet](https://gitsheet.wtf/)

[Git Explorer](https://gitexplorer.com/)

[doggy8088/Learn-Git-in-30-days](https://github.com/doggy8088/Learn-Git-in-30-days): 這是 Will 保哥在 2013 第 6 屆 iT 邦幫忙鐵人賽年度大獎的得獎著作【30 天精通 Git 版本控管】

[如何用 Git 合并两个库（合并历史记录，解决冲突／改写路径） - SegmentFault 思否](https://segmentfault.com/a/1190000000678808)

### Git fetch

[git: fetch and merge, don’t pull | Mark's Blog](https://longair.net/blog/2009/04/16/git-fetch-and-merge/)


### Git Ignore

```shell
# macOS
.DS_Store
._.DS_Store
**/.DS_Store
**/._.DS_Store
```

```shell
find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch
git commit -m "Remove .DS_Store from everywhere"
git push origin master
```


### Git commit

[commitizen/cz-cli](https://github.com/commitizen/cz-cli): The commitizen command line utility.
[commitizen/cz-conventional-changelog](https://github.com/commitizen/cz-conventional-changelog): A commitizen adapter for the angular preset of conventional-changelog
[conventional-changelog/conventional-changelog](https://github.com/conventional-changelog/conventional-changelog): Generate changelogs and release notes from a project's commit messages and metadata.

[conventional-changelog/commitlint](https://github.com/conventional-changelog/commitlint): 📓 Lint commit messages


### Git Diff

竞品：
diff-so-fancy

### Git submodule

[使用Git Submodule管理子模块 - 姜家志](https://segmentfault.com/a/1190000003076028)

[使用Git Submodule管理子模块 - 姜家志 - 简书](https://www.jianshu.com/p/b49741cb1347#%E5%88%A0%E9%99%A4Submodule)



## 客户端

[[GitHub Desktop]]
[[Sourcetree]]
[[Working Copy]]
PolyGit
[GitKraken](https://www.gitkraken.com/)
[Tower Git Client](https://www.git-tower.com/)
[gitahead/gitahead](https://github.com/gitahead/gitahead/): Understand your Git history!

### TUI

tig
lazygit

## 服务端

### 自建服务端

[go-gitea/gitea](https://github.com/go-gitea/gitea): Git with a cup of tea, painless self-hosted git service

[[Gogs]]

[theonedev/onedev](https://github.com/theonedev/onedev): Self-hosted Git Server with CI/CD and Kanban



### 在线服务

[[Gitee]]
[[GitHub]]

## 实现

[[libgit2]]

[[dulwich]]：[[Python]]

[[isomorphic-git]]：[[JavaScript]]

[Byron/gitoxide](https://github.com/Byron/gitoxide): An idiomatic, lean, fast & safe pure [[Rust]] implementation of Git



## 联动

[[rsync]]

[StackExchange/blackbox](https://github.com/StackExchange/blackbox): Safely store secrets in Git/Mercurial/Subversion


## 竞品

[[Fossil]]
[[SVN]]
[[darcs]]
[[Sapling]]

## Misc

[Oh Shit, Git!?!](https://ohshitgit.com/)
[ksylor/ohshitgit](https://github.com/ksylor/ohshitgit)

[PGYER/codefever](https://github.com/PGYER/codefever): CodeFever Community Edition (A Self-hosted Git Services)

[Git 内部原理](https://www.open-open.com/lib/view/open1328070620202.html)

untrack

ignore

[vamolessa/verco](https://github.com/vamolessa/verco): A simple Git/Mercurial/PlasticSCM tui client based on keyboard shortcuts

解决上传慢问题

[解决git停留在writing objects和上传慢的情况](https://www.jianshu.com/p/704dc6b0bb18)

[工程基础 - Github pull/push 速度太慢 - BlackPoint 点墨](https://blog.csdn.net/Edin_BlackPoint/article/details/73090922)

[Mac下修改hosts 解决访问github慢的问题 - cjopengler](https://blog.csdn.net/cjopengler/article/details/45603171)

[IP/服务器github.com的信息 - 站长工具](http://ip.tool.chinaz.com/github.com)


[Gource - a software version control visualization tool](https://gource.io/)



