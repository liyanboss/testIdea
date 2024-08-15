#!/bin/sh
bo_tomcat_home=/pkmj/apache-tomcat-BackOffice
if pgrep -f "$bo_tomcat_home" > /dev/null 2>&1
then
        echo $(date) '-----backoffice is running-----'
        if cat /pkmj/backoffice/logs/BackOffice.$(date +%Y-%m-%d).log | grep 'OutOfMemoryError' > /dev/null 2>&1
        then
                echo $(date) '----------------------------------------The OutOfMemoryError Happen---------------'
                sudo /pkmj/backoffice/scripts/restart_BO.sh
                echo $(date) '----------------------------------------backoffice restarted---------------'
        else
                echo $(date) '-----No OutOfMemoryError Appear-----'
        fi
else
        echo $(date) '----------------------------------------backoffice is shutdown already---------------'
fi
