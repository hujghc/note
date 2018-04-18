#!/bin/sh

fc-list |grep 'SourceHanSerifSC_SB-H'

fonts=$(fc-list | grep 'SourceHanSerifSC_SB-H' -c)
echo $fonts
if [ $fonts -eq 0 ]; then
    wget -N https://github.com/adobe-fonts/source-han-serif/raw/release/OTF/SourceHanSerifSC_SB-H.zip
    yum -y install unzip
    mkdir -p /usr/share/fonts/win
    unzip SourceHanSerifSC_SB-H.zip SourceHanSerifSC*.otf -d /usr/share/fonts/win

    fc-list | grep 'SourceHanSerifSC_SB-H'

    echo 'done'
else
    fc-list | grep 'SourceHanSerifSC_SB-H'
    echo 'done'
fi
