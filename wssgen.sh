#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : NevermoreSSH
# (C) Copyright 2022
# =========================================
clear
vmess_req() {
    user=WSS
    echo -e "\e[36m╒═══════════════════════════════════════════╕\033[0m"
    echo -e " \E[0;41;36m               WSS CONVERTER               \E[0m"
    echo -e "\e[36m╘═══════════════════════════════════════════╛\033[0m"
    echo -e "\033[1;37mWSS Converter By NevermoreSSH\033[0m"
    echo -e "\033[1;37mTelegram : https://t.me/todfix667 / @todfix667\033[0m"
    echo ""
    echo -e "[1] Digi"
    echo -e "[2] Maxis"
    echo -e "[3] Celcom"
    echo -e "[4] YES"
    echo -e "[5] Other Telco"
    echo ""
    echo -e "\033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
    echo ""
    echo -ne "Select Menu : "
    read telco
    case "$telco" in
    1)
        clear
        kumbang='api.useinsider.com'
        ;;
    2)
        clear
        kumbang='italeem.iium.edu.my'
        ;;
    3)
        clear
        kumbang='onlinepayment.celcom.com.my'
        ;;
    4)
        clear
        kumbang='cdn.who.int'
        ;;
    5)
        clear
		echo ""
        read -p "Bug SNI/HOST : " hst
        bug=${hst}
        bug2=bug.com
        if [[ $hst == "" ]]; then
        kumbang=$bug2
        else
        kumbang=$bug
        fi
        ;;
    *)
        clear
        vmess_req
        ;;
    esac
    clear
    echo ""
    read -p "Domain : " domain
    read -p "Port   : " prt
    read -p "UUID   : " uuid
    read -p "Path   : " path
    echo ""
    cat >/root/$user-tls.json <<EOF
      {
      "v": "0",
      "ps": "XRAY_VMESS_${user}",
      "add": "${kumbang}",
      "port": "${prt}",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "wss://${kumbang}${path}",
      "type": "none",
      "host": "${domain}",
      "sni": "${kumbang}",
      "tls": "tls"
}
EOF

    vmesslink1="vmess://$(base64 -w 0 /root/$user-tls.json)"
    echo "Config : $vmesslink1"
    echo -e ""
    echo -e "Autoscript By NevermoreSSH"
    echo -e ""
    rm -f /root/$user-tls.json
}

vless_req() {
    echo -e "\e[36m╒═══════════════════════════════════════════╕\033[0m"
    echo -e " \E[0;41;36m               WSS CONVERTER               \E[0m"
    echo -e "\e[36m╘═══════════════════════════════════════════╛\033[0m"
    echo -e "\033[1;37mWSS Converter By NevermoreSSH\033[0m"
    echo -e "\033[1;37mTelegram : https://t.me/todfix667 / @todfix667\033[0m"
	echo ""
    echo -e "[1] Digi"
    echo -e "[2] Maxis"
    echo -e "[3] Celcom"
    echo -e "[4] YES"
    echo -e "[5] Other Telco"
    echo ""
    echo -e "\033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
    echo ""
    echo -ne "Select Menu : "
    read telco
    case "$telco" in
    1)
        clear
        kumbang='api.useinsider.com'
        ;;
    2)
        clear
        kumbang='italeem.iium.edu.my'
        ;;
    3)
        clear
        kumbang='onlinepayment.celcom.com.my'
        ;;
    4)
        clear
        kumbang='cdn.who.int'
        ;;
    5)
        clear
		echo ""
        read -p "Bug SNI/HOST : " hst
        bug=${hst}
        bug2=bug.com
        if [[ $hst == "" ]]; then
        kumbang=$bug2
        else
        kumbang=$bug
        fi
        ;;
    *)
        clear
        vless_req
        ;;
    esac
    clear
    echo ""
    read -p "Domain : " domain
    read -p "Port   : " prt
    read -p "UUID   : " uuid
    read -p "Path   : " path
    echo ""
    echo "Config : vless://${uuid}@${kumbang}:${prt}?path=wss://${kumbang}${path}&security=tls&encryption=none&type=ws&host=${domain}&sni=${kumbang}#XRAY_VLESS_WSS"
    echo -e ""
    echo -e "Autoscript By NevermoreSSH"
    echo -e ""
}

trojan_req() {
    echo -e "\e[36m╒═══════════════════════════════════════════╕\033[0m"
    echo -e " \E[0;41;36m               WSS CONVERTER               \E[0m"
    echo -e "\e[36m╘═══════════════════════════════════════════╛\033[0m"
    echo -e "\033[1;37mWSS Converter By NevermoreSSH\033[0m"
    echo -e "\033[1;37mTelegram : https://t.me/todfix667 / @todfix667\033[0m"
    echo ""
    echo -e "[1] Digi"
    echo -e "[2] Maxis"
    echo -e "[3] Celcom"
    echo -e "[4] YES"
    echo -e "[5] Other Telco"
    echo ""
    echo -e "\033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
    echo ""
    echo -ne "Select Menu : "
    read telco
    case "$telco" in
    1)
        clear
        kumbang='api.useinsider.com'
        ;;
    2)
        clear
        kumbang='italeem.iium.edu.my'
        ;;
    3)
        clear
        kumbang='onlinepayment.celcom.com.my'
        ;;
    4)
        clear
        kumbang='cdn.who.int'
        ;;
    5)
        clear
		echo ""
        read -p "Bug SNI/HOST : " hst
        bug=${hst}
        bug2=bug.com
        if [[ $hst == "" ]]; then
        kumbang=$bug2
        else
        kumbang=$bug
        fi
        ;;
    *)
        vless_req
        ;;
    esac
    clear
    echo ""
    read -p "Domain : " domain
    read -p "Port   : " prt
    read -p "UUID   : " uuid
    read -p "Path   : " path
    echo ""
    echo "Config : trojan://${uuid}@${kumbang}:${prt}?type=ws&security=tls&host=${domain}&path=wss://${kumbang}${path}&sni=${kumbang}#XRAY_TROJAN_WSS"
    echo -e ""
    echo -e "Autoscript By NevermoreSSH"
    echo -e ""
}

protocol_req() {
    echo -e "\e[36m╒═══════════════════════════════════════════╕\033[0m"
    echo -e " \E[0;41;36m               WSS CONVERTER               \E[0m"
    echo -e "\e[36m╘═══════════════════════════════════════════╛\033[0m"
    echo -e "\033[1;37mWSS Converter By NevermoreSSH\033[0m"
    echo -e "\033[1;37mTelegram : https://t.me/todfix667 / @todfix667\033[0m"
    echo ""
    echo -e "[1] Vmess"
    echo -e "[2] Vless"
    echo -e "[3] Trojan"
    echo ""
    echo -e "\033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
    echo ""
    echo -ne "Select Menu : "
    read proto
    case "$proto" in
    1)
        clear
        vmess_req
        ;;
    2)
        clear
        vless_req
        ;;
    3)
        clear
        trojan_req
        ;;
    *)
        clear
        protocol_req
        ;;
    esac