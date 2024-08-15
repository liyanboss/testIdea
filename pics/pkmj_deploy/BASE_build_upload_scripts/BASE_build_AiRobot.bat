call mvn -f %1/AiRobot/pom.xml clean
call mvn -f %1/AiRobot/pom.xml package -DskipTests=true -P%2