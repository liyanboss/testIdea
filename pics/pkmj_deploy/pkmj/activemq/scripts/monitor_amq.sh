#!/bin/sh
if pgrep -f 'apache-activemq' > /dev/null 2>&1
then
	echo $(date) '-----activemq is running-----'
	if cat /pkmj/apache-activemq/data/activemq.log | grep 'OutOfMemoryError' > /dev/null 2>&1
	then
		echo $(date) '----------------------------------------The OutOfMemoryError Happen---------------'
		sudo /pkmj/activemq/scripts/restart_amq.sh
		echo $(date) '----------------------------------------activemq restarted---------------'
	else
		echo $(date) '-----No OutOfMemoryError Appear-----'
	fi
else
	echo $(date) '----------------------------------------activemq is shutdown already---------------'
fi
