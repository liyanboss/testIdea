#!/bin/sh
new_backup=backup_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/activemq/"$new_backup"
sudo cp -rf /pkmj/apache-activemq/data /pkmj/activemq/"$new_backup"/
sudo cp -rf /pkmj/apache-activemq/tmp /pkmj/activemq/"$new_backup"/
