#!/bin/sh
echo "##############################################"
echo "############ SOFTCAMKEY[Bissfeed] ##############"
echo "##############################################"
wget -O /etc/tuxbox/config/SoftCam.Key https://raw.githubusercontent.com/ismail9875/keys/main/SoftCam.key && killall -9 enigma2
echo ""
cd ..
sync
echo "##############################################"
echo "############ Installation Successful  ########"
echo "############   Restart Enigma2 GUI... ########" 
echo "##############################################"
init 4
sleep 2
init 3
exit 0
