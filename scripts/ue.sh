#!/bin/bash

sudo -v 

# Color codes
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

echo -n -e "${YELLOW}Starting Bad traffic: "
TZ=Asia/Taipei date +"%H:%M:%S %D"
printf "${NC}"
sudo docker exec -it ueransim ping -I uesimtun0 120.112.1.36 -s 92 -c 15
sleep 5

echo -n -e "${CYAN}Starting Good traffic$: "
TZ=Asia/Taipei date +"%H:%M:%S %D"
printf "${NC}"

sudo docker exec -it ueransim ping -I uesimtun0 1.1.1.1 -s 92 -c 15
sudo docker exec -it ueransim ping -I uesimtun0 9.9.9.9 -s 92 -c 15  
sleep 5

echo -n -e "${YELLOW}Starting Bad traffic Again$: "
TZ=Asia/Taipei date +"%H:%M:%S %D"
printf "${NC}"
sudo docker exec -it ueransim ping -I uesimtun0 120.112.1.36 -s 92 -c 15 
