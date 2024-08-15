#!/bin/sh
sudo rm -rf /pkmj/gameserver/logs/*

sudo nohup java -Xms4G -Xmx4G -Djdk.xml.entityExpansionLimit=0 -Djava.util.secureRandomSeed=true -Dlogback.configurationFile="/pkmj/gameserver/running/logback.xml" -classpath ".:/pkmj/gameserver/running/*" com.pkmj.game.GameServerLauncher > /pkmj/gameserver/logs/nohup_game.out &

#sudo nohup java -Xms4G -Xmx4G -Djdk.xml.entityExpansionLimit=0 -classpath ".:/pkmj/gameserver/running/*" com.pkmj.game.GameServerLauncher > /pkmj/gameserver/logs/nohup_game.out &

sudo sleep 3s
echo '------ gameserver started, waiting LOG file ready...... ------'
sudo sleep 150s
new_gs_log_file=pkmj.$(date +%Y-%m-%d).log
sudo less /pkmj/gameserver/logs/"$new_gs_log_file" | grep ERROR
echo '------ gameserver checkLogs Done ------'
