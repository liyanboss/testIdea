#!/bin/sh
sudo /pkmj/airobot_bcmn/scripts/backup.sh
ai_robot_home=/pkmj/airobot_bcmn
sudo cp -rf "$ai_robot_home"/*.properties "$ai_robot_home"/upload/
sudo cp -rf "$ai_robot_home"/*.xml "$ai_robot_home"/upload/
sudo cp -rf "$ai_robot_home"/*.jar "$ai_robot_home"/upload/
sudo rm -rf "$ai_robot_home"/running/*
sudo mv -f "$ai_robot_home"/upload/* "$ai_robot_home"/running/
