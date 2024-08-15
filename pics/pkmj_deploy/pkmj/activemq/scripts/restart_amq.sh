#!/bin/sh
echo $(date) '-----------------------------------------AMQ restart Begin---------------'
sudo /pkmj/activemq/scripts/shutdown.sh
sudo /pkmj/activemq/scripts/backup.sh
sudo /pkmj/activemq/scripts/startup.sh
echo $(date) '----------------------------------------AMQ restart End---------------'
