#/bin/sh

rm -rf /usr/var/spool/cups

HOST= 'server-name'
/etc/init.d/cups status
if grep "cupsd (2 /scripts/cups.txt"
then
    echo "cups is already running"
    exit
else
    /etc/init.d/cups restart
    echo "cups just now started in server-name"
fi

#service cups restart

# En caso de que no funcione es service
# o el script anterior descomentar
# las lineas de abajo


#cancel -a gk1
#cancel -a gk2
#cancel -a gk3
#cancel -a gk4
#cancel -a gk5
#cancel -a gk6
#cancel -a gk7
#cancel -a gk8
#cancel -a gk9
#cancel -a gk10
#cancel -a gk11
#cancel -a gk12
#cancel -a gk13
#cancel -a gk14
#cancel -a gk15