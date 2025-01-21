#!/bin/bash
notify-send "proton-GE-Latest install started"
mkdir -p /tmp/Proton-GE-Latest
cd /tmp/Proton-GE-Latest
wget $(curl -s https://api.github.com/repos/GloriousEggroll/proton-ge-custom/releases/latest | grep "browser_download_url" | cut -d '"' -f 4 | sed -n '2p')
archive=$(ls | grep 'tar')
mkdir -p ~/.steam/root/compatibilitytools.d/Proton-GE-Latest
tar -xvf $archive  --overwrite-dir --recursive-unlink -C ~/.steam/root/compatibilitytools.d/Proton-GE-Latest
rm /tmp/Proton-GE-Latest
notify-send "proton-GE-Latest install finished"
