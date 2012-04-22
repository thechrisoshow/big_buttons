   -- script to raise the volume

   -- get the current setting
   set curVolume to output volume of (get volume settings)
   -- work out the new setting
   if curVolume > 10 then
       set newVolume to curVolume - 10
   else
       -- can't less than 0
       set newVolume to 0
   end if
   -- and apply it
   set volume output volume newVolume