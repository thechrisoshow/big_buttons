tell application "Skype"
  if (send command "GET MUTE" script name "MuteToggler") is equal to "MUTE ON" then
    send command "SET MUTE OFF" script name "MuteToggler"
  else
    send command "SET MUTE ON" script name "MuteToggler"
  end if
end tell