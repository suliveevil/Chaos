# input-monitor



```pseudo code
		get pre-cursor char/word
		

		step 1
		send the typed key to the screen



		1:send the typed key to the screen
		

		step 2
		select and copy pre-cursor word



		2:select and copy pre-cursor word
		Type the ⌥⇧Left Arrow Keystroke
		

		Type the ⌥⇧Left Arrow Keystroke
		

		Copy to Named Clipboard “pre-cursor-char”
		

		

		step 3
		quit selection mode



		3:quit selection mode
		

		step 4
		check language



		4:check language & input-method & space
		check input method
		Set Variable “CurrentInputMethod” to Text
		

		Execute Shell Script
		defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | egrep -w 'KeyboardLayout Name' |sed -E 's/^.+=\"?([^\"]+)\"?;$/\1/'
Save trimmed results without errors to variable “CurrentInputMethod”.
		Stop macro and notify on failure.
		

		If All Conditions Met
		The variable “CurrentInputMethod” contains “ABC”
		Execute the Following Actions:
		Set Variable “CurrentInputMethod” to Text
		ABC


		Otherwise, Execute the Following Actions:
		Set Variable “CurrentInputMethod” to Text
		中文输入法


		

		

		check language whether is Chinese
		Set Variable “CheckLanguage” to Text
		

		Search Named Clipboard “pre-cursor-char” Using Regular Expression (ignoring case)
		Search for “[\u2e80-\u9fff]+”
		And capture to:
	0	CheckLanguage
		

		If All Conditions Met
		The variable “CheckLanguage” is not empty
		Execute the Following Actions:
		Set Variable “CheckLanguage” to Text
		中文


		Otherwise, Execute the Following Actions:
		Set Variable “CheckLanguage” to Text
		English


		

		

		check space
		Search and Replace Named Clipboard “pre-cursor-char” Using Regular Expression (all, case sensitive)
		Search for “[^\s]”
		Replace with “”
		Notify on failure.
		

		Set Variable “CheckSpaceCount” To Calculation “0”
		0
Stop macro and notify on failure.
		

		Filter Named Clipboard “pre-cursor-char” with Character Count
		Store result to Variable “CheckSpaceCount”.
		

		While All Conditions Met
		The variable “CheckSpaceCount” is = 2
		Execute the Following Actions:
		Set Variable “SwitchInputMethod” To Calculation “1”
		1
Stop macro and notify on failure.
		

		

		While All Conditions Met
		The variable “CheckSpaceCount” is != 2
		Execute the Following Actions:
		Set Variable “SwitchInputMethod” To Calculation “0”
		0
Stop macro and notify on failure.
		

		

		

		

		step 5
		input method



		5:input method switcher
		Comment “中文输入法&中文状态下-不切换输入法”
		

		While All Conditions Met
		The variable “CurrentInputMethod” contains “中文”
		The variable “CheckLanguage” contains “中文”
		The variable “SwitchInputMethod” is = 0
		Do nothing.
		

		Comment “中文输入法&英文状态下-切换输入法”
		

		While All Conditions Met
		The variable “CurrentInputMethod” contains “中文”
		The variable “CheckLanguage” contains “English”
		The variable “SwitchInputMethod” is = 0
		Execute the Following Actions:
		Set Keyboard Layout to “ABC”
		Notify on failure.
		

		

		Comment “英文输入法&英文状态下-不切换输入法”
		

		While All Conditions Met
		The variable “CurrentInputMethod” contains “ABC”
		The variable “CheckLanguage” contains “English”
		The variable “SwitchInputMethod” is = 0
		Do nothing.
		

		Comment “英文输入法&中文状态下-切换输入法”
		

		While All Conditions Met
		The variable “CurrentInputMethod” contains “ABC”
		The variable “CheckLanguage” contains “中文”
		The variable “SwitchInputMethod” is = 0
		Execute the Following Actions:
		Set Keyboard Layout to “简体拼音”
		Notify on failure.
		

		

		Comment “中文输入法&中文状态下-切换输入法”
		

		While All Conditions Met
		The variable “CurrentInputMethod” contains “中文”
		The variable “CheckLanguage” contains “中文”
		The variable “SwitchInputMethod” is = 1
		Execute the Following Actions:
		Set Keyboard Layout to “ABC”
		Notify on failure.
		

		

		Comment “中文输入法&英文状态下-切换输入法”
		

		While All Conditions Met
		The variable “CurrentInputMethod” contains “中文”
		The variable “CheckLanguage” contains “English”
		The variable “SwitchInputMethod” is = 1
		Execute the Following Actions:
		Set Keyboard Layout to “ABC”
		Notify on failure.
		

		

		Comment “英文输入法&中文状态下-切换输入法”
		

		While All Conditions Met
		The variable “CurrentInputMethod” contains “ABC”
		The variable “CheckLanguage” contains “中文”
		The variable “SwitchInputMethod” is = 1
		Execute the Following Actions:
		Set Keyboard Layout to “简体拼音”
		Notify on failure.
		

		

		Comment “英文输入法&英文状态下-切换输入法”
		

		While All Conditions Met
		The variable “CurrentInputMethod” contains “ABC”
		The variable “CheckLanguage” contains “English”
		The variable “SwitchInputMethod” is = 1
		Execute the Following Actions:
		Set Keyboard Layout to “简体拼音”
		Notify on failure.
		

		

		


```

![[Pasted image 20221126092237.png]]