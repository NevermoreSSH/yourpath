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
echo ""
echo " This Feature Can Only Be Used According To VPS Data With This Autoscript"
echo " Please Insert VPS Data Backup Link To Restore The Data"
echo ""
read -rp " Password File: " -e InputPass
read -rp " Link File: " -e url
wget -O backup.zip "$url"
unzip -P $InputPass /root/backup.zip &> /dev/null
rm -f backup.zip
sleep 1
echo -e "[ ${green}INFO${NC} ] Start Restore . . . "
#cp -r /root/backup/.acme.sh /root/ &> /dev/null
#cp -r /root/backup/premium-script /var/lib/ &> /dev/null
#cp -r /root/backup/xray /usr/local/etc/ &> /dev/null
cp -r /root/backup/*.json /etc/xray/ >/dev/null
cp -r /root/backup/public_html /home/vps/ &> /dev/null
cp -r /root/backup/crontab /etc/ &> /dev/null
cp -r /root/backup/cron.d /etc/ &> /dev/null
rm -rf /root/backup
rm -f backup.zip
echo ""
echo -e "[ ${green}INFO${NC} ] VPS Data Restore Complete !"
echo ""
echo -e "[ ${green}INFO${NC} ] Restart All Service"
systemctl restart nginx
systemctl restart xray.service
systemctl restart xray@none.service
systemctl restart xray@vless.service
systemctl restart xray@vnone.service
systemctl restart xray@trojanws.service
systemctl restart xray@trnone.service
systemctl restart xray@xtrojan.service
systemctl restart xray@trojan.service
service cron restart
sleep 0.5
clear