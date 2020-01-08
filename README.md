### DESCRIPTION

This is just a couple of files to create a 
cron job to delete all the jobs from CUPS
when you boot any Linux distro

### HOW TO

There are some files that you'll need to change permission
so make sure you really want to do this

Steps:

1.- In terminal run sudo chmod 777 /var/spool/cron/crontabs/

2.- Clone the project wherever you like

3.- In terminal go to the project folder then run sudo bash ./createCrontab.sh install

This should create the cronjob

### DELETE FILE LINES

Since I couldn't find out how to delete the lines inside the file
directly from the script I have two solutions:
1.- run this command 
    sed -i '/@reboot/d' /var/spool/cron/crontabs/$USER
    that command delete all the lines that have @reboot on it.
2.- just delete the fucking file
    rm /var/spool/cron/crontabs/$USER
    simple nothing more, if you run the bash file again, the script will create a new file.
