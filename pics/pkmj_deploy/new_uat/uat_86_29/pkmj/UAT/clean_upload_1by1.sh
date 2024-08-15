#!/bin/sh
echo '------------------------- start: delete all upload -------------------------'
sudo rm -rf /pkmj/httpserver/upload/*
sudo rm -rf /pkmj/lobbyserver/upload/*
sudo rm -rf /pkmj/gameserver/upload/*
sudo rm -rf /pkmj/backoffice/upload/*
sudo rm -rf /pkmj/newbackoffice/upload/*
echo '------------------------- finish: delete all upload -------------------------'
