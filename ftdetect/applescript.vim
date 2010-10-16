" AppleScript shebang line
if getline(1) =~ '^#!.*/osascript'
    setfiletype applescript
endif
