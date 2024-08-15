#!/bin/sh
if pgrep -f 'apache-activemq-5.15.3_61616' > /dev/null 2>&1
then
	echo $(date) '-----activemq_61616 is running-----'
	if cat /pkmj/activemq_61616/apache-activemq/data/activemq.log | grep 'OutOfMemoryError' > /dev/null 2>&1
	then
		echo $(date) '----------------------------------------The OutOfMemoryError Happen---------------'
		sudo /pkmj/activemq_61616/scripts/restart_amq.sh
		echo $(date) '----------------------------------------activemq_61616 restarted---------------'
	else
		echo $(date) '-----No OutOfMemoryError Appear-----'
	fi
else
	echo $(date) '----------------------------------------activemq_61616 is shutdown already---------------'
fi
