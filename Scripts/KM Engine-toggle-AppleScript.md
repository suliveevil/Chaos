---
title: "KM Engine-toggle-AppleScript"
author: 
categories: 
date: 2022-10-17 00:54:33 +0800
tags: 
excerpt: 
---




```applescript
tell application id "com.stairways.keyboardmaestro.engine"
	if running then
		quit
		set msgStr to "STOPPED."
	else
		launch
		set msgStr to "STARTED."
	end if
end tell

set msgTitleStr to "Toggle KM Engine On/Off"
set msgStr to "KM Engine has been " & msgStr
display notification msgStr with title msgTitleStr sound name "Tink.aiff"
```



