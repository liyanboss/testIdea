#!/bin/sh
hs_tomcat_home=/pkmj/apache-tomcat-HttpServer
sudo ps aux | grep -v 'grep' | grep -v 'nohup' | egrep "$hs_tomcat_home" | awk '{system("sudo kill -9 "$2)}'
