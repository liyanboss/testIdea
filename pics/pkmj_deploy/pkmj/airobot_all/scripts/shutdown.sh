#!/bin/sh
#sudo ps aux | grep -v 'grep' | grep -v 'nohup' | egrep "AiRobotLauncher" | awk '{system("sudo kill -9 "$2)}'
sudo ps aux | grep -v 'grep' | grep -v 'nohup' | egrep "airobot_all" | awk '{system("sudo kill -9 "$2)}'
