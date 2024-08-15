#!/bin/sh
new_backup=backup_LS_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/lobbyserver/"$new_backup"
sudo cp -rf /pkmj/lobbyserver/running /pkmj/lobbyserver/"$new_backup"/
sudo cp -rf /pkmj/lobbyserver/logs /pkmj/lobbyserver/"$new_backup"/
