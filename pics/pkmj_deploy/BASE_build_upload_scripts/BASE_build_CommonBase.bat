call mvn -f %1/CommonBase/pom.xml clean
call mvn -f %1/CommonBase/pom_base.xml install
call mvn -f %1/CommonBase/pom.xml install -DskipTests=true -P%2