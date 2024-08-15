#!/bin/sh

gs_jdbc_path=/pkmj/gameserver/running
echo $gs_jdbc_path '------------------------- old contents -------------------------'
sudo cat $gs_jdbc_path/jdbc.properties
sudo cp $gs_jdbc_path/jdbc2.properties $gs_jdbc_path/jdbc.properties
echo $gs_jdbc_path '------------------------- new contents -------------------------'
sudo cat $gs_jdbc_path/jdbc.properties
echo ' '

dc_jdbc_path=/pkmj/dataconsolidate/running
echo $dc_jdbc_path '------------------------- old contents -------------------------'
sudo cat $dc_jdbc_path/jdbc.properties
sudo cp $dc_jdbc_path/jdbc2.properties $dc_jdbc_path/jdbc.properties
echo $dc_jdbc_path '------------------------- new contents -------------------------'
sudo cat $dc_jdbc_path/jdbc.properties
echo ' '

