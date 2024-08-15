call mvn -f %1/LobbyServer/pom.xml clean
call mvn -f %1/LobbyServer/pom.xml package -DskipTests=true -P%2