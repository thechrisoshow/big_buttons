-- Courtesy of http://www.jacktams.net/2010/04/28/spotify-applescripts-version-0-4-3/

-- MAKE SURE SUPPORT FOR ASSISTIVE DEVICES IS ACTIVE
tell application "System Events"
 if UI elements enabled is false then
	 tell application "System Preferences"
	 	activate
		 set current pane to pane id "com.apple.preference.universalaccess"
		 display dialog "This script requires access for assistive evices be enabled." & return & return & "To continue, click the OK button and enter an administrative password in the forthcoming security dialog." with icon 1
	 end tell
	 set UI elements enabled to true
 if UI elements enabled is false then return "user cancelled"
 	delay 1
 end if
end tell

tell application "System Events"
	set MyList to (name of every process)
end tell
 
tell application "System Events" to set appList to ¬
	name of application processes whose frontmost is true
 
set activeApp to item 1 of appList
if (MyList contains "Spotify") is true then
	tell application "Spotify" to activate
	tell application "System Events"
		tell process "Spotify"
click menu item 1 of menu 1 of menu bar item 6 of menu bar 1
		end tell
	end tell
	tell application "System Events"
		set visible of process "Spotify" to false
	end tell
end if