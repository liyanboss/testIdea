#!/bin/sh
bo_tomcat_home=/pkmj/apache-tomcat-NewBackOffice
if pgrep -f "$bo_tomcat_home" > /dev/null 2>&1
then
        echo $(date) '-----newbackoffice is running-----'
        if cat /pkmj/newbackoffice/logs/NewBackOffice.$(date +%Y-%m-%d).log | grep 'OutOfMemoryError' > /dev/null 2>&1
        then
                echo $(date) '----------------------------------------The OutOfMemoryError Happen---------------'
                sudo /pkmj/newbackoffice/scripts/restart_BO.sh
                echo $(date) '----------------------------------------newbackoffice restarted---------------'
        else
                echo $(date) '-----No OutOfMemoryError Appear-----'
        fi
else
        echo $(date) '----------------------------------------newbackoffice is shutdown already---------------'
fi
