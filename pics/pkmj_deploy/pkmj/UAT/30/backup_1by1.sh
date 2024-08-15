#!/bin/sh
echo '------------------------- doing backup all server -------------------------'
sudo /pkmj/gameserver/scripts/backup.sh
echo '------------------------- gameserver backup done -------------------------'

sudo /pkmj/UAT/bots_backup_1by1.sh

sudo /pkmj/dataconsolidate/scripts/backup.sh
echo '------------------------- dataconsolidate backup done -------------------------'
