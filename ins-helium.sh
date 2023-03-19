#Autoscript By NevermoreSSH
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
clear
if [[ -e /usr/local/sbin/helium ]]; then
     echo ""
     echo -e "${green}Ads Block Already Install${NC}"
     echo ""
	 read -n1 -r -p "Press any key to continue..."
	 menu
else

rm -rf /usr/local/sbin/helium
wget -q -O /usr/local/sbin/helium https://raw.githubusercontent.com/NevermoreSSH/yourpath/main/helium.sh
chmod +x /usr/local/sbin/helium
helium

fi