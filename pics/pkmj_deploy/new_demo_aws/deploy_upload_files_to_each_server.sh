
#!/bin/sh

echo '------------------------- start: deploy HttpServer AAA -------------------------'
mkdir /pkmj/httpserver/upload/HttpServer
unzip /pkmj/upload/HttpServer.war -d /pkmj/httpserver/upload/HttpServer
sleep 2s
rm -rf /pkmj/httpserver/upload/HttpServer/WEB-INF/lib
cp /pkmj/upload/CommonBase-1.0-SNAPSHOT.jar /pkmj/httpserver/upload
echo '------------------------- finish: deploy HttpServer BBB -------------------------'

echo '------------------------- start: deploy Backoffice AAA -------------------------'
mkdir /pkmj/backoffice/upload/ROOT
unzip /pkmj/upload/ROOT.war -d /pkmj/backoffice/upload/ROOT
sleep 2s
rm -rf /pkmj/backoffice/upload/ROOT/WEB-INF/lib
cp /pkmj/upload/CommonBase-1.0-SNAPSHOT.jar /pkmj/backoffice/upload
echo '------------------------- finish: deploy Backoffice BBB -------------------------'

echo '------------------------- start: deploy LobbyServer AAA -------------------------'
cp /pkmj/upload/CommonBase-1.0-SNAPSHOT.jar /pkmj/lobbyserver/upload
cp /pkmj/upload/ServerCore-1.0-SNAPSHOT.jar /pkmj/lobbyserver/upload
cp /pkmj/upload/LobbyServer-1.0-SNAPSHOT.jar /pkmj/lobbyserver/upload
echo '------------------------- finish: deploy LobbyServer BBB -------------------------'

echo '------------------------- start: deploy GameServer AAA -------------------------'
cp /pkmj/upload/CommonBase-1.0-SNAPSHOT.jar /pkmj/gameserver/upload
cp /pkmj/upload/ServerCore-1.0-SNAPSHOT.jar /pkmj/gameserver/upload
cp /pkmj/upload/GameServer-1.0-SNAPSHOT.jar /pkmj/gameserver/upload
echo '------------------------- finish: deploy GameServer BBB -------------------------'

echo '------------------------- start: deploy airobot_fish AAA -------------------------'
cp /pkmj/upload/CommonBase-1.0-SNAPSHOT.jar /pkmj/airobot_fish/upload
cp /pkmj/upload/AiRobot-1.0-SNAPSHOT.jar /pkmj/airobot_fish/upload
echo '------------------------- finish: deploy airobot_fish BBB -------------------------'

echo '------------------------- start: deploy DataConsolidate AAA -------------------------'
cp /pkmj/upload/CommonBase-1.0-SNAPSHOT.jar /pkmj/dataconsolidate/upload
cp /pkmj/upload/DataConsolidate-1.0-SNAPSHOT.jar /pkmj/dataconsolidate/upload
echo '------------------------- finish: deploy DataConsolidate BBB -------------------------'


echo '------------------------- finish: delete all upload CCC -------------------------'
sudo rm -rf /pkmj/upload/*
echo '------------------------- finish: delete all upload CCC -------------------------'


