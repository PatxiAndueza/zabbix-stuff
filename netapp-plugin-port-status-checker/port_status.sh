#!/bin/bash

#SnapCenter Plug-in for VMware vSphere port
info=$(nmap -p 8144 <NDB IP> | awk -F " " 'NR==6{print $2}')
zabbix_sender -z 127.0.0.1 -s "NDB" -k ndb.8144 -o $info

#Management port
info=$(nmap -p 8080 <NDB IP> | awk -F " " 'NR==6{print $2}')
zabbix_sender -z 127.0.0.1 -s "NDB" -k ndb.8080 -o $info


#VASA Provider and SRA for VMware vSphere port
info=$(nmap -p 9083 <VSC IP> | awk -F " " 'NR==6{print $2}')
zabbix_sender -z 127.0.0.1 -s "VSC" -k vsc.9083 -o $info

#VSC communication port
info=$(nmap -p 8143 <VSC IP> | awk -F " " 'NR==6{print $2}')
zabbix_sender -z 127.0.0.1 -s "VSC" -k vsc.8143 -o $info



