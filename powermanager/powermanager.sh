#!/bin/bash

function powermenu {
	options="Cancel\nShutdown\nRestart\nSleep\nLock\nLogout"
	selected=$(echo -e $options | dmenu -fn "JetBrains Mono Nerd Font:size=11.5:autohint=true" -nb "#1a212e" -nf "#dddddd" -sb "#1a212e" -sf "#dbb671" )
	if [[ $selected = "Shutdown" ]];then
		poweroff
	elif [[ $selected = "Restart" ]];then
		reboot
	elif [[ $selected = "Sleep" ]];then
		systemctl suspend
	elif [[ $selected = "Lock" ]];then
		i3lock
	elif [[ $selected = "Logout" ]];then
		pkill -u $(users)
	elif [[ $selected = "Cancel" ]];then
		return
	else
		return
	fi
}

powermenu
