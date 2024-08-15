#!/bin/sh
bo_tomcat_home=/pkmj/apache-tomcat-BackOffice
sudo rm -rf "$bo_tomcat_home"/logs/*
sudo rm -rf /pkmj/backoffice/logs/*
sudo "$bo_tomcat_home"/bin/startup.sh
sudo sleep 3s
echo '------ backoffice started, waiting LOG file ready...... ------'
sudo sleep 30s
new_bo_log_file=BackOffice.$(date +%Y-%m-%d).log
sudo less /pkmj/backoffice/logs/"$new_bo_log_file" | grep ERROR
echo '------ backoffice checkLogs Done ------'
