set _muted to (get (output muted of (get volume settings)))
  if _muted is false then
    set volume with output muted
  else
    set volume without output muted
end if