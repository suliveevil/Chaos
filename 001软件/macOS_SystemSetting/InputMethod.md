# Input Method 输入法

multi line（[[AppleScript]]）：

```applescript
do shell script "defaults read ~/Library/Preferences/com.apple.HIToolbox.plist \\
 AppleSelectedInputSources | \\
 egrep -w 'KeyboardLayout Name' | sed -E 's/^.+ = \"?([^\"]+)\"?;$/\\1/'"
```

one line：

```shell
defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | egrep -w 'KeyboardLayout Name' |sed -E 's/^.+ = \"?([^\"]+)\"?;$/\1/'
```

```shell
defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | command rg -e '"KeyboardLayout Name" = "([^"]*)"' --replace '$1' --only-matching --color never
```

## Enabled Input Method

```shell
defaults read /Library/Preferences/com.apple.HIToolbox.plist  AppleEnabledInputSources
```

## 双拼

```shell
全拼：
    defaults write com.apple.inputmethod.CoreChineseEngineFramework shuangpinLayout 0

智能 ABC：
    defaults write com.apple.inputmethod.CoreChineseEngineFramework shuangpinLayout 1

微软双拼：
    defaults write com.apple.inputmethod.CoreChineseEngineFramework shuangpinLayout 2

紫光双拼：
    defaults write com.apple.inputmethod.CoreChineseEngineFramework shuangpinLayout 3

小鹤双拼：
    defaults write com.apple.inputmethod.CoreChineseEngineFramework shuangpinLayout 4

自然码：
    defaults write com.apple.inputmethod.CoreChineseEngineFramework shuangpinLayout 5

拼音加加：
    defaults write com.apple.inputmethod.CoreChineseEngineFramework shuangpinLayout 6

搜狗双拼：
    defaults write com.apple.inputmethod.CoreChineseEngineFramework shuangpinLayout 7
```

## 日文半角假名

```shell
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add"
<dict>
<key>Bundle ID</key>
<string>com.apple.inputmethod.Kotoeri.RomajiTyping</string>
<key>Input Mode</key>
<string>com.apple.inputmethod.Japanese.HalfWidthKana</string>
<key>InputSourceKind</key>
<string>Input Mode</string>
</dict>
"
```

## 参考资料

https://stackoverflow.com/questions/21597804/determine-os-x-keyboard-layout-input-source-in-the-terminal-a-script
