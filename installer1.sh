#!/bin/sh
echo "##############################################"
echo "############ KEYADDER[Bissfeed] ##############"
echo "##############################################"
wget -O /tmp/enigma2-plugin-extensions-keyadder_v1.0_all.deb "https://github.com/ismail9875/keys/blob/main/enigma2-plugin-extensions-keyadder_v1.0_all.deb?raw=true"
opkg install --force-overwrite "--no-check-certificate" /tmp/*.deb
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
