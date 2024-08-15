#!/bin/sh
echo '------------------------- doing backup all server -------------------------'
sudo /pkmj/lobbyserver/scripts/backup.sh
echo '------------------------- lobbyserver backup done -------------------------'
sudo /pkmj/httpserver/scripts/backup.sh
echo '------------------------- httpserver backup done -------------------------'
sudo /pkmj/backoffice/scripts/backup.sh
echo '------------------------- backoffice backup done -------------------------'
echo sudo /pkmj/newbackoffice/scripts/backup.sh
echo '------------------------- newbackoffice backup done -------------------------'
sudo /pkmj/gameserver/scripts/backup.sh
echo '------------------------- gameserver backup done -------------------------'
