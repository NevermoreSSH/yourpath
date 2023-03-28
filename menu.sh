#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# RAM Info
tram=$(free -m | awk 'NR==2 {print $2}')
uram=$(free -m | awk 'NR==2 {print $3}')
# Total BANDWIDTH
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $9" "substr ($10, 1, 1)}')"
echo -e "$y                  MAIN MENU $wh"
echo -e "$y            Script Mod By NevermoreSSH $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$y  OS      :  "$(hostnamectl | grep "Operating System" | cut -d ' ' -f5-)
echo -e "$y  KERNEL  :  $(uname -r)"
echo -e "$y  UPTIME  :  $uptime"
echo -e "$y  RAM     :  $uram MB / $tram MB"
echo -e "$y  DOMAIN  :  $domain"
echo -e "$y  IPVPS   :  $IPVPS"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yy 1$y.  XRAY VMESS MENU$wh"
echo -e "$yy 2$y.  XRAY VLESS MENU$wh"
echo -e "$yy 3$y.  XRAY TROJAN MENU$wh"
echo -e "$yy 4$y.  XRAY TROJAN TCP XTLS$wh"
echo -e "$yy 5$y.  XRAY TROJAN TCP$wh"
echo -e "$yy 6$y.  INSTALL ADS BLOCK$wh"
echo -e "$yy 7$y.  ADS BLOCK MENU$wh"
echo -e "$yy 8$y.  DNS CHANGER$wh"
echo -e "$yy 9$y.  NETFLIX CHECKER$wh"
echo -e "$yy 10$y. INSTALL TCP BBRPLUS$wh"
echo -e "$yy 11$y. LIMIT BANDWITH SPEED$wh"
echo -e "$yy 12$y. CHANGE DOMAIN$wh"
echo -e "$yy 13$y. RENEW CERT XRAYS$wh"
echo -e "$yy 14$y. CHECK VPN STATUS$wh"
echo -e "$yy 15$y. CHECK VPN PORT$wh"
echo -e "$yy 16$y. RESTART VPN SERVICES$wh"
echo -e "$yy 17$y. SPEEDTEST$wh"
echo -e "$yy 18$y. CHECK CPU & RAM$wh"
echo -e "$yy 19$y. CHECK BANDWIDTH$wh"
echo -e "$yy 20$y. BACKUP$wh"
echo -e "$yy 21$y. RESTORE$wh"
echo -e "$yy 22$y. REBOOT$wh"
echo -e "$yy 23$y. EXIT$wh"
echo -e "$y-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 22 ] : " menu
case $menu in
1)
clear
menu-ws
;;
2)
clear
menu-vless
;;
3)
clear
menu-tr
;;
4)
clear
menu-xrt
;;
5)
clear
menu-xtr
;;
6)
clear
ins-helium
;;
7)
clear
helium
;;
8)
clear
dns
;;
9)
clear
nf
;;
10)
clear
bbr
;;
11)
clear
limit
;;
12)
clear
add-host
;;
13)
clear
certxray
;;
14)
clear
status
;;
15)
clear
info
;;
16)
clear
restart
;;
17)
clear
speedtest
;;
18)
clear
htop
;;
23)
clear
exit
;;
20)
clear
backup
;;
21)
clear
restore
;;
22)
clear
reboot
;;
19)
clear
vnstat
;;
*)
clear
menu
;;
esac
