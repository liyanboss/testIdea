#!/bin/sh
sudo /pkmj/dataconsolidate/scripts/backup.sh
sudo cp -rf /pkmj/dataconsolidate/*.properties /pkmj/dataconsolidate/upload/
sudo cp -rf /pkmj/dataconsolidate/*.xml /pkmj/dataconsolidate/upload/
sudo cp -rf /pkmj/dataconsolidate/*.jar /pkmj/dataconsolidate/upload/
sudo rm -rf /pkmj/dataconsolidate/running/*
sudo mv -f /pkmj/dataconsolidate/upload/* /pkmj/dataconsolidate/running/
