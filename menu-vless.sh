#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : NevermoreSSH
# (C) Copyright 2022
# =========================================
P='\e[0;35m'
B='\033[0;36m'
N='\e[0m'
clear
echo -e "\e[36m╒════════════════════════════════════════════╕\033[0m"
echo -e " \E[0;47;30m             XRAY VLESS WS MENU             \E[0m"
echo -e "\e[36m╘════════════════════════════════════════════╛\033[0m

 [\033[1;36m•1 \033[0m]  Add XRAY Vless WS Account
 [\033[1;36m•2 \033[0m]  Add Trial XRAY Vless WS Account
 [\033[1;36m•3 \033[0m]  Check User Login XRAY Vless WS
 [\033[1;36m•4 \033[0m]  Delete XRAY Vless WS Account
 [\033[1;36m•5 \033[0m]  Renew XRAY Vless WS Account
 [\033[1;36m•6 \033[0m]  Check XRAY Vless WS Config

 [\033[1;36m•0 \033[0m]  Back To Main Menu"
echo ""
echo -e " \033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; add-vless ;;
2) clear ; trial-vless ;;
3) clear ; cek-vless ;;
4) clear ; del-vless ;;
5) clear ; renew-vless ;;
6) clear ; user-vless ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Wrong Button" ; sleep 1 ; menu-vless ;;
esac
