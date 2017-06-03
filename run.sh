#!/bin/sh
cd $(dirname $0)
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export LD_LIBRARY_PATH
./creepMiner $@