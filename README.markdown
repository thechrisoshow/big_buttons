![Big Buttons](http://www.bigbuttonsapp.com/images/logo.png)

Wha happened?
-------------
Big Buttons is an iPhone app that lets you control your Mac with your iPhone.  It does this by calling scripted commands on your personal server.

Find out more about the App here: http://bigbuttonsapp.com

All of the scripted commands are just plain old Applescript.  So if you can write Applescript you can create your own buttons.

I've also included the PSDs of the button icons, so you can see the dimensions and copy the graphics for your own buttons.

Please let me know if you create any truly awesome buttons, and I'll merge the code in here and include them in the next update of Big Buttons.

How do I make my own buttons?
-----------------------------

Here's how you do it:

1. On the server open up your buttons folder
2. Create a new directory
3. In order for a button it needs 3 files: a script file, an icon, and a configuration file.  The configuration file and the script must be named after the directory name. The icon must be named icon.png.
4. The json file can take numerous params:
        title: This is what is shown in the server as the name of the button
        description: Any extra details you may want to impart (like does the button require GUI scripting?)
        Optional:
        application: The name of the application
        action: The action you're performing on the application

5. The icon image must be a square, it doesn't matter how big it is - the larger the image the bigger the resolution, but the slower it will take to get to the phone.  Make sure you name the icon "icon.png"
6. The AppleScript file is just plain old AppleScript. There's a great tutorial here: http://mac.appstorm.net/how-to/applescript/the-ultimate-beginners-guide-to-applescript/
7. After you've created your button, restart the server and your new button will appear in the available buttons list.
  
  
-Chris O'Sullivan

http://www.thechrisoshow.com