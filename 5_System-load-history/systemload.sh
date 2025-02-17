#!/bin/bash
##################################################
# #
# Author: Siddhartha #
# Website: server-computer.com #
# Date: 17-01-2025  13:59:56 #
# Purpose: Capture and Store System Load Average #
# CPU Usage and Memory Usage #
##################################################
# Log File Path
LOGFILE=/var/log/systemload.log

HOSTNAME=$(hostname)
DATE=$(date "+%d-%m-%Y %H:%M:%S")
SYSTEMLOAD=$(uptime | awk '{ print $8,$9,$10,$11,$12}')
CPULOAD=$(top -b -n 2 -d1 | grep "Cpu(s)" | tail -n1 |awk '{print $2}')
MEMORYUSAGE=$(free -m |grep Mem: |tail -n1 |awk '{print $2,$3}')

echo "$DATE $HOSTNAME LoadAverage: $SYSTEMLOAD CPU: $CPULOAD Memory: $MEMORYUSAGE" >> $LOGFILE
