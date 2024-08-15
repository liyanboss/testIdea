#!/bin/sh
echo '------------------------- doing reload maintenance server -------------------------'
sudo /usr/sbin/nginx -c /pkmj/nginxserver/scripts/nginx_maintenance.conf -s reload
echo '------------------------- maintenance server reload done -------------------------'
