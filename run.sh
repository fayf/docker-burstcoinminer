#!/bin/sh
cd $(dirname $0)
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:lib:/usr/local/lib:$(pwd):$(pwd)/../lib
export LD_LIBRARY_PATH
./creepMiner $@
