#!/bin/sh
xxx_key=GameServerLauncher
if (ps aux | grep -v 'grep' | grep -v 'nohup' | grep "$xxx_key") > /dev/null 2>&1
then
  echo $(date) '-----gameserver is running-----'
  ps aux | grep -v 'grep' | grep -v 'nohup' | grep "$xxx_key"
else
  echo $(date) '----------------------------------------gameserver is shutdown already---------------'
fi
