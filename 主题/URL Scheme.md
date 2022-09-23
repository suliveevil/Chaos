---
title: "URL Scheme"
author: 
categories: 
date: 2022-10-09 11:49:40 +0800
tags: 
excerpt: 
---



一种特殊 [[URL]] 格式

```shell
/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -dump URLSchemeBinding
```


[bhagyas/app-urls: A long list of App URLs for iOS, macOS and Android](https://github.com/bhagyas/app-urls)


[x-callback-url](http://x-callback-url.com)


## 欧路词典查词

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

参考资料

[在 macOS 中制作自己的 URL Schemes](https://sspai.com/post/44425)

## Misc

[[iOS]]

[[iPadOS]]

[[macOS]]

[[AppleScript]]

[[Universal Link]]
