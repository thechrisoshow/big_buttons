tell application "Skype"
 set calls to send command "SEARCH ACTIVECALLS" script name "Call Control"
 set callID to last word of calls
 set status to send command "GET CALL " & callID & " STATUS" script name "Call Control"
 if last word of status is "RINGING" then
   send command "ALTER CALL " & callID & " ANSWER" script name "Call Control"
 end if
end tell