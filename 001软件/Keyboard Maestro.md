---
title: "Keyboard Maestro"
categories:
date: 2022-09-23 23:30:33 +0800
tags: macOS 键盘 快捷键
excerpt: The Premier Mac Automation Software
---

macOS 必备 App

[KM 官网](https://www.keyboardmaestro.com)

Automate applications or web sites, text or images, simple or complex, on command or scheduled. You can automate virtually anything.




## 功能

[[Keyboard Maestro Triggers]]

[[iCloud]] 同步 KM Macro
[Regular Expressions - Keyboard Maestro Wiki](https://wiki.keyboardmaestro.com/Regular_Expressions)



## Macro


必备 Macro

[[Macro Reporter]]

必备 Macro Group

[[Macro Use Counts]]


### Macros

自动获取当前浏览器网页页面标题和URL并格式化为markdown链接

```bash
[%FrontBrowserTitle%](%FrontBrowserURL%)
```



Variables：光标定位

```html
%|%
```

[Is it possible to set a KM Variable with a Shell Script](https://forum.keyboardmaestro.com/t/is-it-possible-to-set-a-km-variable-with-a-shell-script/4954)

```bash
# From a shell script, you can set a Keyboard Maestro variable by using the osascript tool. Something like:
osascript -e 'on run argv' -e 'tell app "Keyboard Maestro Engine" to setvariable (item 1 of argv) to (item 2 of argv)' -e 'end run' var value

# Replace var and value with the (quoted) variable names and variable values, so maybe:
osascript -e 'on run argv' -e 'tell app "Keyboard Maestro Engine" to setvariable (item 1 of argv) to (item 2 of argv)' -e 'end run' "lastName" "${NAMES[0]}"

# similarly
#!/bin/bash
varName="someTempVar"
varValue="some temp val like 42"
osascript -l JavaScript -e "function run(argv) \
{Application('Keyboard Maestro Engine') \
.setvariable('$varName', {to:'$varValue'})}"

# or perhaps more flexibly:
#!/bin/bash
# Two quoted arguments: KMVarName KMVarValue
setKMVar() {
    osascript -l JavaScript -e "function run(argv) \
    {Application('Keyboard Maestro Engine') \
    .setvariable('$1', {to:'$2'})}"
}
setKMVar "someName" "some string value"

# the equivalent function for shell scripts written in Perl:
sub setKMVar {
	my ($vName, $vValue) = @_;
	`osascript -l JavaScript -e "function run(argv) {Application('Keyboard Maestro Engine') .setvariable('$vName', {to:'$vValue'})}"`
}

# in an Execute Shell Script written in Perl:
setKMVar("countFeatures",$features);

# You can read %countFeatures% in subsequent actions in the macro.
```





## 竞品 app

[[Alfred]]

Keysmith

[[LaunchBar]]

[[Raycast]]

## 联动

[[alfred-maestro]]




## Misc


[[macOS Automation]]

[PACMAX](https://pacmax.org/)
[ThoughtAsylum](https://www.thoughtasylum.com/)
KM 付费教程：[Keyboard Maestro Field Guide](https://learn.macsparky.com/p/km)


[我如何用 Keyboard Maestro 替代 TextExpander - 少数派](https://sspai.com/post/39495)

[macOS下根据当前应用自动切换VimMode](https://www.jianshu.com/p/bdfedfe3d15a)

[Keyboard Maestro 入门指南](https://sspai.com/post/36442)

[让你的Mac成为超高效率的工作工具(Keyboard Maestro 和 Alfred的整合) - 简书](https://www.jianshu.com/p/105c7c017f23)

[懒的前提是要足够高效： Mac 效率工具 Keyboard Maestro 详解 - 少数派](https://sspai.com/post/28721)

[Keyboard Maestro 奇巧淫技之定期运行 - 少数派](https://sspai.com/post/43320)

[Control + Option + Shift + Command：带你玩转 macOS 的修饰键 - 少数派](https://sspai.com/post/39331#%E5%96%84%E7%94%A8 Hyper %E9%94%AE%EF%BC%8C%E9%81%BF%E5%85%8D%E9%94%AE%E4%BD%8D%E5%86%B2%E7%AA%81)




