#!/bin/bash
notify-send "proton-GE-Latest install started"
rm -rf /tmp/Proton-GE-Latest
mkdir -p /tmp/Proton-GE-Latest
cd /tmp/Proton-GE-Latest
wget $(curl -s https://api.github.com/repos/GloriousEggroll/proton-ge-custom/releases/latest | grep "browser_download_url" | cut -d '"' -f 4 | sed -n '2p')
archive=$(ls | grep 'tar')
mkdir -p ~/.local/share/Steam/compatibilitytools.d//Proton-GE-Latest
tar -xvf $archive
cp -rf ./${archive::-7}/* ~/.local/share/Steam/compatibilitytools.d//Proton-GE-Latest/
rm -rf /tmp/Proton-GE-Latest
notify-send "${archive::-7} install finished"
