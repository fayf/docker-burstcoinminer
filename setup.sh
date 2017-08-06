apt update
apt install -y \
  build-essential \
  git \
  libssl-dev \
  openssl \
  sudo \
  tzdata \
  wget \
  cmake

git clone https://github.com/Creepsky/creepMiner.git creepMiner-src
cd creepMiner-src
git checkout ca5cc1d3877cf6ede004ff42fceeaa8eb7862e4b 
./install-poco.sh
cmake .
make
mkdir /creepMiner
mv bin/creepMiner ../creepMiner/
mv bin/public ../creepMiner/public

cd ..
rm -r creepMiner-src

cd creepMiner
rm libeay64MD.dll
rm ssleay64MD.dll

cd public
sed -i 's/"%ip%"/window.location.host/g' index.html
cd js
sed -i 's/Sound = true/Sound = false/g' miner.js

export SUDO_FORCE_REMOVE=yes
apt remove -y build-essential git sudo wget
apt autoremove -y
apt clean
