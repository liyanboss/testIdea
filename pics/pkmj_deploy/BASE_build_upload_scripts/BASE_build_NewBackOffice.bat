call mvn -f %1/NewBackOffice/pom.xml clean
call mvn -f %1/NewBackOffice/pom.xml package -DskipTests=true -P%2