call mvn -f %1/HttpServer/pom.xml clean
call mvn -f %1/HttpServer/pom.xml package -DskipTests=true -P%2