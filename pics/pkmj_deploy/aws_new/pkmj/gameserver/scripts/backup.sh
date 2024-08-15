#!/bin/sh
new_backup=backup_GS_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/gameserver/"$new_backup"
sudo cp -rf /pkmj/gameserver/running /pkmj/gameserver/"$new_backup"/
sudo cp -rf /pkmj/gameserver/logs /pkmj/gameserver/"$new_backup"/
