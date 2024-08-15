#!/bin/sh
sudo /pkmj/activemq_61616/scripts/backup.sh
echo '------------------------- activemq_61616 backup done -------------------------'
sudo sleep 3s
sudo /pkmj/activemq_61626/scripts/backup.sh
echo '------------------------- activemq_61626 backup done -------------------------'
