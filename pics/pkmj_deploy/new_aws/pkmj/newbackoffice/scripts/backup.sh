#!/bin/sh
bo_tomcat_home=/pkmj/apache-tomcat-NewBackOffice
new_backup=backup_NBO_$(date +%Y%m%d_%H%M%S)
sudo mkdir /pkmj/newbackoffice/"$new_backup"
sudo cp -rf "$bo_tomcat_home"/webapps/ROOT /pkmj/newbackoffice/"$new_backup"/
sudo cp -rf /pkmj/newbackoffice/logs /pkmj/newbackoffice/"$new_backup"/
sudo cp -rf "$bo_tomcat_home"/logs /pkmj/newbackoffice/"$new_backup"/
