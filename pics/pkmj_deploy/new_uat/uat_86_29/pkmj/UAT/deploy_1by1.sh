#!/bin/sh
echo '------------------------- doing deploy all server -------------------------'
sudo /pkmj/lobbyserver/scripts/deploy.sh
echo '------------------------- lobbyserver deploy done -------------------------'
sudo /pkmj/httpserver/scripts/deploy.sh
echo '------------------------- httpserver deploy done -------------------------'
sudo /pkmj/backoffice/scripts/deploy.sh
echo '------------------------- backoffice deploy done -------------------------'
echo sudo /pkmj/newbackoffice/scripts/deploy.sh
echo '------------------------- newbackoffice deploy done -------------------------'
sudo /pkmj/gameserver/scripts/deploy.sh
echo '------------------------- gameserver deploy done -------------------------'
