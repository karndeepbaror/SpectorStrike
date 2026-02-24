#!/bin/bash

# --- SPECTER STRIKE: EVIDENCE DISPOSAL SCRIPT ---
RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m'

echo -e "${RED}[!] INITIATING STEALTH CLEANUP PROTOCOL...${NC}"

# 1. Remove Python Cache
find . -type d -name "__pycache__" -exec rm -rf {} +
find . -type f -name "*.py[co]" -delete

# 2. Clear System Bluetooth Cache (Requires Sudo)
if [ "$EUID" -ne 0 ]; then 
  echo -e "${RED}[!] Please run as root to clear hardware logs.${NC}"
else
  systemctl restart bluetooth
  echo -e "${GREEN}[+] Bluetooth Stack Refreshed.${NC}"
fi

# 3. Remove temporary logs
rm -rf *.log 2>/dev/null

echo -e "${GREEN}[✔] DIGITAL TRACES WIPED. SYSTEM CLEAN.${NC}"
