-- Courtesy of http://www.jacktams.net/2010/04/28/spotify-applescripts-version-0-4-3/

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
click menu item 3 of menu 1 of menu bar item 6 of menu bar 1
		end tell
	end tell
	tell application "System Events"
		set visible of process "Spotify" to false
	end tell
end if