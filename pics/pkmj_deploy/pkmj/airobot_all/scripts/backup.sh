#!/bin/sh
new_backup=backup_all_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/airobot_all/"$new_backup"
sudo cp -rf /pkmj/airobot_all/running /pkmj/airobot_all/"$new_backup"/
sudo cp -rf /pkmj/airobot_all/logs /pkmj/airobot_all/"$new_backup"/
