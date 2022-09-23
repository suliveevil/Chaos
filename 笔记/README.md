---
title: ""
categories:
date: 2022-11-21 03:54:21 +0800
tags:
excerpt:
---



```dataviewjs
// // Using multiple colors for different variations of entry //
const calendarData = { year: 2022, colors: { blue: ["#8cb9ff","#69a3ff","#428bff","#1872ff","#0058e2"], // first entry is considered default if supplied
	green: ["#c6e48b","#7bc96f","#49af5d","#2e8840","#196127"],
},
	entries: []
}

for(let page of dv.pages('"笔记"').groupBy(p=>moment(Number(p.file.cday)).format('YYYY-MM-DD'))){
	calendarData.entries.push({
		date: page.key,
		color: "green",
		intensity: page.rows.length,
		content: page.rows.length
	})
}

renderHeatmapCalendar(this.container, calendarData)

```






