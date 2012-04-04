tell application "Adobe Photoshop CS5"
	activate
	tell the current document
		set NewRes to resolution / (50 / 100)
		set newWidth to width * 2
		set newHeight to height * 2
		resize image width newWidth height newHeight resample method bicubic
	end tell
end tell