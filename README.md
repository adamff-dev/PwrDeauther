# PwrDeauther
A MDK3 channel deauther script. Fast, easy to use and powerful. (MDK3 is more powerful than Aireplay)

- Do NOT use sudo.

- MDK3 uses the drivers and Injection routines from this project and its predecessor. Thus, all drivers listed there should work with MDK3. <b>(Some special hardware, like Intel Centrino (ipw2200) is NOT supported since they can only inject data, and no management information!)</b>

<img src="https://github.com/BlueArduino20/PwrDeauther/blob/master/Screenshot_01.png?raw=true">

## Requirements

MDK3 `apt-get install mdk3`: https://github.com/wi-fi-analyzer/mdk3-master

MACCHANGER `sudo apt-get install macchanger` https://github.com/alobbs/macchanger

Xterm `apt-get install xterm`: http://invisible-island.net/xterm/

NMCLI `Preinstalled on most distros.`: https://github.com/mvidner/nmcli

## Related links
Wi-Fi deauthentication attack: https://en.wikipedia.org/wiki/Wi-Fi_deauthentication_attack

Difference between Aireplay and MDK3: https://security.stackexchange.com/questions/61211/wifi-deauth-attack-difference-between-aireplay-and-mdk3
## Notes
Some Intel® Hardware In particular Centrino are known to cause problems becuase of the way mdk3 works. 

From the mdk3 documentaion: 
`MDK3 uses the drivers and Injection routines from this project and its predecessor. Thus, all drivers listed there should work with MDK3. (Some special hardware, like Intel Centrino (ipw2200) is NOT supported since they can only inject data, and no management information!)`

## Instalation
1. Download the files `git clone https://github.com/BlueArduino20/PwrDeauther.git`

2. Package instalation

2.a Method 1 run the install.sh file **AS ROOT**

2.b Method 2 Manualy add sources and install packages listed above

3. Run the script `sudo bash PwrDeauther.sh`

