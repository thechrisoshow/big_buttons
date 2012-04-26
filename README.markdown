![Big Buttons](http://www.bigbuttonsapp.com/images/small_logo.png)

Big Buttons is an iPhone app that lets you control your Mac with your iPhone.  It does this by calling scripts on your Mac that YOU can design.

All of the scripted commands are just plain old Applescript, so it's easy to make your own.

I've also included the PSDs of the button icons, so you can copy how the buttons are created and keep the same kind of style (if you want).

Please let me know if you create any truly awesome buttons, and I'll merge the code in here and include them in the next update of Big Buttons.

Find out more about the App here: http://bigbuttonsapp.com

How do I make my own buttons?
-----------------------------

1. On the server open up your buttons folder and create a new directory for your new button
2. In order for a button it needs 3 files: a script file, an icon, and a configuration file.  The configuration file must be called **config.json**, the script file must be named after the directory name with an **.applescript** extension and the icon must be named **icon.png**.
3. The json file can take numerous params:

        title:       This is what is shown in the server as the name of the button
  Optional:
  
        description: Any extra details you may want to impart (like does the button require GUI scripting?)
        application: The name of the application
        action:      The action you're performing on the application
        key_code:    If you only want to control a single keypress then you don't need to create an AppleScript for this. 
                     Instead input the integer value of the key code you want.  
                     You can find a list of key codes at 
                     /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/Headers/Events.h 

4. The icon image must be a square, it doesn't matter how big it is - the larger the image the bigger the resolution, but the slower it will take to get to the phone.  Make sure you name the icon "icon.png"
5. The AppleScript file is just plain old AppleScript. There's a great tutorial here: http://mac.appstorm.net/how-to/applescript/the-ultimate-beginners-guide-to-applescript/
6. After you've created your button, restart the server and your new button will appear in the available buttons list.
  
  
Chris O'Sullivan :bowtie:

http://www.thechrisoshow.com