#!/bin/sh

yum -y install bzip2
yum -y install npm
yum -y install node
npm --registry https://registry.npm.taobao.org install casperjs phantomjs -g
casperjs --version
phantomjs  --version

fc-list |grep 'Droid Sans Fallback'

fonts=$(fc-list | grep 'DroidSans' -c)
echo $fonts
if [ $fonts -eq 0 ]; then
    wget -N https://www.ffonts.net/Droid-Sans-Fallback.font.zip
    yum -y install unzip
    mkdir -p /usr/share/fonts/win
    unzip Droid-Sans-Fallback.font.zip Droid*.ttf -d /usr/share/fonts/win

    fc-list | grep 'DroidSans'

    echo 'done'
else
    fc-list | grep 'DroidSans'
    echo 'done'
fi
