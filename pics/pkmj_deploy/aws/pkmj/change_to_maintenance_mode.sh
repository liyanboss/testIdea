#!/bin/sh
echo '------------------------- doing change to maintenance mode -------------------------'
sudo /pkmj/nginxserver/scripts/shutdown_running.sh
sudo sleep 1s
sudo /pkmj/nginxserver/scripts/startup_maintenance.sh
echo '------------------------- change to maintenance mode done -------------------------'
