#!/bin/sh
bo_tomcat_home=/pkmj/apache-tomcat-BackOffice
new_backup=backup_BO_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/backoffice/"$new_backup"
sudo cp -rf "$bo_tomcat_home"/webapps/ROOT /pkmj/backoffice/"$new_backup"/
sudo cp -rf /pkmj/backoffice/logs /pkmj/backoffice/"$new_backup"/
sudo cp -rf "$bo_tomcat_home"/logs /pkmj/backoffice/"$new_backup"/
