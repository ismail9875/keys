echo "##############################################"
echo "############ KEYADDER[Bissfeed] ##############"
echo "##############################################"

#Cheking OS (if OS is opensource will be install ipk file, else deb file will be install)

if [ $OS = "Opensource"]; then
    wget -O /tmp/enigma2-plugin-extensions-keyadder_v1.1_all.ipk "https://github.com/karimSATPRO/AddKey/blob/main/enigma2-plugin-extensions-keyadder_v1.1_all.ipk?raw=true"
    opkg install --force-overwrite /tmp/*.ipk
else
    wget -O /tmp/enigma2-plugin-extensions-keyadder_v1.1_all.deb "https://github.com/karimSATPRO/AddKey/blob/main/enigma2-plugin-extensions-keyadder_v1.1_all.deb?raw=true"

    dpkg install --force-overwrite /tmp/*.deb
fi
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
