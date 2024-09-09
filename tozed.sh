#!/bin/sh
curl http://junjuncruzit.online/tozed.tgz -o /tmp/firmware.tgz
echo "Checking hash!"
hash=$(md5sum /tmp/firmware.tgz | awk '{print $1}')
echo "$hash = 9f998b33d18c9bbba9f82f249e84afe6"
if [ $hash == '9f998b33d18c9bbba9f82f249e84afe6' ]
then
echo "Same!"
mv /etc_ro/tmp/firmware* /etc_ro/tmp/firmware.tgz
tar -zxvf /tmp/firmware.tgz -C /
at_cmd at+zreset
reboot
else
echo "Not same!"
fi
