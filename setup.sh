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
git checkout 41abf49fd4b248840e7aef9584589f7be53bb34a 
./install-poco.sh
cmake . -DNO_GPU=ON
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
