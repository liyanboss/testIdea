#!/bin/sh
echo $(date) '-----------------------------------------BO restart Begin---------------'
sudo /pkmj/backoffice/scripts/shutdown.sh
sudo /pkmj/backoffice/scripts/backup.sh
#sudo /pkmj/backoffice/scripts/deploy.sh
sudo /pkmj/backoffice/scripts/startup.sh
echo $(date) '----------------------------------------BO restart End---------------'
sudo sleep 30s
echo sudo curl http://127.0.0.1:8181/BackOffice/robot/start_niuniu_auto.api
echo $(date) '----------------------------------------Start niuniu AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:8181/BackOffice/robot/start_dmqq_auto.api
echo $(date) '----------------------------------------Start dmqq AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:8181/BackOffice/robot/start_txhd_auto.api
echo $(date) '----------------------------------------Start txhd AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:8181/BackOffice/robot/start_tlmn_auto.api
echo $(date) '----------------------------------------Start tlmn AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:8181/BackOffice/robot/start_pkdn_auto.api
echo $(date) '----------------------------------------Start pkdn AutoProcess Done---------------'
sudo sleep 10s
