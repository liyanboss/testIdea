#!/bin/sh
echo '------------------------- doing startup all server -------------------------'
sudo /pkmj/gameserver/scripts/startup.sh
echo '------------------------- gameserver startup done -------------------------'

sudo /pkmj/UAT/bots_startup_1by1.sh

sudo /pkmj/dataconsolidate/scripts/startup.sh
echo '------------------------- dataconsolidate startup done -------------------------'
