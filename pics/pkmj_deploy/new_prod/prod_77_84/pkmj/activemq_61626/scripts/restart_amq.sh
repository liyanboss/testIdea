#!/bin/sh
echo ' '
echo ' '
echo $(date) '-----------------------------------------AMQ_61626 restart Begin---------------'
sudo /pkmj/activemq_61626/scripts/shutdown.sh
echo $(date) '-----------------------------------------AMQ_61626 shutdown Done---------------'
sudo /pkmj/activemq_61626/scripts/backup.sh
echo $(date) '-----------------------------------------AMQ_61626 backup Done---------------'
sudo /pkmj/activemq_61626/scripts/startup.sh
echo $(date) '-----------------------------------------AMQ_61626 startup Done---------------'
sudo sleep 2s
echo $(date) '----------------------------------------AMQ_61626 restart End---------------'
echo ' '
echo ' '
