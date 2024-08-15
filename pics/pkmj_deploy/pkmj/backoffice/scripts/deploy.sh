#!/bin/sh
sudo /pkmj/backoffice/scripts/backup.sh
bo_tomcat_home=/pkmj/apache-tomcat-BackOffice
sudo cp -rf /pkmj/backoffice/*.properties /pkmj/backoffice/upload/ROOT/WEB-INF/classes/
#sudo cp -rf /pkmj/backoffice/*.xml /pkmj/backoffice/upload/ROOT/WEB-INF/classes/
sudo cp -rf /pkmj/backoffice/lib /pkmj/backoffice/upload/ROOT/WEB-INF/
sudo mv -f /pkmj/backoffice/upload/*.jar /pkmj/backoffice/upload/ROOT/WEB-INF/lib/
sudo rm -rf "$bo_tomcat_home"/webapps/ROOT
sudo mv -f /pkmj/backoffice/upload/ROOT "$bo_tomcat_home"/webapps/