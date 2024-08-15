#!/bin/sh
echo '------------------------- doing change  to running mode -------------------------'
sudo /pkmj/nginxserver/scripts/shutdown_maintenance.sh
sudo sleep 10s
sudo /pkmj/nginxserver/scripts/startup_running.sh
echo '------------------------- change to running mode done -------------------------'
