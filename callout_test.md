---
title: "callout_test"
categories: 
date: 2022-11-11 05:38:40 +0800
tags: 
excerpt: 
---






> [!NOTE] 笔记
> 哈哈哈







```dataviewjs
let files = dv.pages(`"000 图书-中图法/z"`)
let keyword = 'note'
for(let i of files) {
	let content = await app.vault.readRaw(i.file.path)
	content = content.split('\n')
	let index = content.map((p,i)=>{if(p.startsWith(`>[!${keyword}]`))return i})
	let callout = index.map(p=>{
		let t = ''
		while(content[p]?.startsWith('>')) t+=content[p++]+'\n'
		return t
	})
	dv.paragraph('### '+i.file.link)
	dv.paragraph(callout.map(p=>p+='\n\n'))
}
```

## Misc


[[test]]




