#!/bin/sh
new_backup=backup_61626_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/activemq_61626/"$new_backup"
sudo cp -rf /pkmj/activemq_61626/apache-activemq/data /pkmj/activemq_61626/"$new_backup"/
sudo cp -rf /pkmj/activemq_61626/apache-activemq/tmp /pkmj/activemq_61626/"$new_backup"/
