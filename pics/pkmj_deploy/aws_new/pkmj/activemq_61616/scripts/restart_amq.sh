#!/bin/sh
echo $(date) '-----------------------------------------AMQ_61616 restart Begin---------------'
sudo /pkmj/activemq_61616/scripts/shutdown.sh
echo $(date) '-----------------------------------------AMQ_61616 shutdown Done---------------'
sudo /pkmj/activemq_61616/scripts/backup.sh
sudo /pkmj/activemq_61616/scripts/startup.sh
echo $(date) '----------------------------------------AMQ_61616 restart End---------------'
