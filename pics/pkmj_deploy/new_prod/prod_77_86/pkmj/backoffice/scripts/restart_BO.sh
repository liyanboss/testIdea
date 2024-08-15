#!/bin/sh
echo ' '
echo ' '
echo $(date) '-----------------------------------------BO restart Begin---------------'
sudo /pkmj/backoffice/scripts/shutdown.sh
sudo /pkmj/backoffice/scripts/backup.sh
#sudo /pkmj/backoffice/scripts/deploy.sh
sudo /pkmj/backoffice/scripts/startup.sh
echo $(date) '----------------------------------------BO restart End---------------'
sudo sleep 20s
sudo curl http://127.0.0.1:80/robot/start_niuniu_auto.api
echo $(date) '----------------------------------------Start niuniu AutoProcess Done---------------'
sudo sleep 10s
sudo curl http://127.0.0.1:80/robot/start_dmqq_auto.api
echo $(date) '----------------------------------------Start dmqq AutoProcess Done---------------'
sudo sleep 10s
sudo curl http://127.0.0.1:80/robot/start_txhd_auto.api
echo $(date) '----------------------------------------Start txhd AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:80/robot/start_tlmn_auto.api
echo $(date) '----------------------------------------Start tlmn AutoProcess Done---------------'
sudo sleep 10s
sudo curl http://127.0.0.1:80/robot/start_pkdn_auto.api
echo $(date) '----------------------------------------Start pkdn AutoProcess Done---------------'
sudo sleep 10s
sudo curl http://127.0.0.1:80/robot/start_bcmn_auto.api
echo $(date) '----------------------------------------Start bcmn AutoProcess Done---------------'
sudo sleep 10s
sudo curl http://127.0.0.1:80/robot/start_ggth_auto.api
echo $(date) '----------------------------------------Start ggth AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:80/robot/start_rmin_auto.api
echo $(date) '----------------------------------------Start rmin AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:80/robot/start_ddzb_auto.api
echo $(date) '----------------------------------------Start ddzb AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:80/robot/start_big2_auto.api
echo $(date) '----------------------------------------Start big2 AutoProcess Done---------------'
sudo sleep 10s
echo sudo curl http://127.0.0.1:80/robot/start_fish_auto.api
echo $(date) '----------------------------------------Start fish AutoProcess Done---------------'
echo ' '
echo ' '
