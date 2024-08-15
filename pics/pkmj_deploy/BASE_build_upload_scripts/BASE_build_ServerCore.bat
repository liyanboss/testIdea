call mvn -f %1/ServerCore/pom.xml clean
call mvn -f %1/ServerCore/pom.xml install -DskipTests=true -P%2