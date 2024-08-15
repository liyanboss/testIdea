#!/bin/sh
ai_robot_home=/pkmj/airobot_pkdn
new_backup=backup_pkdn_$(date +%Y%m%d_%H%M%S)
sudo mkdir "$ai_robot_home"/"$new_backup"
sudo cp -rf "$ai_robot_home"/running "$ai_robot_home"/"$new_backup"/
sudo cp -rf "$ai_robot_home"/logs "$ai_robot_home"/"$new_backup"/
