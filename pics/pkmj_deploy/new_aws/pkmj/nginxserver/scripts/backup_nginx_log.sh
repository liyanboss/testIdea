#!/bin/sh
last_date=$(date --date="-1 day" +"%Y%m%d")
sudo mv /pkmj/nginxserver/logs_running/access.log /pkmj/nginxserver/logs_running/access.log$last_date
sudo mv /pkmj/nginxserver/logs_running/error.log /pkmj/nginxserver/logs_running/error.log$last_date
sudo kill -USR1 $(cat /pkmj/nginxserver/logs_running/nginx.pid)
