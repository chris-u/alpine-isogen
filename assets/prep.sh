#!/bin/sh

SUDO='' abuild-keygen -a -n -i

cd ~/

git clone --depth=1 https://gitlab.alpinelinux.org/alpine/aports.git

cp /tmp/assets/genapkovl-lxd.sh /tmp/assets/mkimg.lxd.sh /root/aports/scripts/

chmod 755 /root/aports/scripts/*.sh 


