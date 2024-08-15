#!/bin/sh
echo '------------------------- doing reload running server -------------------------'
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_running.conf -t
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_running.conf -s reload
echo '------------------------- running server reload done -------------------------'
