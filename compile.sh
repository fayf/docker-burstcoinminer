#!/bin/sh
cd creepMiner-src
conan install . --build=missing -s compiler.libcxx=libstdc++11
cmake . -DNO_GPU=ON
make -j4
