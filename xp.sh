#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : NevermoreSSH
# (C) Copyright 2022
# =========================================
clear
#----- Auto Remove Vmess
data=( `cat /usr/local/etc/xray/config.json | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^### $user" "/usr/local/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^### $user $exp/,/^},{/d" /usr/local/etc/xray/config.json
sed -i "/^### $user $exp/,/^},{/d" /usr/local/etc/xray/none.json
rm -f /usr/local/etc/xray/$user-tls.json /usr/local/etc/xray/$user-none.json /usr/local/etc/xray/$user-maxis.json /usr/local/etc/xray/$user-maxistv.json /usr/local/etc/xray/$user-celcom.json /usr/local/etc/xray/$user-digi.json /usr/local/etc/xray/$user-yes.json /usr/local/etc/xray/$user-umo.json
rm -f /home/vps/public_html/$user-VMESSTLS.yaml /home/vps/public_html/$user-VMESSNTLS.yaml
systemctl restart xray.service
systemctl restart xray@none.service
fi
done

#----- Auto Remove Vless
data=( `cat /usr/local/etc/xray/vless.json | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^### $user" "/usr/local/etc/xray/vless.json" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^### $user $exp/,/^},{/d" /usr/local/etc/xray/vless.json
sed -i "/^### $user $exp/,/^},{/d" /usr/local/etc/xray/vnone.json
rm -f /home/vps/public_html/$user-VLESSTLS.yaml /home/vps/public_html/$user-VLESSNTLS.yaml
systemctl restart xray@vless.service
systemctl restart xray@vnone.service
fi
done

#----- Auto Remove Trojan
data=( `cat /usr/local/etc/xray/trojanws.json | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^### $user" "/usr/local/etc/xray/trojanws.json" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^### $user $exp/,/^},{/d" /usr/local/etc/xray/trojanws.json
sed -i "/^### $user $exp/,/^},{/d" /usr/local/etc/xray/trnone.json
rm -f /home/vps/public_html/$user-TROJANTLS.yaml
systemctl restart xray@trojanws.service
systemctl restart xray@trnone.service
fi
done

#----- Auto Remove Trojan TCP
data=( `cat /usr/local/etc/xray/trojan.json | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^### $user" "/usr/local/etc/xray/trojan.json" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^### $user $exp/,/^},{/d" /usr/local/etc/xray/trojan.json
rm -f /home/vps/public_html/$user-TRTCP.yaml
systemctl restart xray@trojan.service
fi
done

#----- Auto Remove Trojan TCP XTLS
data=( `cat /usr/local/etc/xray/xtrojan.json | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^### $user" "/usr/local/etc/xray/xtrojan.json" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^### $user $exp/,/^},{/d" /usr/local/etc/xray/xtrojan.json
rm -f /home/vps/public_html/$user-TRDIRECT.yaml /home/vps/public_html/$user-TRSPLICE.yaml
systemctl restart xray@xtrojan.service
fi
done