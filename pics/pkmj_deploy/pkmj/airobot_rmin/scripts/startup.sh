#!/bin/sh
ai_robot_home=/pkmj/airobot_rmin
sudo rm -rf "$ai_robot_home"/logs/*
sudo nohup java -Xms256M -Xmx256M -Djdk.xml.entityExpansionLimit=0 -Dlogback.configurationFile="$ai_robot_home/running/logback.xml" -classpath ".:$ai_robot_home/running/*" com.pkmj.robot.main.AiRobotLauncher > "$ai_robot_home"/logs/nohup_airobot.out &
sudo sleep 3s
echo $ai_robot_home '------ started, waiting LOG file ready...... ------'
sudo sleep 10s
new_ar_log_file=airobot.$(date +%Y-%m-%d).log
sudo less "$ai_robot_home"/logs/"$new_ar_log_file" | grep ERROR
echo $ai_robot_home '------ checkLogs Done ------'
