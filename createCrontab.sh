#!/bin/bash

case "$1" in
    install|update)

        CRON_FILE="/var/spool/cron/crontabs/$USER"

        if [ ! -f $CRON_FILE ]; then
            echo "cron file for $USER does not exist, creating..."
            touch $CRON_FILE
            /usr/bin/crontab $CRON_FILE
        fi

        # grep -qi "createCrontab" $CRON_FILE
        # if [ $? != 0 ]; then
        # echo "Updating cron job that cleans CUPS"
        #     /bin/echo "@reboot $HOME/deleteCups.sh" >> /tmp/crontab
        # fi

        grep -qi "createCrontab" $CRON_FILE
        if [ $? != 0 ]; then
            echo "Updating cron job that cleans up CUPS"
            crontab -u $USER -l >/tmp/crontab
            /bin/echo "@reboot bash /home/handband/cronJobs/deleteCups.sh" >> /tmp/crontab
            crontab -u $USER /tmp/crontab
        fi

        ;;

        *)

        echo "Usage: $0 {install|update}"
        exit 1
    ;;
esac