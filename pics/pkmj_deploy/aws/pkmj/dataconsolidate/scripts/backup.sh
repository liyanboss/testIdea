#!/bin/sh
new_backup=backup_DC_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/dataconsolidate/"$new_backup"
sudo cp -rf /pkmj/dataconsolidate/running /pkmj/dataconsolidate/"$new_backup"/
sudo cp -rf /pkmj/dataconsolidate/logs /pkmj/dataconsolidate/"$new_backup"/
