#!/bin/sh
if [ "$SET_TIMEZONE" = "true" ]; then
	ln -fs /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
fi

/creepMiner/run.sh --config=/conf/mining.conf
