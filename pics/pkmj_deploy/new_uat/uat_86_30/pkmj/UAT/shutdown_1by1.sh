#!/bin/sh
sudo ps aux | grep java
echo '------------------------- doing shutdown all server -------------------------'
sudo /pkmj/gameserver/scripts/shutdown.sh
echo '------------------------- gameserver shutdown done -------------------------'

sudo /pkmj/UAT/bots_shutdown_1by1.sh

sudo /pkmj/dataconsolidate/scripts/shutdown.sh
echo '------------------------- dataconsolidate shutdown done -------------------------'

sudo /pkmj/UAT/amq_shutdown_1by1.sh
echo '------------------------- activemq shutdown done -------------------------'
sudo /pkmj/UAT/amq_startup_1by1.sh
echo '------------------------- activemq startup done -------------------------'
sudo ps aux | grep java

