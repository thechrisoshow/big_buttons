set front_app to (path to frontmost application as Unicode text)
tell application front_app
    tell application "System Events"
      key code 122
    end tell
end tell