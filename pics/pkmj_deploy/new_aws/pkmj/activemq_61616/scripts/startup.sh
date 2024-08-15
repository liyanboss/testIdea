#!/bin/sh
sudo rm -rf /pkmj/activemq_61616/apache-activemq/data
sudo rm -rf /pkmj/activemq_61616/apache-activemq/tmp
sudo nohup /pkmj/activemq_61616/apache-activemq/bin/activemq start > /pkmj/activemq_61616/scripts/nohup_amq_process_id.out &
sudo sleep 2s
