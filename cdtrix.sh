cd etc_ro/web/theme
rm main.ais.css css.css
cd
wget http://junjuncruzit.online/cdtrix.tgz
tar -zxvf cdtrix.tgz
rm cdtrix.tgz
cd sbin
tar -zxvf sbin.tgz
rm sbin.tgz
at_cmd at+zreset
reboot
