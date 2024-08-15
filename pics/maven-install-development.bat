call mvn clean
call mvn install -DskipTests=true -Pdevelopment
echo "============ build ServerCore development done ============"
call PAUSE