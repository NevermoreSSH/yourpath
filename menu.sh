#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
## Foreground
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*/} / ${corediilik:-1}))"
cpu_usage+=" %"
load_cpu=$(printf '%-3s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
#Domain & IPVPS
domain=$(cat /root/domain)
IPVPS=$(curl -s ipinfo.io/ip )
IPVPS=$(curl -sS ipv4.icanhazip.com)
IPVPS=$(curl -sS ifconfig.me )
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# RAM Info
tram=$(free -m | awk 'NR==2 {print $2}')
uram=$(free -m | awk 'NR==2 {print $3}')
# TOTAL ACC XRAYS WS & XTLS
vmess=$(grep -c -E "^### $user" "/usr/local/etc/xray/config.json")
vless=$(grep -c -E "^### $user" "/usr/local/etc/xray/vless.json")
trws=$(grep -c -E "^### $user" "/usr/local/etc/xray/trojanws.json")
txtls=$(grep -c -E "^### $user" "/usr/local/etc/xray/xtrojan.json")
tr=$(grep -c -E "^### $user" "/usr/local/etc/xray/trojan.json")
# Total BANDWIDTH
#ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#tmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $9" "substr ($10, 1, 1)}')"
# vnstat v2
ttoday="$(vnstat | grep today | awk '{print $8" "substr ($9, 1, 1)}')"
tyest="$(vnstat | grep yesterday | awk '{print $8" "substr ($9, 1, 1)}')"
tmon="$(vnstat -m | grep "$(date '+%Y-%m')" | awk '{print $8" "substr ($9, 1, 1)}')"
clear
echo ""
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "      ${WB}Multiport Websocket Autoscript By NevermoreSSH${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "               ${WB}»»» Server Information «««${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}OS      :  "$(hostnamectl | grep "Operating System" | cut -d ' ' -f5-) ${NC}         
echo -e "  ${RB}♦️${NC} ${YB}KERNEL  :  $(uname -r) ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}UPTIME  :  $uptime ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}CPULOAD :  $load_cpu ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}RAM     :  $uram MB / $tram MB ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}DOMAIN  :  $domain ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}IPVPS   :  $IPVPS ${NC} "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                   ${WB}»»» XRAYS Menu «««${NC}          "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}01.${NC} ${YB}XRAY VMESS WS    ${WB}[${GB}${vmess}${WB}]${NC}"
echo -e "  ${RB}02.${NC} ${YB}XRAY VLESS WS    ${WB}[${GB}${vless}${WB}]${NC}"
echo -e "  ${RB}03.${NC} ${YB}XRAY TROJAN WS   ${WB}[${GB}${trws}${WB}]${NC}"
echo -e "  ${RB}04.${NC} ${YB}XRAY TROJAN XTLS ${WB}[${GB}${txtls}${WB}]${NC}"
echo -e "  ${RB}05.${NC} ${YB}XRAY TROJAN TCP  ${WB}[${GB}${tr}${WB}]${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                   ${WB}»»» VPS Menu «««${NC}                 "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}06.${NC} ${YB}INSTALL ADS BLOCK ${NC}"
echo -e "  ${RB}07.${NC} ${YB}INSTALL TCP BBRPLUS ${NC}"
echo -e "  ${RB}08.${NC} ${YB}ADS BLOCK MENU ${NC}"
echo -e "  ${RB}09.${NC} ${YB}DNS CHANGER ${NC}"
echo -e "  ${RB}10.${NC} ${YB}NETFLIX CHECKER ${NC}"
echo -e "  ${RB}11.${NC} ${YB}LIMIT BANDWITH SPEED ${NC}"
echo -e ""
echo -e "  ${RB}12.${NC} ${YB}CHANGE DOMAIN ${NC}"
echo -e "  ${RB}13.${NC} ${YB}RENEW CERT XRAYS ${NC}"
echo -e "  ${RB}14.${NC} ${YB}CHECK VPN STATUS ${NC}"
echo -e "  ${RB}15.${NC} ${YB}CHECK VPN PORT ${NC}"
echo -e "  ${RB}16.${NC} ${YB}RESTART VPN SERVICE ${NC}"
echo -e "  ${RB}17.${NC} ${YB}SPEEDTEST ${NC}"
echo -e "  ${RB}18.${NC} ${YB}CHECK CPU & RAM ${NC}"
echo -e "  ${RB}19.${NC} ${YB}CHECK BANDWIDTH ${NC}"
echo -e "  ${RB}20.${NC} ${YB}BACKUP ${NC}"
echo -e "  ${RB}21.${NC} ${YB}RESTORE ${NC}"
echo -e "  ${RB}22.${NC} ${YB}REBOOT ${NC}"
echo -e "  ${RB}23.${NC} ${YB}XRAY-CORE MENU ${NC}"
echo -e "  ${RB}24.${NC} ${YB}SWAPRAM MENU ${NC}"
echo -e "  ${RB}25.${NC} ${YB}CLEAR LOG ${NC}"
echo -e "  ${RB}26.${NC} ${YB}EXIT ${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                 ${WB}»»» Total Bandwidth «««${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Daily Data Usage    : $ttoday ${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Yesterday Usage     : $tyest ${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Monthly Data Usage  : $tmon ${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${WB}"
echo ""
read -p "Select From Options [ 1 - 26 ] : " menu
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
8)
clear
helium
;;
9)
clear
dns
;;
10)
clear
nf
;;
7)
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
wget -q -O /usr/bin/xraychanger "https://raw.githubusercontent.com/NevermoreSSH/Xcore-custompath/main/xraychanger.sh" && chmod +x /usr/bin/xraychanger && xraychanger
;;
24)
clear
wget -q -O /usr/bin/swapram "https://raw.githubusercontent.com/NevermoreSSH/swapram/main/swapram.sh" && chmod +x /usr/bin/swapram && swapram
;;
25)
clear
cleaner
;;
26)
clear
neofetch
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
