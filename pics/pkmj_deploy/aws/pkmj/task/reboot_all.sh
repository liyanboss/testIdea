#!/bin/sh
echo ' '
echo '====AAA============================================================================================================================================'
echo ' '
echo $(date) '----------000000--------------- start reboot all server -------------------------'
sudo /pkmj/change_to_maintenance_mode.sh
sudo sleep 5s
echo $(date) '----------111111--------------- doing reboot all server -------------------------'
sudo /pkmj/AWS/shutdown_1by1.sh
sudo sleep 5s
#sudo /pkmj/AWS/deploy_1by1.sh
sudo /pkmj/AWS/backup_1by1.sh
sudo /pkmj/task/run_sql_script.sh
sudo sleep 5s
sudo /pkmj/AWS/startup_1by1.sh
sudo sleep 5s
sudo /pkmj/change_to_running_mode.sh
sudo sleep 100s
echo $(date) '----------222222--------------- all server reboot done -------------------------'
sudo curl http://127.0.0.1:8180/BackOffice/robot/start_bcmn_auto.api
echo $(date) '----------------------------------------Start bcmn AutoProcess Done---------------'
sudo sleep 5s
sudo curl http://127.0.0.1:8180/BackOffice/robot/start_txhd_auto.api
echo $(date) '----------------------------------------Start txhd AutoProcess Done---------------'
sudo sleep 5s
sudo curl http://127.0.0.1:8180/BackOffice/robot/start_dmqq_auto.api
echo $(date) '----------------------------------------Start dmqq AutoProcess Done---------------'
sudo sleep 5s
sudo curl http://127.0.0.1:8180/BackOffice/robot/start_ggth_auto.api
echo $(date) '----------------------------------------Start ggth AutoProcess Done---------------'
sudo sleep 5s
sudo curl http://127.0.0.1:8180/BackOffice/robot/start_pkdn_auto.api
echo $(date) '----------------------------------------Start pkdn AutoProcess Done---------------'
sudo sleep 5s
echo sudo curl http://127.0.0.1:8180/BackOffice/robot/start_rmin_auto.api
echo $(date) '----------------------------------------Start rmin AutoProcess Done---------------'
sudo sleep 5s
echo $(date) '----------333333--------------- all server reboot done -------------------------'
echo ' '
echo '====BBB============================================================================================================================================'
echo ' '
