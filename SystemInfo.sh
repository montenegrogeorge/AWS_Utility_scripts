#!/bin/bash
# SystemInfo.sh gives basic information for the System
# This Bash Script Requires SUDO`

# Create txt File to put data
FILE=~/SystemInfo.txt

# Check Basic Software & Hardware info
echo "##### Basic Software & Hardware Info: #####" > $FILE
uname -a >> $FILE
echo -e "\n"  >> $FILE


# Check Free space
echo "##### Free Space on Machine: ##### " >> $FILE
df -ah >> $FILE
echo -e "\n" >> $FILE


# Check out IP info for machine
echo "##### IP Devices: #####" >> $FILE
ip addr show >> $FILE
echo -e "\n"  >> $FILE


# Check Open Ports
echo "##### Open Ports: #####" >> $FILE
sudo netstat -tulpn  >> $FILE

