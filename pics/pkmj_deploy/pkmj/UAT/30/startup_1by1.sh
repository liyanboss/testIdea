#!/bin/sh
echo '------------------------- doing startup all server -------------------------'
sudo /pkmj/gameserver/scripts/startup.sh
echo '------------------------- gameserver startup done -------------------------'
#sudo /pkmj/airobot/scripts/startup.sh
#sudo /pkmj/airobot_all/scripts/startup.sh
#echo '------------------------- airobot_all startup done -------------------------'

sudo /pkmj/airobot_niuniu/scripts/startup.sh
echo '------------------------- airobot_niuniu startup done -------------------------'
sudo /pkmj/airobot_dmqq/scripts/startup.sh
echo '------------------------- airobot_dmqq startup done -------------------------'

sudo /pkmj/dataconsolidate/scripts/startup.sh
echo '------------------------- dataconsolidate startup done -------------------------'
