#!/bin/sh
sudo ps aux | grep -v 'grep' | grep -v 'nohup' | egrep "apache-activemq" | awk '{system("sudo kill -9 "$2)}'
