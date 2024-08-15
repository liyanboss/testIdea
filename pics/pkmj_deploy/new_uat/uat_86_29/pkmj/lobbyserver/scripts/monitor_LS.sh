#!/bin/sh
xxx_key=LobbyServerLauncher
if (ps aux | grep -v 'grep' | grep -v 'nohup' | grep "$xxx_key") > /dev/null 2>&1
then
  echo $(date) '-----lobbyserver is running-----'
  ps aux | grep -v 'grep' | grep -v 'nohup' | grep "$xxx_key"
else
  echo $(date) '----------------------------------------lobbyserver is shutdown already---------------'
fi
