set front_app to (path to frontmost application as Unicode text)
tell application front_app
    tell application "System Events"
      key code 36
    end tell
end tell