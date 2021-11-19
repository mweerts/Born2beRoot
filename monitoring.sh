#!/bin/bash

Architecture=$(uname -a)
pCPU=$(grep "physical id" /proc/cpuinfo | sort | uniq | wc -l)
vCPU=$(grep "processor" /proc/cpuinfo | wc -l)
Ram=$(free -m | grep Mem | awk '{printf("%d/%d MB (%.2f%%)", $3, $2, ($3/$2) * 100)}')
DiskUsage=$(df -Bg --total | awk '$1=="total" {printf"%s/%s (%s)", $3, $2, $5}')
CPULoad=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
LastBoot=$(who -b | awk '{print $3 " " $4}')
LvmNbr=$(lsblk | grep lvm | wc -l)
LvmUse=$(if [ $LvmNbr > 0 ]; then echo 'Yes'; else echo 'No'; fi)
TCPConnections=$(cat /proc/net/sockstat | awk '$1=="TCP:" {print $3}')
UsersLog=$(users | wc -w)
NetworkIP=$(hostname -I)' ('$(ip link show | awk '$1=="link/ether" {print $2}')')'
Sudo=$(cat /var/log/auth.log | grep sudo: | grep COMMAND | wc -l) 

wall "	#Architecture: $Architecture
	#CPU Physical: $pCPU
	#vCPU: $vCPU
	#Memory Usage: $Ram
	#Disk Usage: $DiskUsage
	#CPU Load: $CPULoad
	#Last Boot: $LastBoot
	#LVM Use: $LvmUse ($LvmNbr Logical Volumes)
	#TCP Connections: $TCPConnections ESTABLISHED
	#Users log: $UsersLog
	#Network IP: $NetworkIP
	#SUDO: $Sudo cmd" 
