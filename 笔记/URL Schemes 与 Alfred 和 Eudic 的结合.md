---
title: "URL Schemes 与 Alfred 和 Eudic 结合"
categories: 
date: 2022-09-24 00:12:15 +0800
tags: Alfred 词典
excerpt: 
---

看到一篇文章：[在 macOS 中制作自己的 URL Schemes](https://sspai.com/post/44425) 其中关于欧路词典的代码拿来只改了一下 query 的形式就能在 Alfred 里使用了。

## Alfred + Eudic

具体步骤如下：

 新建 Alfred workflow，**hotkey** 不设置，**keyword** 设置为eu，**运行 script**：

```bash
#!/bin/bash
query=$1
eudic_version=$(/usr/libexec/PlistBuddy -c "Print :CFBundleIdentifier" /Applications/Eudb_en.app/Contents/Info.plist)
echo $query
if [ "$eudic_version" == "com.eusoft.eudic" ];then
    open -b 'com.eusoft.eudic'
osascript <<EOD
    tell application id "com.eusoft.eudic"
        activate
        show dic with word "{query}"
    end tell
EOD
elif [ "$eudic_version" == "com.eusoft.freeeudic" ];then
    open -b 'com.eusoft.freeeudic'
osascript <<EOD
    tell application id "com.eusoft.freeeudic"
        activate
        show dic with word "{query}"
    end tell
EOD
fi
```

更进一步，参照 [在 Alfred 上实现 Launchbar 的 Instant Send](https://sspai.com/post/46088) 设置 Double Shift 触发 Send to Alfred 功能，则只需选中单词后点两下 Shift ➡️ 输入 eu ➡️ 回车即可实现查词。

其他方案：

1. 添加 Eudic 的 PopClip 插件，使用 PopClip 调用 Eudic 查词。
2. 使用 Keyboard Maestro 的 Trigger 触发，执行上面的脚本。不过 KM 对 “选中的文本” 这种操作支持的不是很好，毕竟它是键盘大师不是触控板大师。

## Misc

[[macOS小记-AppleScript、BetterTouchTool、Keyboard Maestro]]


