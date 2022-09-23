---
title: "sh - Safari History Fuzzy Search"
categories: 
date: 2022-09-23 23:53:51 +0800
tags: Alfred Safari 模糊搜索
excerpt: 
---

[[Alfred Workflow]]


[al3rez/sh](https://github.com/al3rez/sh): Super fast [[Alfred Workflow]] to search through [[Safari]] history 🕵️‍

```shell
cp ~/Library/Safari/History.db /tmp/h && sqlite3 /tmp/h "select json_object('items', json_group_array(json_object('quicklookurl', url, 'uid', title, 'title', title, 'arg', url))) as json_result from (select v.title, i.url, i.visit_count_score from history_items i join history_visits v on (v.history_item = i.id and v.title LIKE '%{query}%') group by v.title)"

```





## 竞品


[[alfred-fzf-safari-history]]

## 兄弟产品



[[ch - Chrome History Fuzzy Search]]



## Misc


