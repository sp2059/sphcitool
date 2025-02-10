### BLE Advertising monitor for ATC Thermometers
Based on https://github.com/pvvx/hcitooladv, originally from BlueZ - Bluetooth protocol stack for Linux
---

### Usage:

```
hcitooladv lescan --passive --duplicates --advanced
```

### Build:

```
make
```

### String Format:

"A4:C1:38:21:87:88-0201060f1695fe30585b05c988872138c1a408dd\n"

| MAC          | Ad-data                                      | RSSI |
| :----------: | -------------------------------------------- | ---- |
| A4:C1:38:21:87:88 | 0201060f1695fe30585b05c988872138c1a408 |  dd  |




