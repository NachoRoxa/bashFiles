### Description

Well there's no much to say about this git repo, like the README says is just a file to run cron job and maybe create the crontab depending on the user that runs the script.

### CHANGES

## Version 1.2 29/01/2020

First of all the scripts change A LOT, so here are the changes

## CHANGED
# createCrontab

I forgot to write "bash" in the /bin/echo line so, obviously, the script will never run because it has no command to execute, silly me.

# deleteCups

Change the folder location of the cups it wasn't in /usr/var/spool/cups it was just /var/spool/cups

# README

Well... so now that I know that the cron job works and I just want to test the createCrontab file, I change how to execute both bash files, if the createCrontab doesn't work, I specify how to create the cron job.


## REMOVED
# deleteCups

Now that I test the bash and created the crontab by hand in a test enviroment, I removed the lines that this bash file won't need anymore.
