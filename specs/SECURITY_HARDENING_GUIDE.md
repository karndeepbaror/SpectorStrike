# 🛡️ DEFENSIVE MEASURES AGAINST SPECTER STRIKE

This document outlines how system administrators can harden BLE-enabled devices against the reconnaissance methods used in this framework.

### 1. RANDOMIZED PRIVATE ADDRESSING (RPA)
Ensure the host OS rotates the MAC address every 15 minutes. This prevents **SPECTER STRIKE** from maintaining a persistent "Target Lock".

### 2. GATT CACHING RESTRICTIONS
Disable GATT caching for unauthenticated devices. This neutralizes the `Service Mapping` module of the Phantom Engine.

### 3. ADVERTISING POWER SCALING
Reducing TX power on beacons limits the tool's ability to pick up signals from outside a 5-meter radius, effectively creating a "Physical Firewall".

### 4. FILTERING AD_TYPE 0xFF
Block Manufacturer-Specific Data (Type 0xFF) packets at the kernel level if proximity pairing is not required.
