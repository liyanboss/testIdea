#!/bin/sh
sudo ps aux | grep -v 'grep' | grep -v 'nohup' | egrep "LobbyServerLauncher" | awk '{system("sudo kill -9 "$2)}'
