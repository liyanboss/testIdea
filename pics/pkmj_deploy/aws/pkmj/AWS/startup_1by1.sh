#!/bin/sh
#sudo ps aux | grep java
echo '------------------------- doing startup all server -------------------------'
sudo /pkmj/lobbyserver/scripts/startup.sh
echo '------------------------- lobbyserver startup done -------------------------'
sudo sleep 5s
sudo /pkmj/gameserver/scripts/startup.sh
echo '------------------------- gameserver startup done -------------------------'
sudo sleep 5s
sudo /pkmj/backoffice/scripts/startup.sh
echo '------------------------- backoffice startup done -------------------------'
sudo sleep 5s
sudo /pkmj/newbackoffice/scripts/startup.sh
echo '------------------------- newbackoffice startup done -------------------------'
sudo sleep 5s
sudo /pkmj/httpserver/scripts/startup.sh
echo '------------------------- httpserver startup done -------------------------'
sudo sleep 5s
#sudo ps aux | grep java
sudo /pkmj/AWS/bots_startup_1by1.sh
echo '------------------------- all airobots startup done -------------------------'
sudo sleep 5s
sudo /pkmj/dataconsolidate/scripts/startup.sh
echo '------------------------- dataconsolidate startup done -------------------------'
sudo sleep 5s
#sudo ps aux | grep java
