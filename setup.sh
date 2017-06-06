apt-get update
apt-get install -y \
  build-essential \
  git \
  libssl-dev \
  openssl \
  sudo \
  tzdata \
  wget

git clone https://github.com/Creepsky/creepMiner.git creepMiner-src
cd creepMiner-src
git checkout f318a63749ab6cfcf2629ade255b4bdca486a39d
./install-poco.sh
make
mkdir /creepMiner
mv bin/creepMiner ../creepMiner/
mv bin/public ../creepMiner/public

cd ..
rm -r creepMiner-src

cd creepMiner
rm libeay64MD.dll
rm ssleay64MD.dll

export SUDO_FORCE_REMOVE=yes
apt-get remove -y build-essential git sudo wget
apt autoremove -y
apt-get clean
