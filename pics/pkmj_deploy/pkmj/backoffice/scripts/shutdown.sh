#!/bin/sh
bo_tomcat_home=/pkmj/apache-tomcat-BackOffice
sudo ps aux | grep -v 'grep' | grep -v 'nohup' | egrep "$bo_tomcat_home" | awk '{system("sudo kill -9 "$2)}'