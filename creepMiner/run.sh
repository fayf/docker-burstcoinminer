#!/bin/sh
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export LD_LIBRARY_PATH
cd $(dirname $0)
./creepMiner $@
