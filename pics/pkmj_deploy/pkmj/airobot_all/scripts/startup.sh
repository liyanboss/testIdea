#!/bin/sh
sudo rm -rf /pkmj/airobot_all/logs/*
#sudo nohup java -Xms2G -Xmx2G -Djdk.xml.entityExpansionLimit=0 -classpath ".:/pkmj/airobot_all/running/*" com.pkmj.robot.main.AiRobotLauncher > /pkmj/airobot_all/logs/nohup_airobot.out &
sudo nohup java -Xms2G -Xmx2G -Djdk.xml.entityExpansionLimit=0 -Dlogback.configurationFile="/pkmj/airobot_all/running/logback.xml" -classpath ".:/pkmj/airobot_all/running/*" com.pkmj.robot.main.AiRobotLauncher > /pkmj/airobot_all/logs/nohup_airobot.out &
sudo sleep 3s
echo '------ airobot_all started, waiting LOG file ready...... ------'
sudo sleep 10s
new_ar_log_file=airobot.$(date +%Y-%m-%d).log
sudo less /pkmj/airobot_all/logs/"$new_ar_log_file" | grep ERROR
echo '------ airobot_all checkLogs Done ------'
