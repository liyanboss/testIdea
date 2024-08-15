#!/bin/sh
sudo ps aux | grep java
echo '------------------------- doing shutdown all server -------------------------'
sudo /pkmj/lobbyserver/scripts/shutdown.sh
echo '------------------------- lobbyserver shutdown done -------------------------'
sudo /pkmj/httpserver/scripts/shutdown.sh
echo '------------------------- httpserver shutdown done -------------------------'
sudo /pkmj/backoffice/scripts/shutdown.sh
echo '------------------------- backoffice shutdown done -------------------------'
echo sudo /pkmj/newbackoffice/scripts/shutdown.sh
echo '------------------------- newbackoffice shutdown done -------------------------'
sudo /pkmj/gameserver/scripts/shutdown.sh
echo '------------------------- gameserver shutdown done -------------------------'
sudo ps aux | grep java
