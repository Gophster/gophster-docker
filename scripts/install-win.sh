#!/bin/bash

#links
API="http://api.gophster.localhost"
FRONTEND="http://frontend.gophster.localhost"

#colors
NONE='\033[00m'
RED='\033[0;31m'
BLUE='\033[1;36m'

clear

echo -e "${RED}[1/6] Stopping containers...\n\v${NONE}"
make stop

echo -e "${RED}[2/6] Removing old services ...\n\v${NONE}"
rm -rf services

echo -e "${RED}[3/6] Cloning services...\n\v${NONE}"
make clone

echo -e "${RED}[4/6] Starting up containers...\n\v${NONE}"
make up

echo -e "\n${RED}[5/6] Building API ...\n\v${NONE}"
winpty docker-compose  exec gophster.api npm install

echo -e "\n${RED}[6/6] Building Frontend...\n\v${NONE}"
winpty docker-compose  exec gophster.frontend npm install

echo -e "\n${RED}\n\vAPI${NONE}  - " ${BLUE}${API}${NONE}"${RED}\n\vFRONTEND${NONE} - " ${BLUE}${FRONTEND}${NONE}""
