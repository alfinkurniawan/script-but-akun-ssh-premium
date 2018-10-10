#!/bin/bash
#Script auto create user SSH

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "AKUN SSH PREMIUM PRO"
echo -e "Host: $IP"
echo -e "Username: $Login "
echo -e "Password: $Pass"
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn"
echo -e "Aktif Sampai: $exp"
echo -e "============================="
echo -e ""
echo -e "PORT SSH -SSL   : 443"
echo -e "port squid proxy:8000,8080"
echo -e "port dropbear   :80,143"
echo -e "proxy squid     :$IP"
echo -e "
echo -e "==============================================="
echo -e "KAMI MEYEDIAKAN SSH PREMIUM PRO TERBAIK"
echo -e "TERPERCAYA✓"
echo -e "TERCEPAT✓"
echo -e "DAN MEMUASKAN DENGAN KUALITAS YANG TERBAIK"
echo -e "DENGAN PELAYAN YANG MEMUASKAN"
echo -e "==============================================="
echo -e "MOHON BACA PERATURAN DI BAWAH INI !!!"
echo -e "==============================================="
echo -e "-NO SPAM !!!-NO DDOS !!!-NO HACKING !!!"
echo -e "-NO CARDING !!!-NO CRIMINAL CYBER !!!"
echo -e "-MAX LOGIN 2 DEVICE/BITVISE !!!"
echo -e "-AUTO DELETE MULTILOGIN !!!"
echo -e "==============================================="
echo -e "SSH PREMIUM PRO TIDAK ADA GRANSI JIKA"
echo -e "ANDA MELANGAR PERATURAN KAMI !!!"
echo -e "================================================"
echo -e "AKUN SSH PREMIUM PRO BY ALFIN KURNIAWAN"
echo -e "==============================================="
echo -e "TERIMA KASIH TELAH MEBELI SSH PREMIUM DARI KAMI"
echo -e "SUPPORT TERUS ALFIN KURNIAWAN"
echo -e "==============================================="
echo -e "WA 082283689474"
echo -e "FB ALFIN KURNIAWAN"
echo -e "==============================================="
echo -e "SCRIPT PREMIUM  BY \e[1;33;44mALFIN KURNIAWAN\e[0m"
