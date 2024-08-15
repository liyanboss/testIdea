#!/bin/sh
echo '------------------------- doing startup maintenance server -------------------------'
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_maintenance.conf -t
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_maintenance.conf
echo '------------------------- maintenance server startup done -------------------------'
