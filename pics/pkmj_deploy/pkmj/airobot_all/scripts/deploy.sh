#!/bin/sh
sudo /pkmj/airobot_all/scripts/backup.sh
sudo cp -rf /pkmj/airobot_all/*.properties /pkmj/airobot_all/upload/
sudo cp -rf /pkmj/airobot_all/*.xml /pkmj/airobot_all/upload/
sudo cp -rf /pkmj/airobot_all/*.jar /pkmj/airobot_all/upload/
sudo rm -rf /pkmj/airobot_all/running/*
sudo mv -f /pkmj/airobot_all/upload/* /pkmj/airobot_all/running/
