#!/bin/sh
sudo /pkmj/activemq_61616/scripts/startup.sh
echo '------------------------- activemq_61616 startup done -------------------------'
sudo sleep 5s
sudo /pkmj/activemq_61626/scripts/startup.sh
echo '------------------------- activemq_61626 startup done -------------------------'
sudo sleep 5s
