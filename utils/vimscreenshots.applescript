set fontList to {{"LetterGothicMono\\ Light:h18", "lettergothic18"}, {"LetterGothicMono\\ Light:h14", "lettergothic14"}, {"Andale\\ Mono:h14", "andalemono14"}, {"Monaco:h14", "monaco14"}, {"DejaVu\\ Sans\\ Mono:h18", "dejavusans18"}, {"DejaVu\\ Sans\\ Mono:h14", "dejavusans14"}, {"SkyHook\\ Mono:h14", "skyhookmono14"}, {"Terminus\\ Medium:h20", "terminus20"}, {"Terminus\\ Medium:h12", "terminus12"}}

set fileSuffixes to {"-light", "-dark"}

tell application "MacVim"
	--set thisSize to bounds of first window
end tell

set TestFolder to choose folder
tell application "System Events"
	set TestFileNames to the name of every item of TestFolder whose name does not start with "."
end tell

tell application "MacVim"
	activate
	delay 1
	my do_menu("MacVim", "File", "Close Window")
	delay 1
	my do_menu("MacVim", "File", "New Window")
	delay 1
	tell application "System Events"
		keystroke ":set lines=30 | set columns=87 | set guifont=LetterGothicMono\\ Light:h18 | set guioptions-=Tm | set showtabline=0 | set transparency=0" & return
	end tell
	delay 1
	tell application "Finder"
		set screenResolution to bounds of window of desktop
		set screenWidth to (item 3 of screenResolution)
		set screenHeight to (item 4 of screenResolution)
	end tell
	
	repeat with t from 1 to number of items in fontList
		set fontCommand to item 1 of item t of fontList
		set fontDirectory to item 2 of item t of fontList
		set tmpDir to ((POSIX path of (path to desktop)) as string) & fontDirectory
		try
			do shell script "mkdir " & tmpDir
		end try
		try
			do shell script "rm " & tmpDir & "/index.html"
		end try
		do shell script "echo \"<h1>" & fontDirectory & "</h1>\" >> " & tmpDir & "/index.html"
		repeat with i from 1 to number of items in TestFileNames
			set ThisFileName to item i of TestFileNames
			set ThisBaseFileName to (text 1 thru ((offset of "." in ThisFileName) - 1) of ThisFileName) as string
			do shell script "echo \"<p><a href='#" & ThisBaseFileName & "'>" & ThisBaseFileName & "</a>\" >> " & tmpDir & "/index.html"
		end repeat
		tell application "System Events" to keystroke ":set guifont=" & fontCommand & return
		delay 2
		tell application "System Events"
			set proc to (name of first process whose frontmost is true)
			tell window 1 of process proc
				-- get window initial position
				copy position to {ini_x, ini_y}
				copy size to {windowWidth, windowHeight}
				set chromeHeight to 24
				-- center window because the sips crop command automatically centers the cropped area in the image
				set windowPosX to ((screenWidth - windowWidth) / 2) as integer
				set windowPosY to (((screenHeight - windowHeight) / 2) - chromeHeight / 2) as integer
				set position to {windowPosX, windowPosY}
			end tell
		end tell
		delay 0.5
		repeat with i from 1 to number of items in TestFileNames
			set ThisFileName to item i of TestFileNames
			set ThisBaseFileName to (text 1 thru ((offset of "." in ThisFileName) - 1) of ThisFileName) as string
			open POSIX path of TestFolder & ThisFileName
			delay 0.5
			set tmpBaseFileName to "screen-" & ThisBaseFileName
			set tmpPath to (tmpDir & "/" & tmpBaseFileName)
			--set tmpPath to quoted form of tmpPath
			do shell script "echo \"<h2 id='" & ThisBaseFileName & "'>" & ThisBaseFileName & "</h2>\" >> " & tmpDir & "/index.html"
			repeat with fileSuffix in fileSuffixes
				set tmpFileName to tmpPath & fileSuffix & ".png"
				set tmpThumbName to tmpPath & fileSuffix & "-th.png"
				set captureCommand to "screencapture" & space & "-x" & space & tmpFileName
				set convertBaseCommand to "/usr/local/bin/convert " & tmpFileName & " -crop " & windowWidth & "x" & windowHeight & "+" & windowPosX & "+" & windowPosY
				-- +dither turns *off* dithering
				set thumbCommand to convertBaseCommand & " -thumbnail 20% -unsharp 0x.5 +dither -depth 8 -colors 256 -strip " & tmpThumbName
				set cropCommand to convertBaseCommand & " +dither -depth 8 -colors 256 -strip " & tmpFileName
				do shell script captureCommand
				delay 0.5
				do shell script thumbCommand
				do shell script cropCommand
				do shell script "echo \"<p><img src='" & tmpBaseFileName & fileSuffix & ".png'>\" >> " & tmpDir & "/index.html"
				tell application "System Events" to keystroke ":Togbg" & return
				delay 0.5
			end repeat
		end repeat
	end repeat
	
end tell

on do_menu(app_name, menu_name, menu_item)
	try
		-- bring the target application to the front
		tell application app_name
			activate
		end tell
		tell application "System Events"
			tell process app_name
				tell menu bar 1
					tell menu bar item menu_name
						tell menu menu_name
							click menu item menu_item
						end tell
					end tell
				end tell
			end tell
		end tell
		return true
	on error error_message
		return false
	end try
end do_menu