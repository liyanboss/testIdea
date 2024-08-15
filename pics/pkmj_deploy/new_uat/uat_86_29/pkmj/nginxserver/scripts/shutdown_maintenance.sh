#!/bin/sh
echo '------------------------- doing shutdown maintenance server -------------------------'
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_maintenance.conf -s stop
echo '------------------------- maintenance server shutdown done -------------------------'
