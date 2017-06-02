FROM ubuntu:16.04
COPY creepMiner /creepMiner
RUN apt-get update; \
  apt-get install libssl-dev -y;
ENTRYPOINT /creepMiner/run.sh /conf/mining.conf
