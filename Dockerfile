FROM ubuntu:16.04
COPY setup.sh /setup.sh
RUN /setup.sh
COPY run.sh /creepMiner/run.sh
ENV SET_TIMEZONE false
ENV TIMEZONE Etc/UTC
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
