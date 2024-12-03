#!/bin/sh
wget http://192.168.254.167:8080/ais.tgz
tar -zxvf ais.tgz
rm ais.tgz
at_cmd at+zreset
reboot