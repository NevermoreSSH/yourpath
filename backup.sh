#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : NevermoreSSH
# (C) Copyright 2022
# =========================================

red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
clear
IP=$(wget -qO- icanhazip.com);
IP=$(curl -s ipinfo.io/ip )
IP=$(curl -sS ipv4.icanhazip.com)
IP=$(curl -sS ifconfig.me )
date=$(date +"%Y-%m-%d-%H:%M:%S")
domain=$(cat /root/domain)
clear
echo " VPS Data Backup By NevermoreSSH "
sleep 1
#echo ""
#echo -e "[ ${green}INFO${NC} ] Please Insert Password To Secure Backup Data ."
#echo ""
#read -rp "Enter password : " -e InputPass
#clear
#sleep 1
#if [[ -z $InputPass ]]; then
#exit 0
#fi
echo -e "[ ${green}INFO${NC} ] Processing . . . "
mkdir -p /root/backup
sleep 1
clear
echo " Please Wait VPS Data Backup In Progress . . . "
#cp -r /root/.acme.sh /root/backup/ &> /dev/null
#cp -r /var/lib/premium-script/ /root/backup/premium-script
#cp -r /usr/local/etc/xray /root/backup/xray
cp -r /usr/local/etc/xray/*.json /root/backup/ >/dev/null 2>&1
cp -r /root/domain /root/backup/ &> /dev/null
cp -r /home/vps/public_html /root/backup/public_html
cp -r /etc/cron.d /root/backup/cron.d &> /dev/null
cp -r /etc/crontab /root/backup/crontab &> /dev/null
cd /root
zip -r $InputPass $IP-$date-$domain-yourpath.zip backup > /dev/null 2>&1
rclone copy /root/$IP-$date-$domain-yourpath.zip dr:backup/
url=$(rclone link dr:backup/$IP-$date-$domain-yourpath.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
clear
echo -e "\033[1;37mVPS Data Backup By NevermoreSSH\033[0m
\033[1;37mTelegram : https://t.me/todfix667 / @NevermoreSSH\033[0m"
echo ""
echo "Please Copy Link Below & Save In Notepad"
echo ""
echo -e "Your VPS IP ( \033[1;37m$IP\033[0m )"
#echo ""
#echo -e "Your VPS Data Backup Password : \033[1;37m$InputPass\033[0m"
echo ""
echo -e "\033[1;37m$link\033[0m"
echo ""
echo "If you want to restore data, please enter the link above"
rm -rf /root/backup
rm -r /root/$IP-$date-$domain-yourpath.zip
echo ""
read -p "$( echo -e "Press ${orange}[ ${NC}${green}Enter${NC} ${CYAN}]${NC} Back to menu . . .") "
menu
