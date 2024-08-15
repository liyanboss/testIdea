#!/bin/sh
echo '------------------------- doing deploy all server -------------------------'
sudo /pkmj/gameserver/scripts/deploy.sh
echo '------------------------- gameserver deploy done -------------------------'

sudo /pkmj/UAT/bots_deploy_1by1.sh

sudo /pkmj/dataconsolidate/scripts/deploy.sh
echo '------------------------- dataconsolidate deploy done -------------------------'
