#!/bin/sh
hs_tomcat_home=/pkmj/apache-tomcat-HttpServer
new_backup=backup_HS_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/httpserver/"$new_backup"
sudo cp -rf "$hs_tomcat_home"/webapps/HttpServer /pkmj/httpserver/"$new_backup"/
sudo cp -rf /pkmj/httpserver/logs /pkmj/httpserver/"$new_backup"/
sudo cp -rf "$hs_tomcat_home"/logs /pkmj/httpserver/"$new_backup"/
