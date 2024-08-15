#!/bin/sh
sudo ps aux | grep java
echo '------------------------- doing deploy all server -------------------------'
sudo /pkmj/gameserver/scripts/deploy.sh
echo '------------------------- gameserver deploy done -------------------------'
#sudo /pkmj/airobot/scripts/deploy.sh
#sudo /pkmj/airobot_all/scripts/deploy.sh
#echo '------------------------- airobot_all deploy done -------------------------'

sudo /pkmj/airobot_niuniu/scripts/deploy.sh
echo '------------------------- airobot_niuniu deploy done -------------------------'
sudo /pkmj/airobot_dmqq/scripts/deploy.sh
echo '------------------------- airobot_dmqq deploy done -------------------------'

sudo /pkmj/dataconsolidate/scripts/deploy.sh
echo '------------------------- dataconsolidate deploy done -------------------------'
sudo ps aux | grep java
