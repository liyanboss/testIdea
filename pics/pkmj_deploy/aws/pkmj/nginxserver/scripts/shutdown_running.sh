#!/bin/sh
echo '------------------------- doing shutdown running server -------------------------'
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_running.conf -s stop
echo '------------------------- running server shutdown done -------------------------'
