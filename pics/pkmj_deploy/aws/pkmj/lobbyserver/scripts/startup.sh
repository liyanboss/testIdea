#!/bin/sh
sudo rm -rf /pkmj/lobbyserver/logs/*
sudo nohup java -Xms1G -Xmx1G -Djdk.xml.entityExpansionLimit=0 -classpath ".:/pkmj/lobbyserver/running/*" com.pkmj.lobby.LobbyServerLauncher > /pkmj/lobbyserver/logs/nohup_lobby.out &
sudo sleep 3s
echo '------ lobbyserver started, waiting LOG file ready...... ------'
#sudo sleep 90s
sudo sleep 9s
new_ls_log_file=pkmj.$(date +%Y-%m-%d).log
sudo less /pkmj/lobbyserver/logs/"$new_ls_log_file" | grep ERROR
echo '------ lobbyserver checkLogs Done ------'
