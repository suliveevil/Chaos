use AppleScript version "2.4"
use framework "Foundation"
use scripting additions

-- keyboardLayout :: IO () -> {source :: String, localName :: String}
on keyboardLayout()
	set ca to current application
	set source to (ca's NSTextInputContext's currentInputContext())'s ¬
		selectedKeyboardInputSource()
	{source:source as text, localName:¬
		(ca's NSTextInputContext's localizedNameForInputSource:source) as text}
end keyboardLayout

on run
	keyboardLayout()
end run