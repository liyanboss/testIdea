#!/bin/sh
mysql --host=127.0.0.1 --user=test --password=test --database=pokermahjong_2 < /pkmj/nginxserver/upgrade_pokermahjong_2.sql
