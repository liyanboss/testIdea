#!/bin/sh
sudo rm -rf /pkmj/lobbyserver/logs/*

sudo nohup java -Xms4G -Xmx4G -Djdk.xml.entityExpansionLimit=0 -Djava.util.secureRandomSeed=true -Dlogback.configurationFile="/pkmj/lobbyserver/running/logback.xml" -classpath ".:/pkmj/lobbyserver/running/*" com.pkmj.lobby.LobbyServerLauncher > /pkmj/lobbyserver/logs/nohup_lobby.out &

#sudo nohup java -Xms4G -Xmx4G -Djdk.xml.entityExpansionLimit=0 -classpath ".:/pkmj/lobbyserver/running/*" com.pkmj.lobby.LobbyServerLauncher > /pkmj/lobbyserver/logs/nohup_lobby.out &

sudo sleep 3s
echo '------ lobbyserver started, waiting LOG file ready...... ------'
sudo sleep 90s
new_ls_log_file=pkmj.$(date +%Y-%m-%d).log
sudo less /pkmj/lobbyserver/logs/"$new_ls_log_file" | grep ERROR
echo '------ lobbyserver checkLogs Done ------'
