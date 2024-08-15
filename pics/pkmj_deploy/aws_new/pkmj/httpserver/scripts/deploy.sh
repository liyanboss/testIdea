#!/bin/sh
sudo /pkmj/httpserver/scripts/backup.sh
hs_tomcat_home=/pkmj/apache-tomcat-HttpServer
sudo cp -rf /pkmj/httpserver/*.properties /pkmj/httpserver/upload/HttpServer/WEB-INF/classes/
sudo cp -rf /pkmj/httpserver/lib /pkmj/httpserver/upload/HttpServer/WEB-INF/
sudo mv -f /pkmj/httpserver/upload/*.jar /pkmj/httpserver/upload/HttpServer/WEB-INF/lib/
sudo rm -rf "$hs_tomcat_home"/webapps/HttpServer
sudo mv -f /pkmj/httpserver/upload/HttpServer "$hs_tomcat_home"/webapps/
