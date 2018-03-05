#!/bin/sh
mkdir /creepMiner
mv /creepMiner-src/bin/creepMiner /creepMiner/
mv /creepMiner-src/resources/public /creepMiner/public

rm -r /creepMiner-src

export SUDO_FORCE_REMOVE=yes
apt remove -y git cmake
apt autoremove -y
apt clean
