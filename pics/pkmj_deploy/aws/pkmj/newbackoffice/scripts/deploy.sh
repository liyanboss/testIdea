#!/bin/sh
sudo /pkmj/newbackoffice/scripts/backup.sh
bo_tomcat_home=/pkmj/apache-tomcat-NewBackOffice
sudo cp -rf /pkmj/newbackoffice/*.properties /pkmj/newbackoffice/upload/ROOT/WEB-INF/classes/
sudo cp -rf /pkmj/newbackoffice/*.xml /pkmj/newbackoffice/upload/ROOT/WEB-INF/classes/
sudo cp -rf /pkmj/newbackoffice/lib /pkmj/newbackoffice/upload/ROOT/WEB-INF/
sudo mv -f /pkmj/newbackoffice/upload/*.jar /pkmj/newbackoffice/upload/ROOT/WEB-INF/lib/
sudo rm -rf "$bo_tomcat_home"/webapps/ROOT
sudo mv -f /pkmj/newbackoffice/upload/ROOT "$bo_tomcat_home"/webapps/
