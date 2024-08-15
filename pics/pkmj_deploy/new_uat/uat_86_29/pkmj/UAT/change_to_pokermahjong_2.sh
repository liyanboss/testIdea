#!/bin/sh

hs_jdbc_path=/pkmj/apache-tomcat-HttpServer/webapps/HttpServer/WEB-INF/classes
echo $hs_jdbc_path '------------------------- old contents -------------------------'
sudo cat $hs_jdbc_path/jdbc.properties
sudo cp $hs_jdbc_path/jdbc2.properties $hs_jdbc_path/jdbc.properties
echo $hs_jdbc_path '------------------------- new contents -------------------------'
sudo cat $hs_jdbc_path/jdbc.properties
echo ' '

ls_jdbc_path=/pkmj/lobbyserver/running
echo $ls_jdbc_path '------------------------- old contents -------------------------'
sudo cat $ls_jdbc_path/jdbc.properties
sudo cp $ls_jdbc_path/jdbc2.properties $ls_jdbc_path/jdbc.properties
echo $ls_jdbc_path '------------------------- new contents -------------------------'
sudo cat $ls_jdbc_path/jdbc.properties
echo ' '

gs_jdbc_path=/pkmj/gameserver/running
echo $gs_jdbc_path '------------------------- old contents -------------------------'
sudo cat $gs_jdbc_path/jdbc.properties
sudo cp $gs_jdbc_path/jdbc2.properties $gs_jdbc_path/jdbc.properties
echo $gs_jdbc_path '------------------------- new contents -------------------------'
sudo cat $gs_jdbc_path/jdbc.properties
echo ' '

bo_jdbc_path=/pkmj/apache-tomcat-BackOffice/webapps/ROOT/WEB-INF/classes
echo $bo_jdbc_path '------------------------- old contents -------------------------'
sudo cat $bo_jdbc_path/jdbc.properties
sudo cp $bo_jdbc_path/jdbc2.properties $bo_jdbc_path/jdbc.properties
echo $bo_jdbc_path '------------------------- new contents -------------------------'
sudo cat $bo_jdbc_path/jdbc.properties
echo ' '

