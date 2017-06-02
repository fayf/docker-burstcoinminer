FROM ubuntu:16.04
COPY creepMiner /creepMiner
ENTRYPOINT /creepMiner/run.sh /conf/mining.conf
