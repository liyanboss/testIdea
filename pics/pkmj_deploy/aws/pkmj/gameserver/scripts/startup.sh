#!/bin/sh
sudo rm -rf /pkmj/gameserver/logs/*
sudo nohup java -Xms1G -Xmx1G -Djdk.xml.entityExpansionLimit=0 -classpath ".:/pkmj/gameserver/running/*" com.pkmj.game.GameServerLauncher > /pkmj/gameserver/logs/nohup_game.out &
sudo sleep 3s
echo '------ gameserver started, waiting LOG file ready...... ------'
#sudo sleep 180s
sudo sleep 18s
new_gs_log_file=pkmj.$(date +%Y-%m-%d).log
sudo less /pkmj/gameserver/logs/"$new_gs_log_file" | grep ERROR
echo '------ gameserver checkLogs Done ------'
