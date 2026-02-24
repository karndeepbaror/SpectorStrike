# 🕵️ SPECTER STRIKE: FULL ARSENAL & FEATURE SPECIFICATIONS

### ⚔️ Module 01: Vantablack Recon (Advanced Discovery)
- **What it is:** A high-precision BLE discovery engine.
- **How it works:** It doesn't just find names; it calculates **RSSI Path Loss**. 
- **Usage:** Helps the operative determine the physical distance of the target. Devices within -30dBm to -50dBm are marked as **Primary Targets** for high success rates.

### ⚔️ Module 02: Phantom Pop-up (OS Exploitation)
- **What it is:** A proximity-based advertisement injector.
- **How it works:** It exploits the **Apple Continuity** and **Google Fast Pair** protocols. By broadcasting a specific sequence of BLE packets, it forces the target device to show a "Connect" or "Setup" pop-up.
- **Usage:** Used for social engineering or to annoy/distract a target.



### ⚔️ Module 03: The Void (Jamming & Deauth)
- **What it is:** Targeted Denial of Service (DoS) for Bluetooth.
- **How it works:** It utilizes a **Connection Flood Attack**. It sends thousands of `CONNECT_REQ` packets to a target MAC address. Since a device can only handle a few requests, its Bluetooth radio locks up.
- **Usage:** To disconnect Bluetooth peripherals (Headphones, Keyboards, Mouse) from a target system.

### ⚔️ Module 04: GATT Provenance (Deep Data Mapping)
- **What it is:** Service and Characteristic extractor.
- **How it works:** It initiates a secure handshake and crawls through the **Attribute Protocol (ATT)** table.
- **Usage:** Identifies hidden device capabilities like battery level, firmware version, and data transfer handles.
