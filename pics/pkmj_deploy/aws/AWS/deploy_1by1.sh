#!/bin/sh
sudo ps aux | grep java
echo '------------------------- doing deploy all server -------------------------'
sudo /pkmj/lobbyserver/scripts/deploy.sh
echo '------------------------- lobbyserver deploy done -------------------------'
sudo /pkmj/httpserver/scripts/deploy.sh
echo '------------------------- httpserver deploy done -------------------------'
sudo /pkmj/backoffice/scripts/deploy.sh
echo '------------------------- backoffice deploy done -------------------------'
sudo /pkmj/gameserver/scripts/deploy.sh
echo '------------------------- gameserver deploy done -------------------------'
sudo /pkmj/airobot/scripts/deploy.sh
echo '------------------------- airobot deploy done -------------------------'
sudo /pkmj/dataconsolidate/scripts/deploy.sh
echo '------------------------- dataconsolidate deploy done -------------------------'
sudo ps aux | grep java
