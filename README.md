### BLE Advertising monitor for ATC Thermometers
Based on https://github.com/pvvx/hcitooladv, originally from BlueZ - Bluetooth protocol stack for Linux
---

### Usage:

```
sphcitool lescan --passive --duplicates --decode
```

### Build:

```
make
```

### Output Format:

--advanced output:

"A4:C1:38:21:87:88-0201060f1695fe30585b05c988872138c1a408dd\n"

| MAC          | Ad-data                                      | RSSI |
| :----------: | -------------------------------------------- | ---- |
| A4:C1:38:21:87:88 | 0201060f1695fe30585b05c988872138c1a408 |  dd  |

--decode output:

```
A4:C1:38:99:17:D1-02010610161a18a4c1389917d100cd391e096f48c4
                                      v     v   v v v   v v
       +------------------------------+     |   | | |   | |
       |    +-------------------------------+   | | |   | |
       |    |       +---------------------------+ | |   | |
       |    |       |       +---------------------+ |   | |
       |    |       |       |    +------------------+   | |
       |    |       |       |    |      +---------------+ |
    vvvvvv vvvv     vv      vv  vvvv    vv      vvv-------+
ATC_9917D1 20.5C RH:57% bat:30% 2415mV #72 rssi:196
```
