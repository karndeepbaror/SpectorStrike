# 📊 OPERATIONAL FLOW & LOGIC DIAGRAMS

### 🛡️ Scanning & Identification Flow
When the Phantom Engine starts, it follows this strict protocol:
1. **Initialize HCI:** Wakes up the Bluetooth hardware.
2. **Passive Discovery:** Collects MAC and Names.
3. **Signal Calibration:** Filters targets based on RSSI.
4. **Threat Assessment:** Categorizes targets into Vulnerable (Low Security) and Hardened (Encrypted).



### 💥 Attack Execution Flow
1. **Target Lock:** User selects a MAC address.
2. **Packet Serialization:** The tool prepares the payload (Spam/Jam).
3. **Async Injection:** Packets are sent via the Bluetooth controller at millisecond intervals.
4. **Telemetry Feedback:** The UI updates with "Injection Success" logs.
