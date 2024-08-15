#!/bin/sh
new_backup=backup_61616_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/activemq_61616/"$new_backup"
sudo cp -rf /pkmj/activemq_61616/apache-activemq/data /pkmj/activemq_61616/"$new_backup"/
sudo cp -rf /pkmj/activemq_61616/apache-activemq/tmp /pkmj/activemq_61616/"$new_backup"/
