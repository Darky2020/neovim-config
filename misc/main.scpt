-- This script lets us create a MacOS application that launches
-- iTerm, opens a new tab with neovim and opens a specified file
-- it handles cases with iTerm already running, not running or being closed
-- but still loaded. It can also manage multiple files at once.
-- Over all it is a handy tool to have

on run -- app double-clicked or script run from editor
	open (choose file with multiple selections allowed)
end run

on open theItems -- droplet
	-- Form a string with all the files in quotation marks
	set pathList to {}
	repeat with itemPath in theItems
		set end of pathList to quoted form of POSIX path of itemPath
	end repeat

	set AppleScript's text item delimiters to space
	set pathString to pathList as text
	set AppleScript's text item delimiters to ""

	doStuff(pathString)
end open

on doStuff(pathString) -- main handler to do stuff
	if application "iTerm" is running then
		tell application "iTerm"
			activate
			if (exists current window) then
				tell current window
					set new_tab to create tab with default profile
				end tell
				set cSession to current session of current window
				tell new_tab
					tell cSession
						delay 0.1
						write text "nvim " & pathString
					end tell
				end tell
			else
				create window with default profile
				tell current session of current window
					delay 0.1
					write text "nvim " & pathString
				end tell
			end if
		end tell
	else
		tell application "iTerm"
			activate
			tell current session of current window
				delay 0.1
				write text "nvim " & pathString
			end tell
		end tell
	end if

end doStuff
