#!/bin/sh
echo '------------------------- doing startup running server -------------------------'
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_running.conf -t
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_running.conf
echo '------------------------- running server startup done -------------------------'
