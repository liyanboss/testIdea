#!/bin/sh
sudo ps aux | grep java
echo '------------------------- doing shutdown all server -------------------------'
sudo /pkmj/gameserver/scripts/shutdown.sh
echo '------------------------- gameserver shutdown done -------------------------'
#sudo /pkmj/airobot/scripts/shutdown.sh
#sudo /pkmj/airobot_all/scripts/shutdown.sh
#echo '------------------------- airobot_all shutdown done -------------------------'

sudo /pkmj/airobot_niuniu/scripts/shutdown.sh
echo '------------------------- airobot_niuniu shutdown done -------------------------'
sudo /pkmj/airobot_dmqq/scripts/shutdown.sh
echo '------------------------- airobot_dmqq shutdown done -------------------------'

sudo /pkmj/dataconsolidate/scripts/shutdown.sh
echo '------------------------- dataconsolidate shutdown done -------------------------'
sudo ps aux | grep java
