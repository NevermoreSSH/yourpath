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
echo -e " \E[0;41;36m            XRAY TROJAN WS MENU             \E[0m"
echo -e "\e[36m╘════════════════════════════════════════════╛\033[0m

 [\033[1;36m•1 \033[0m]  Add XRAY Trojan WS Account
 [\033[1;36m•2 \033[0m]  Add Trial XRAY Trojan WS Account
 [\033[1;36m•3 \033[0m]  Check User Login XRAY Trojan WS
 [\033[1;36m•4 \033[0m]  Delete XRAY Trojan WS Account
 [\033[1;36m•5 \033[0m]  Renew XRAY Trojan WS Account
 [\033[1;36m•6 \033[0m]  Check XRAY Trojan WS Config

 [\033[1;36m•0 \033[0m]  Back To Main Menu"
echo""
echo -e " \033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
echo ""
echo -ne "Select menu : "; read x
if [[ $(cat /opt/.ver) = $serverV ]] > /dev/null 2>&1; then
    if [[ $x -eq 1 ]]; then
       add-tr
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 2 ]]; then
       trial-tr
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 3 ]]; then
       cek-tr
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 4 ]]; then
       del-tr
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 5 ]]; then
       renew-tr
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 6 ]]; then
       user-tr
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 7 ]]; then
       clear
       menu
    else
       clear
       menu-tr
    fi
fi