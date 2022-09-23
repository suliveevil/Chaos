---
title: "SwiftPlantUML"
categories: 
date: 2022-09-27 10:18:46 +0800
tags: macOS Swift
excerpt: 
---





[MarcoEidinger/SwiftPlantUML](https://github.com/MarcoEidinger/SwiftPlantUML): A command-line tool and Swift Package for generating class diagrams powered by [[PlantUML]]


```shell
# 安装
brew install swiftplantuml
# 使用（Xcode-beta）
xcode-select -p
sudo xcode-select -s /Applications/Xcode-beta.app/Contents/Developer
# 生成 PlantUML 图表
# 文件夹
swiftplantuml ./Menu-Bar-Search/ --output browser --verbose
# 单文件
swiftplantuml macism.swift --output browser --verbose

```


## Misc

[[vscode-plantuml]]







