#!/bin/bash
#Script Updater By NevermoreSSH
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
# // Exporting URL Host
export Server_URL="raw.githubusercontent.com/NevermoreSSH/yourpath/main"
clear
if [[ -e /usr/local/bin/xray ]]; then
     echo ""
     echo -e "[ ${green}INFO${NC} ] XRAY Core CF-RAY Already Install !"
	 sleep 1
	 clear
	 echo -e "[ ${green}INFO${NC} ] Skip Update XRAY Core & Proceed Autoscript Patch Update . . ."
	 echo ""
	 echo -e "[ ${green}INFO${NC} ] Update Starting Now . . ."
	 echo ""
	 sleep 1
	 rm -rf /usr/local/sbin/helium
	 wget -q -O /usr/local/sbin/helium "https://${Server_URL}/helium.sh" && chmod +x /usr/local/sbin/helium
	 cd /usr/bin
	 rm nf
	 rm ins-helium
	 rm limit
	 rm bbr
	 rm menu
	 #rm add-tr
         #rm add-vless
         #rm add-ws
         #rm user-tr
         #rm user-vless
	 wget -O nf "https://${Server_URL}/media.sh" && chmod +x nf
	 wget -O ins-helium "https://${Server_URL}/ins-helium.sh" && chmod +x ins-helium
	 wget -O menu "https://${Server_URL}/menu.sh" && chmod +x menu
	 wget -O limit "https://${Server_URL}/limit-speed.sh" && chmod +x limit
	 #wget -O add-tr "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/add-tr.sh" && chmod +x add-tr
	 #wget -O add-vless "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/add-vless.sh" && chmod +x add-vless
	 #wget -O add-ws "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/add-ws.sh" && chmod +x add-ws
	 #wget -O user-tr "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/user-tr.sh" && chmod +x user-tr
	 #wget -O user-vless "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/user-vless.sh" && chmod +x user-vless
	 wget -O bbr "https://${Server_URL}/bbr.sh" && chmod +x bbr
	 echo ""
	 echo -e "[${green}INFO${NC}] Successfully Install New Update File !"
	 sleep 1
else
     echo -e "[ ${green}INFO${NC} ] XRAY Core CF-RAY Update Starting !"
	 sleep 1
     mv /usr/local/bin/xray /usr/local/bin/xray.bak && wget -q -O /usr/local/bin/xray "https://github.com/NevermoreSSH/Xcore-custompath/releases/download/v1.0.0/xray.linux.64bit" && chmod 755 /usr/local/bin/xray
	 echo ""
     echo -e "[ ${green}INFO${NC} ] XRAY Core CF-RAY Successfully Install !"
	 echo ""
	 echo -e "[ ${green}INFO${NC} ] Please ${red}Restart${NC} All VPN Services After Autoscript Patch Update Is Done . . ."
	 sleep 3
	 clear
	 echo -e "[ ${green}INFO${NC} ] Proceed Autoscript Patch Update . . ."
	 echo ""
	 echo -e "[ ${green}INFO${NC} ] Update Starting Now . . ."
	 echo ""
	 sleep 1
	 rm -rf /usr/local/sbin/helium
	 wget -q -O /usr/local/sbin/helium https://raw.githubusercontent.com/NevermoreSSH/yourpath/main/helium.sh
	 cd /usr/bin
	 rm nf
	 rm ins-helium
	 rm limit
	 rm bbr
	 rm menu
	 #rm add-tr
         #rm add-vless
         #rm add-ws
         #rm user-tr
         #rm user-vless
	 wget -O nf "https://${Server_URL}/media.sh" && chmod +x nf
	 wget -O ins-helium "https://${Server_URL}/ins-helium.sh" && chmod +x ins-helium
	 wget -O menu "https://${Server_URL}/menu.sh" && chmod +x menu
	 wget -O limit "https://${Server_URL}/limit-speed.sh" && chmod +x limit
	 #wget -O add-tr "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/add-tr.sh" && chmod +x add-tr
	 #wget -O add-vless "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/add-vless.sh" && chmod +x add-vless
	 #wget -O add-ws "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/add-ws.sh" && chmod +x add-ws
	 #wget -O user-tr "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/user-tr.sh" && chmod +x user-tr
	 #wget -O user-vless "https://raw.githubusercontent.com/NevermoreSSH/OnigiriWebsocketPremium-V2/main/XRAY/user-vless.sh" && chmod +x user-vless
	 wget -O bbr "https://${Server_URL}/bbr.sh" && chmod +x bbr
	 echo ""
	 echo -e "[${green}INFO${NC}] Successfully Install New Update File !"
	 sleep 1

fi