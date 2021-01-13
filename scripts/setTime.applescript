set ret to display dialog "Enter desired timestamp:" default answer "0"
set timestamp to text returned of the ret
set timeList to reverse of every word of the timestamp
set units to 1
set t to 0
repeat with i in timeList
	set newTime to i * units
	set t to t + newTime
	set units to 60 * units
end repeat

tell application "Music"
	set player position to t
end tell