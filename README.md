### DESCRIPTION

This is just a couple of files to create a 
cron job to delete all the jobs from CUPS
when you boot any Linux distro

### HOW TO

1.- Clone the project, most likely in the home folder.

2.- Run sudo su

3.- Then run the createCrontab file like this:
    bash ./cronJobs/createCrontab.sh install after that if you run crontab -l you should see this line @reboot bash $HOME/cronJobs/deleteCups.sh

4.- exit sudo and reboot, if you have any print job, after the
    reboot there should be none.

## SIDENOTES

In case that you need to change the script because it didn't work, just change the folder after the @reboot bash and enter manually the location of the files that the cron job will run.

### DELETE FILE LINES

Since I couldn't find out how to delete the lines inside the file
directly from the script I have two solutions:

1.- run this command 
    sed -i '/@reboot/d' /var/spool/cron/crontabs/$USER
    that command delete all the lines that have @reboot on it.

2.- just delete the fucking file
    rm /var/spool/cron/crontabs/$USER
    simple nothing more, if you run the bash file again, the script will create a new file.
