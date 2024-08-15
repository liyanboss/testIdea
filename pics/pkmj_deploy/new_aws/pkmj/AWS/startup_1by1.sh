#!/bin/sh
echo '------------------------- doing startup all server -------------------------'
sudo /pkmj/lobbyserver/scripts/startup.sh
echo '------------------------- lobbyserver startup done -------------------------'
sudo /pkmj/httpserver/scripts/startup.sh
echo '------------------------- httpserver startup done -------------------------'
sudo /pkmj/backoffice/scripts/startup.sh
echo '------------------------- backoffice startup done -------------------------'
echo sudo /pkmj/newbackoffice/scripts/startup.sh
echo '------------------------- newbackoffice startup done -------------------------'
sudo /pkmj/gameserver/scripts/startup.sh
echo '------------------------- gameserver startup done -------------------------'

sudo /pkmj/AWS/bots_startup_1by1.sh
echo '------------------------- airobot startup done -------------------------'
sudo /pkmj/dataconsolidate/scripts/startup.sh
echo '------------------------- dataconsolidate startup done -------------------------'

