apt-get update
apt-get install -y \
  git \
  sudo \
  wget \
  openssl \
  libssl-dev \
  build-essential

git clone https://github.com/Creepsky/creepMiner.git creepMiner-src
cd creepMiner-src
git checkout f318a63749ab6cfcf2629ade255b4bdca486a39d
./install-poco.sh
make
mv bin ../creepMiner

cd ..
rm -r creepMiner-src

cd creepMiner
chmod 755 run.sh
rm libeay64MD.dll
rm ssleay64MD.dll
rm rootcert.pem
rm mining.conf

export SUDO_FORCE_REMOVE=yes
apt-get remove -y build-essential git sudo wget
apt autoremove -y
apt-get clean
