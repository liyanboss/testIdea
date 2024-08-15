#!/bin/sh
sudo /pkmj/backoffice/scripts/backup.sh
bo_tomcat_home=/pkmj/apache-tomcat-BackOffice
sudo cp -rf /pkmj/backoffice/*.properties /pkmj/backoffice/upload/ROOT/WEB-INF/classes/
sudo cp -rf /pkmj/backoffice/lib /pkmj/backoffice/upload/ROOT/WEB-INF/
sudo mv -f /pkmj/backoffice/upload/*.jar /pkmj/backoffice/upload/ROOT/WEB-INF/lib/

sudo find /pkmj/backoffice/upload/ROOT/WEB-INF/classes/dummy_robot_arrange/ -type f -not -name 'backoffice_robot__dm2016.properties' -delete

sudo rm -rf "$bo_tomcat_home"/webapps/BackOffice
sudo mv -f /pkmj/backoffice/upload/ROOT /pkmj/backoffice/upload/BackOffice
sudo mv -f /pkmj/backoffice/upload/BackOffice "$bo_tomcat_home"/webapps/
