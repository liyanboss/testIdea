#!/bin/sh
echo $(date) '-----------------------------------------NBO restart Begin---------------'
sudo /pkmj/newbackoffice/scripts/shutdown.sh
sudo /pkmj/newbackoffice/scripts/backup.sh
sudo /pkmj/newbackoffice/scripts/startup.sh
echo $(date) '----------------------------------------NBO restart End---------------'
