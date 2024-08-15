#!/bin/sh
sudo /pkmj/gameserver/scripts/backup.sh
sudo cp -rf /pkmj/gameserver/*.properties /pkmj/gameserver/upload/
sudo cp -rf /pkmj/gameserver/*.xml /pkmj/gameserver/upload/
sudo cp -rf /pkmj/gameserver/*.jar /pkmj/gameserver/upload/
sudo rm -rf /pkmj/gameserver/running/*
sudo mv -f /pkmj/gameserver/upload/* /pkmj/gameserver/running/
