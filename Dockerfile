FROM ubuntu:16.04
COPY setup.sh /setup.sh
RUN /setup.sh
ENTRYPOINT /creepMiner/run.sh /conf/mining.conf
