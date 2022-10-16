#! /bin/bash

#  A well-modified System  Report

echo "Welcome $USER"

while [[ "$REPLY" != 0 ]]
do
	Options_Available () {
	echo "
	0. Exit menu
	1. Disk Space Usage
	2. File Space Usage
	3. Amount of Free and Used Memory
	4. System Uptime
	"
	}

	Options_Available

	read -p "Choose a number between 0 to 4: "

	if [[ "$REPLY" =~ ^[1-4]$ ]]
	then
		if [[ "$REPLY" == 1 ]]
		then
			echo "This is your space usage"
			echo "$(df -h)"

		elif [[ "$REPLY" == 2 ]]
		then
			echo "This is your file space usage"
			echo "$(du -h)"

		elif [[ "$REPLY" == 3 ]]
		then
			echo "This is the amount of free and used memory"
			echo "$(free -h)"

		elif [[ "$REPLY" == 4 ]]
		then
			echo "This is your system uptime"
			echo "$(uptime)"
		else
			echo "Sorry,you didnt choose any number in the range of 0-4. Try again!"
			continue
		fi
	else
		echo "Now exiting the program. Thank you for using me!"

	fi
done

