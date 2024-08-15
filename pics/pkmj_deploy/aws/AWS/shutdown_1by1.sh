#!/bin/sh
sudo ps aux | grep java
echo '------------------------- doing shutdown all server -------------------------'
sudo /pkmj/lobbyserver/scripts/shutdown.sh
echo '------------------------- lobbyserver shutdown done -------------------------'
sudo supervisorctl stop tomcat8
echo '------------------------- tomcat8 shutdown done -------------------------'
sudo /pkmj/gameserver/scripts/shutdown.sh
echo '------------------------- gameserver shutdown done -------------------------'
sudo /pkmj/airobot/scripts/shutdown.sh
echo '------------------------- airobot shutdown done -------------------------'
sudo /pkmj/dataconsolidate/scripts/shutdown.sh
echo '------------------------- dataconsolidate shutdown done -------------------------'
sudo ps aux | grep java

