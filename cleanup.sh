#!/bin/sh
mkdir /creepMiner
mv /creepMiner-src/bin/creepMiner /creepMiner/
mv /creepMiner-src/resources/public /creepMiner/public

# Make the web interface compatible with https
sed -i 's/"ws:\/\/"/(location.protocol === "https:" ? "wss:\/\/" : "ws:\/\/")/g' creepMiner/public/js/general.js

rm -r /creepMiner-src

export SUDO_FORCE_REMOVE=yes
apt remove -y git cmake
apt autoremove -y
apt clean
