call mvn -f %1/DataConsolidate/pom.xml clean
call mvn -f %1/DataConsolidate/pom.xml package -DskipTests=true -P%2