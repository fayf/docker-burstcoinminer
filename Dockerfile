FROM ubuntu:16.04
COPY setup_packages.sh /setup_packages.sh
RUN /setup_packages.sh
COPY compile.sh /compile.sh
RUN /compile.sh
COPY cleanup.sh /cleanup.sh
RUN /cleanup.sh
COPY run.sh /creepMiner/run.sh
ENV SET_TIMEZONE false
ENV TIMEZONE Etc/UTC
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
