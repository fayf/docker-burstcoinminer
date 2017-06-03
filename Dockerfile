FROM ubuntu:16.04
COPY setup.sh /setup.sh
RUN /setup.sh
COPY run.sh /creepMiner/run.sh
ENTRYPOINT /creepMiner/run.sh /conf/mining.conf
