#!/bin/sh
# "---------------------------------------"
# "---- Add keys using telnet command ----"
# "----       github/ismail9875       ----"
# "---------------------------------------"

echo "================================="
echo "=====  keys adder by shell  ====="
echo "================================="
echo "Please enter Service id : ";read serviceId;
echo "Please enter Service VideoPid : "; read VPid
echo "Please enter Service Keys : ";read serviceKey;
echo "Please entre the name of channel : " ; read serviceName
echo "F ${serviceId}${VPid} 00000000 ${serviceKey} ; ${serviceName}" | tee a- >> /etc/tuxbox/config/SoftCam.Key
echo "key has been add to SoftCam.Key"
echo "================================="
echo "== Thanks for using our script =="
echo "================================="

exit 0
