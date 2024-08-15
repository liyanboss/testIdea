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

sudo /pkmj/AWS/bots_shutdown_1by1.sh
echo '------------------------- airobot shutdown done -------------------------'
sudo /pkmj/dataconsolidate/scripts/shutdown.sh
echo '------------------------- dataconsolidate shutdown done -------------------------'

sudo /pkmj/AWS/amq_shutdown_1by1.sh
echo '------------------------- activemq shutdown done -------------------------'
sudo /pkmj/AWS/amq_startup_1by1.sh
echo '------------------------- activemq startup done -------------------------'
sudo ps aux | grep java
