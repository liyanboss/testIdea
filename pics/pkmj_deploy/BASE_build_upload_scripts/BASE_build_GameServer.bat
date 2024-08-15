call mvn -f %1/GameServer/pom.xml clean
call mvn -f %1/GameServer/pom.xml package -DskipTests=true -P%2