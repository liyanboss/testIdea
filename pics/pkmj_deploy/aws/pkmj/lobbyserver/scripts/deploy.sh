#!/bin/sh
sudo /pkmj/lobbyserver/scripts/backup.sh
sudo cp -rf /pkmj/lobbyserver/*.properties /pkmj/lobbyserver/upload/
sudo cp -rf /pkmj/lobbyserver/*.jar /pkmj/lobbyserver/upload/
sudo rm -rf /pkmj/lobbyserver/running/*
sudo mv -f /pkmj/lobbyserver/upload/* /pkmj/lobbyserver/running/
