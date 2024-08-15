#!/bin/sh
hs_tomcat_home=/pkmj/apache-tomcat-HttpServer
sudo rm -rf "$hs_tomcat_home"/logs/*
sudo rm -rf /pkmj/httpserver/logs/*
sudo "$hs_tomcat_home"/bin/startup.sh
sudo sleep 3s
echo '------ httpserver started, waiting LOG file ready...... ------'
sudo sleep 30s
new_hs_log_file=HttpServer.$(date +%Y-%m-%d).log
sudo less /pkmj/httpserver/logs/"$new_hs_log_file" | grep ERROR
echo '------ httpserver checkLogs Done ------'
