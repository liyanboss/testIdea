#!/bin/sh
#sudo ps aux | grep java
echo '------------------------- doing shutdown all server -------------------------'
sudo /pkmj/lobbyserver/scripts/shutdown.sh
echo '------------------------- lobbyserver shutdown done -------------------------'
sudo sleep 5s
sudo /pkmj/gameserver/scripts/shutdown.sh
echo '------------------------- gameserver shutdown done -------------------------'
sudo sleep 5s
sudo /pkmj/backoffice/scripts/shutdown.sh
echo '------------------------- backoffice shutdown done -------------------------'
sudo sleep 5s
sudo /pkmj/newbackoffice/scripts/shutdown.sh
echo '------------------------- newbackoffice shutdown done -------------------------'
sudo sleep 5s
sudo /pkmj/httpserver/scripts/shutdown.sh
echo '------------------------- httpserver shutdown done -------------------------'
sudo sleep 5s
#sudo ps aux | grep java
sudo /pkmj/AWS/bots_shutdown_1by1.sh
echo '------------------------- all airobots shutdown done -------------------------'
sudo sleep 5s
sudo /pkmj/dataconsolidate/scripts/shutdown.sh
echo '------------------------- dataconsolidate shutdown done -------------------------'
sudo sleep 5s
sudo /pkmj/AWS/amq_shutdown_1by1.sh
echo '------------------------- activemq shutdown done -------------------------'
sudo sleep 5s
sudo /pkmj/AWS/amq_startup_1by1.sh
echo '------------------i------- activemq startup done -------------------------'
sudo sleep 5s
#sudo ps aux | grep java
