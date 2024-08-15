#!/bin/sh
bo_tomcat_home=/pkmj/apache-tomcat-NewBackOffice
sudo rm -rf "$bo_tomcat_home"/logs/*
sudo rm -rf /pkmj/newbackoffice/logs/*
sudo "$bo_tomcat_home"/bin/startup.sh
sudo sleep 3s
echo '------ newbackoffice started, waiting LOG file ready...... ------'
sudo sleep 30s
new_bo_log_file=NewBackOffice.$(date +%Y-%m-%d).log
sudo less /pkmj/newbackoffice/logs/"$new_bo_log_file" | grep ERROR
echo '------ newbackoffice checkLogs Done ------'
