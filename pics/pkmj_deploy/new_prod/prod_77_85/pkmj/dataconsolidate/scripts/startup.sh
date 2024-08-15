#!/bin/sh
sudo rm -rf /pkmj/dataconsolidate/logs/*

sudo nohup java -Xms512M -Xmx512M -Djdk.xml.entityExpansionLimit=0 -Dlogback.configurationFile="/pkmj/dataconsolidate/running/logback.xml" -classpath ".:/pkmj/dataconsolidate/running/*" com.pkmj.dc.DataConsolidateLauncher > /pkmj/dataconsolidate/logs/nohup_dataconsolidate.out &

#sudo nohup java -Xms1G -Xmx1G -Djdk.xml.entityExpansionLimit=0 -classpath ".:/pkmj/dataconsolidate/running/*" com.pkmj.dc.DataConsolidateLauncher > /pkmj/dataconsolidate/logs/nohup_dataconsolidate.out &
#sudo nohup java -Xms512M -Xmx512M -Djdk.xml.entityExpansionLimit=0 -classpath ".:/pkmj/dataconsolidate/running/*" com.pkmj.dc.DataConsolidateLauncher > /pkmj/dataconsolidate/logs/nohup_dataconsolidate.out &

sudo sleep 3s
echo '------ dataconsolidate started, waiting LOG file ready...... ------'
sudo sleep 10s
new_dc_log_file=dataconsolidate.$(date +%Y-%m-%d).log
sudo less /pkmj/dataconsolidate/logs/"$new_dc_log_file" | grep ERROR
echo '------ dataconsolidate checkLogs Done ------'
