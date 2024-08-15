call mvn -f %1/BackOffice/pom.xml clean
call mvn -f %1/BackOffice/pom.xml package -DskipTests=true -P%2