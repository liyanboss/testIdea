#!/bin/sh
if pgrep -f 'apache-activemq-5.15.3_61626' > /dev/null 2>&1
then
	echo $(date) '-----activemq_61626 is running-----'
	if cat /pkmj/activemq_61626/apache-activemq/data/activemq.log | grep 'OutOfMemoryError' > /dev/null 2>&1
	then
		echo $(date) '----------------------------------------The OutOfMemoryError Happen---------------'
		sudo /pkmj/activemq_61626/scripts/restart_amq.sh
		echo $(date) '----------------------------------------activemq_61626 restarted---------------'
	else
		echo $(date) '-----No OutOfMemoryError Appear-----'
	fi
else
	echo $(date) '----------------------------------------activemq_61626 is shutdown already---------------'
fi
