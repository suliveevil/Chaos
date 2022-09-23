---
title: "Obsidian Dataview"
categories:
date: 2022-09-24 03:18:10 +0800
tags: Obsidian 数据库 SQL
excerpt:
---

[[Obsidian 插件]]


[blacksmithgu/obsidian-dataview](https://github.com/blacksmithgu/obsidian-dataview): A high-performance data index and query language over Markdown files, for https://obsidian.md/.

[Dataview Documentation](https://blacksmithgu.github.io/obsidian-dataview/)

[Dataview plugin snippet showcase - Obsidian Forum](https://forum.obsidian.md/t/dataview-plugin-snippet-showcase/13673)

[Basic Dataview Query Builder](https://s-blu.github.io/basic-dataview-query-builder/)

## 用例


Show all dangling links

```dataviewjs
//how many links a non existing file should have at minimum
const count = 1;

//specify the full path here.
const ignoredExisting = ["your/ignored/notes/here.md"];

//keep these in lower case.
const ignoredNonExisiting = ["your non exisiting notes", "here is note that does not exist"];

let d = {};
function process(k, v) {
  Object.keys(v).forEach(function (x) {
    if(!ignoredNonExisiting.includes(x.toLowerCase())) {
        x = dv.fileLink(x);
        if (d[x]==undefined) { d[x] = []; }
        if(!ignoredExisting.includes(k)) {
            d[x].push(dv.fileLink(k));
        }
    }
  });
}

Object.entries(dv.app.metadataCache.unresolvedLinks)
    .filter(([k,v]) => Object.keys(v).length)
    .forEach(([k,v]) => process(k, v));
    
dv.table(["Non existing notes", "Linked from"],
         Object.entries(d)
         .filter(([k, v]) => v.length >= count)
	     .sort((a, b) => b[1].length - a[1].length)
         .map(([k,v]) => [k, v.join(" • ")]));
```

```dataviewjs
//how many links a non existing file should have at minimum
const count = 1;

//specify the full path here.
const filesPath = []
filesPath.push(
    ...dv.pagePaths("#dailynotes"),
    ...dv.pagePaths("#html"),
    ...dv.pagePaths("#helpers")
)

let ignoredExisting = []
for (let i = 0; i < filesPath.length; i++) {
    ignoredExisting+= '"' + filesPath[i] + '"' + ','
}

//keep these in lower case.
const ignoredNonExisiting = ["your non exisiting notes", "here is note that does not exist"];

let d = {};
function process(k, v) {
  Object.keys(v).forEach(function (x) {
    if(!ignoredNonExisiting.includes(x.toLowerCase())) {
        x = dv.fileLink(x);
        if (d[x]==undefined) { d[x] = []; }
        if(!ignoredExisting.includes(k)) {
            d[x].push(dv.fileLink(k));
        }
    }
  });
}

Object.entries(dv.app.metadataCache.unresolvedLinks)
    .filter(([k,v]) => Object.keys(v).length)
    .forEach(([k,v]) => process(k, v));
    
dv.table(["Non existing notes", "Linked from"],
         Object.entries(d)
         .filter(([k, v]) => v.length >= count)
	     .sort((a, b) => b[1].length - a[1].length)
         .map(([k,v]) => [k, v.join(" • ")]));
```














## DQL

Dataview Query Language

AS
ASC
ASCENDING
CALENDAR
DESC
DESCENDING
FLATTEN
FROM
GROUP BY
ID
LIMIT
LIST
SORT
TABLE
TASK
WHERE
WITHOUT

### Expressions


### Literals


### Sources


### Functions




## Dataveiwjs

Dataview [[JavaScript]] [[API]]

[DataviewJS Snippet Showcase - Obsidian Forum](https://forum.obsidian.md/t/dataviewjs-snippet-showcase/17847)

[Export Dataview tables to CSV with DataviewJS - Obsidian Forum](https://forum.obsidian.md/t/export-dataview-tables-to-csv-with-dataviewjs/38031)


## 联动

[[obsidian-charts]]

[mdelobelle/metadatamenu](https://github.com/mdelobelle/metadatamenu): For data quality enthusiasts (and dataview lovers): manage the metadata of your notes.

[[obsidian-custom-js]]


## Misc

[s-blu/obsidian_dataview_example_vault](https://github.com/s-blu/obsidian_dataview_example_vault): A example vault to collect and showcase various dataview queries. Created on behalf of AB1908

[jplattel/obsidian-query-language](https://github.com/jplattel/obsidian-query-language): An Obsidian plugin allowing you to query your notes

[nothingislost/obsidian-query-control](https://github.com/nothingislost/obsidian-query-control): An experimental Obsidian plugin that adds controls to embedded queries

[[obsidian-shellcommands]]

[[数据库]]

[[SQL]]


