#!/bin/sh
ai_robot_home=/pkmj/airobot_big2
sudo ps aux | grep -v 'grep' | grep -v 'nohup' | egrep "$ai_robot_home" | awk '{system("sudo kill -9 "$2)}'
