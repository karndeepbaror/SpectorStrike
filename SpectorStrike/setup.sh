#!/bin/bash

# --- SPECTER STRIKE PREMIUM SETUP ENGINE ---
# Developer: Karndeep Baror
# Tagline: The Digital Phantom That Strikes Without Warning.

# Colors for Premium Aesthetic
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

clear

# Banner Animation
echo -e "${RED}"
cat << "EOF"
   _____ ____  __________________________  _____ 
  / ___// __ \/ ____/ ____/_  __/ ____/ __ \/ ___/
  \__ \/ /_/ / __/ / /     / / / __/ / /_/ /\__ \ 
 ___/ / ____/ /___/ /___  / / / /___/ _, _/___/ / 
/____/_/   /_____/\____/ /_/ /_____/_/ |_|/____/  
           S T R I K E  -  S E T U P  V 1.0
EOF
echo -e "${NC}"
echo -e "${CYAN}Developer: ${WHITE} Karndeep Baror{NC}"
echo -e "${YELLOW}Tagline: ${WHITE}The Digital Phantom That Strikes Without Warning.${NC}"
echo -e "${BLUE}--------------------------------------------------${NC}"

# Requirement Visualization
echo -e "\n${PURPLE}[!] ANALYZING SYSTEM DEPENDENCIES...${NC}"
sleep 1
echo -e "${WHITE}  - Python 3.10+     [REQUIRED]${NC}"
echo -e "${WHITE}  - BlueZ / D-Bus    [REQUIRED]${NC}"
echo -e "${WHITE}  - Bleak Library    [PYTHON]${NC}"
echo -e "${WHITE}  - Rich UI Engine   [PYTHON]${NC}"
echo -e "${WHITE}  - PyFiglet Arts    [PYTHON]${NC}"
echo -e "${BLUE}--------------------------------------------------${NC}"

# User Consent
echo -ne "${YELLOW}[?] Do you want to initiate the elite installation? (y/n): ${NC}"
read choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    echo -e "\n${GREEN}[⚡] STARTING SPECTER-STRIKE PROTOCOL...${NC}"
    
    # Updating System Repositories
    echo -e "${CYAN}[*] Synchronizing System Repositories...${NC}"
    sudo apt-get update -y > /dev/null 2>&1

    # Installing System Dependencies
    echo -e "${CYAN}[*] Hardening Bluetooth Stack (BlueZ, D-Bus)...${NC}"
    sudo apt-get install -y python3-pip libdbus-1-dev bluez > /dev/null 2>&1

    # Installing Python Libraries with a Pro-Progress Bar simulation
    echo -e "${CYAN}[*] Injecting Python Modules (Bleak, Rich, Pyfiglet, Aioconsole)...${NC}"
    pip3 install bleak rich aioconsole pyfiglet --quiet

    echo -e "\n${GREEN}[✔] SYSTEM CALIBRATION COMPLETE!${NC}"
    echo -e "${WHITE}Preparing to launch SPECTER STRIKE...${NC}"
    sleep 2

    # Auto-running the main tool
    if [ -f "spectorstrike.py" ]; then
        echo -e "${PURPLE}[🚀] STRIKE INITIATED...${NC}"
        clear
        python3 spectorstrike.py
    else
        echo -e "${RED}[error] Main file 'spectorstrike.py' not found!${NC}"
    fi
else
    echo -e "\n${RED}[!] INSTALLATION ABORTED BY USER.${NC}"
    exit 1
fi
