#!/bin/sh
sudo rm -rf /pkmj/apache-activemq/data
sudo rm -rf /pkmj/apache-activemq/tmp
sudo nohup /pkmj/apache-activemq/bin/activemq start > /pkmj/activemq/scripts/nohup_amq_process_id.out &
