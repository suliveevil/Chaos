---
title: "Sidecar"
categories: 
date: 2022-09-27 00:07:51 +0800
tags: iPadOS macOS
excerpt: 
---
中文名：随航

iPadOS+macOS

启动随航

```applescript
osascript -e 'tell application "System Preferences"
	quit
end tell

tell application "System Preferences"
	activate
end tell

tell application "System Events"
	tell process "System Preferences"
		tell menu bar 1
			tell menu bar item 5
				tell menu 1
					click (every menu item whose name contains "设备名称")
				end tell
			end tell
		end tell
	end tell
end tell

tell application "System Preferences"
	quit
end tell'
```

