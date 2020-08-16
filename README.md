# PwrDeauther (V. 2.0)
Automatic MDK3 deauther script. Fast, easy to use and powerful (MDK3 is more powerful than Aireplay).
This script allows you to deauth a specific SSID (Option 1) or an entire channel (Option 2).

## Showcase video

<a href="https://youtu.be/ZiujaDVpdEk"><img src="https://i.imgur.com/f82biKP.png"></a>

## Preview

<img src="https://raw.githubusercontent.com/BlueArduino20/PwrDeauther/master/img/1.png">

<img src="https://raw.githubusercontent.com/BlueArduino20/PwrDeauther/master/img/2.png">

Here you can donate if you liked my project and you want to support me:
<a href="https://www.buymeacoffee.com/rSiZtB3" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

## Dependencies

MDK3 `sudo apt-get install mdk3`: https://github.com/wi-fi-analyzer/mdk3-master

MACCHANGER `sudo apt-get install macchanger` https://github.com/alobbs/macchanger

NMCLI `Preinstalled on most distros.`: https://github.com/mvidner/nmcli

## Notes
Some Intel® Hardware In particular Centrino are known to cause problems becuase of the way mdk3 works. 

From the mdk3 documentaion: 
`MDK3 uses the drivers and Injection routines from this project and its predecessor. Thus, all drivers listed there should work with MDK3. (Some special hardware, like Intel Centrino (ipw2200) is NOT supported since they can only inject data, and no management information!)`

## Instalation
  1. Download the files `git clone https://github.com/BlueArduino20/PwrDeauther.git`

  2. Dependencie instalation

  2.1. Method 1: `sudo chmod +x install.sh` and  `sudo install.sh`

  2.2. Method 2: manualy add sources and install packages listed above

  3. Run the script `sudo chmod +x PwrDeauther.sh` and `sudo PwrDeauther.sh`
  
Thanks to <a href="https://github.com/digmorepaka">@digmorepaka</a>.

## Related links
Wi-Fi deauthentication attack: https://en.wikipedia.org/wiki/Wi-Fi_deauthentication_attack

Difference between Aireplay and MDK3: https://security.stackexchange.com/questions/61211/wifi-deauth-attack-difference-between-aireplay-and-mdk3

mdk3 Package Description: https://tools.kali.org/wireless-attacks/mdk3

## Check out my other projects

- **WiFi-Spam**: :email::satellite: Spam thousands of WiFi access points with custom SSIDs.
  - https://github.com/BlueArduino20/WiFi-Spam

- **ESP8266 WiFi Captive Portal**: :key: WiFi captive portal for ESP8266 for phishing WiFi passwords.
  - https://github.com/BlueArduino20/ESP8266_WiFi_Captive_Portal
  
## Disclaimer
This project is for testing and educational purposes. Use it only against your own networks and devices. I don't take any responsibility for what you do with this program.
