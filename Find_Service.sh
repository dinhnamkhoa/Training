#!/bin/bash 

read -p "Nhap ten port can check service: " port
lsof -i:$port | grep -m1 "LISTEN"  > checkport.txt
if [ -s checkport.txt ]; then
	echo "Port" $port "co dich vu dang chay la :" 
	awk '{print $1}' checkport.txt
else
	echo "Port" $port "khong co dich vu dang chay!!!"
fi
