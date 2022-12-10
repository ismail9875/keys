echo "##############################################"
echo "############ KEYADDER[Bissfeed] ##############"
echo "##############################################"

#Cheking OS
if [ -f /etc/apt/apt.conf ] ; then
    STATUS='/var/lib/dpkg/status'
    OS='DreamOS'
elif [ -f /etc/opkg/opkg.conf ] ; then
   STATUS='/var/lib/opkg/status'
   OS='Opensource'
fi
if [$OS='DreamOS'] ; then
    wget -O /tmp/enigma2-plugin-extensions-keyadder_v1.1_all.deb "https://github.com/karimSATPRO/AddKey/blob/main/enigma2-plugin-extensions-keyadder_v1.1_all.deb?raw=true"
    dpkg install --force-overwrite /tmp/*.deb
    else
        wget -O /tmp/enigma2-plugin-extensions-keyadder_v1.1_all.ipk "https://github.com/karimSATPRO/AddKey/blob/main/enigma2-plugin-extensions-keyadder_v1.1all.ipk"
        opkg install --force-overwrite /tmp/*.ipk
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
