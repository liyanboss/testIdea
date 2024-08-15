#!/bin/sh
echo '------------------------- doing startup all server -------------------------'
sudo /pkmj/lobbyserver/scripts/startup.sh
echo '------------------------- lobbyserver startup done -------------------------'
sudo supervisorctl start tomcat8
echo '------------------------- tomcat8 startup done -------------------------'
sudo /pkmj/gameserver/scripts/startup.sh
echo '------------------------- gameserver startup done -------------------------'
sudo /pkmj/airobot/scripts/startup.sh
echo '------------------------- airobot startup done -------------------------'
sudo /pkmj/dataconsolidate/scripts/startup.sh
echo '------------------------- dataconsolidate startup done -------------------------'
