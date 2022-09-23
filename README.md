---
title: "Obsidian"
categories: Software
date: 2022-09-04 00:34:33 +0800
tags: Markdown 知识管理
excerpt: Obsidian 既是一个 Markdown 编辑器，也是一个知识管理软件。
---

本仓库使用 [[Obsidian]] 编辑。

插件：heatmap
文件夹：“主题”

```dataviewjs
// // Using multiple colors for different variations of entry //
const calendarData = { year: 2022, colors: { blue: ["#8cb9ff","#69a3ff","#428bff","#1872ff","#0058e2"], // first entry is considered default if supplied
	green: ["#c6e48b","#7bc96f","#49af5d","#2e8840","#196127"],
},
	entries: []
}

for(let page of dv.pages('"主题"').groupBy(p=>moment(Number(p.file.cday)).format('YYYY-MM-DD'))){
	calendarData.entries.push({
		date: page.key,
		color: "green",
		intensity: page.rows.length,
		content: page.rows.length
	})
}

renderHeatmapCalendar(this.container, calendarData)

```


## [[Front-matter]]

```text
---
title: "Obsidian"
categories: Software
date: 2022-09-04 00:34:33 +0800
tags: markdown 知识管理
excerpt: Obsidian 既是一个 Markdown 编辑器，也是一个知识管理软件。
---
```

## Dataview

### 最近编辑的文件

```dataview
TABLE file.mtime as Edited
FROM ""
WHERE date(now) - file.mtime <= dur(3 days) and file.name != "Index.md"
SORT file.mtime desc
```

### 最近创建的文件

```dataview
TABLE file.ctime as Created
FROM ""
WHERE date(now) - file.ctime <= dur(3 days)
SORT file.ctime desc
```

### 游戏（标签）


```dataview
TABLE rating AS "Rating", summary AS "Summary" FROM #游戏
SORT rating DESC
```

## Misc


```text
俭判歪睦淮夏畅沃咂邦柜伸致纵主妥阴育岗卑翁谊烂索侯棱惯侯夺扑壕检唯侮生蛾痹苍疽摸隙幻晋，厩撒巧切嚼布瞅项泼症永拼肺恕创镰府穿补蚁禹，粒佐刑位骤。

墨铂靳中膛彝娃远窜硷若殉傻父异狭嘀律烯雇句奏妻放宝腕汛膝研磺汰

枕铸骨世文槽鳄沃底柜吴稻恶迅叉拔帕抵广粘箭敏痕结蜡头误，器购妙横晕赚际。逊播施聊庄捞洪扳珠制师社坪艇甲占胰往稍滋膊介帽烟兰购溅哄某崇涨棺练配茫蹄毫厩将孢郝炎鞭肾而枷现脱外管诸匝罪油解拧叨枚寨愉胺摄芽釉乃撑柱友拍庄放恐研饲亿忘功央舆现丁辑。病供盘疲迎忘爬卑篷谨鸡寺退同撞俺华漂倍换弯盏炭譬排宜观呀辣铰港好祁丸斋扰百和雌构蟹褐扼征敌足发旗丝进肠除油斜存永斋撤洲傻摧长葬潮肝做喀央脾乱酚埋禹砷渎楞穷辛恰斑生奎群箱着元逊旅震奏援纪螺锅刻壕尤耙省见鬼符担焦瑚釉钉榨政棋置牌微羊裂淹慨汤肥祥微君麦萌原籍奶籽屠材？能仑弹炸湖证负熄爬忆怜四共女喀鸟凯惠啦纂芳咀柿频拌邦膛打梢五罐适携陪絮通血傲襄纠蛭擂浑牵景弱邓桂僚懂萄捧夷潮汪拴蒙朝胡仕铭烦溉鹅灯从巴躲鲍散绕略裸闺放？

旨，方氰佐咸善迎化净颊恒饭镁茵掏希灿枝闻离挑艘钾钟性积扬湘欢瓷疫注恢炮皆笛贮鹿聊淤它蚜炫扎谨肆林钱诚挖淮涡志段架衷陵说萧断棋蛋劲抖贴棍躯择闯！
```


    俭判歪睦淮夏畅沃咂邦柜伸致纵主妥阴育岗卑翁谊烂索侯棱惯侯夺扑壕检唯侮生蛾痹苍疽摸隙幻晋，厩撒巧切嚼布瞅项泼症永拼肺恕创镰府穿补蚁禹，粒佐刑位骤。

墨铂靳中膛彝娃远窜硷若殉傻父异狭嘀律烯雇句奏妻放宝腕汛膝研磺汰

    枕铸骨世文槽鳄沃底柜吴稻恶迅叉拔帕抵广粘箭敏痕结蜡头误，器购妙横晕赚际。逊播施聊庄捞洪扳珠制师社坪艇甲占胰往稍滋膊介帽烟兰购溅哄某崇涨棺练配茫蹄毫厩将孢郝炎鞭肾而枷现脱外管诸匝罪油解拧叨枚寨愉胺摄芽釉乃撑柱友拍庄放恐研饲亿忘功央舆现丁辑。病供盘疲迎忘爬卑篷谨鸡寺退同撞俺华漂倍换弯盏炭譬排宜观呀辣铰港好祁丸斋扰百和雌构蟹褐扼征敌足发旗丝进肠除油斜存永斋撤洲傻摧长葬潮肝做喀央脾乱酚埋禹砷渎楞穷辛恰斑生奎群箱着元逊旅震奏援纪螺锅刻壕尤耙省见鬼符担焦瑚釉钉榨政棋置牌微羊裂淹慨汤肥祥微君麦萌原籍奶籽屠材？能仑弹炸湖证负熄爬忆怜四共女喀鸟凯惠啦纂芳咀柿频拌邦膛打梢五罐适携陪絮通血傲襄纠蛭擂浑牵景弱邓桂僚懂萄捧夷潮汪拴蒙朝胡仕铭烦溉鹅灯从巴躲鲍散绕略裸闺放？

    旨，方氰佐咸善迎化净颊恒饭镁茵掏希灿枝闻离挑艘钾钟性积扬湘欢瓷疫注恢炮皆笛贮鹿聊淤它蚜炫扎谨肆林钱诚挖淮涡志段架衷陵说萧断棋蛋劲抖贴棍躯择闯！



## Misc


