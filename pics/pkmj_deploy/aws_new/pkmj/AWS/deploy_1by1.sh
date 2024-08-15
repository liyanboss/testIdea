#!/bin/sh
echo '------------------------- doing deploy all server -------------------------'
sudo /pkmj/lobbyserver/scripts/deploy.sh
echo '------------------------- lobbyserver deploy done -------------------------'
sudo /pkmj/httpserver/scripts/deploy.sh
echo '------------------------- httpserver deploy done -------------------------'
sudo /pkmj/backoffice/scripts/deploy.sh
echo '------------------------- backoffice deploy done -------------------------'
sudo /pkmj/gameserver/scripts/deploy.sh
echo '------------------------- gameserver deploy done -------------------------'

sudo /pkmj/AWS/bots_deploy_1by1.sh

sudo /pkmj/dataconsolidate/scripts/deploy.sh
echo '------------------------- dataconsolidate deploy done -------------------------'
