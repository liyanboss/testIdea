#!/bin/sh
sudo /pkmj/activemq_61616/scripts/backup.sh
sudo /pkmj/activemq_61616/scripts/shutdown.sh
echo '------------------------- activemq_61616 shutdown done -------------------------'
sudo sleep 3s
sudo /pkmj/activemq_61626/scripts/backup.sh
sudo /pkmj/activemq_61626/scripts/shutdown.sh
echo '------------------------- activemq_61626 shutdown done -------------------------'
