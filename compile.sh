#!/bin/sh
git clone https://github.com/Creepsky/creepMiner.git creepMiner-src

cd creepMiner-src
git checkout 0ea0a02bc9f7c2871660fa1ee1eacdddf4f7490c

conan install . --build=missing -s compiler.libcxx=libstdc++11
cmake . -DNO_GPU=ON
make -j4
