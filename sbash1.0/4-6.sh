#!/bin/bash
#ex18.sh
#whether 'whois domain-name' can find three serves:
#									ripe.net,cw.net,radb.net

#rename this scriptiton as "wh",and put it in /usr/local/bin

#what joint mark we need:
#ln -s /usr/local/bin/wh	/usr/local/bin/wh-ripe
#ln -s /usr/local/bin/wh	/usr/local/bin/wh-cw
#ln -s /usr/local/bin/wh	/usr/local/bin/wh-radb

E_NOARGS=65

if [ -z "$1" ]
then
	echo "Usage: `basename $0` [domain-name]"
	exit $E_NOARGES
fi
#check scription names,then call fit serves.
case `basename $0` in	#Or:	case ${0##*/} in 
	"wh"			) whois $1@whois.ripe.net;;
	"wh-ripe"		) whois $1@whois.ripe.net;;
	"wh-radb"		) whois $1@whois.radb.net;;
	"wh-cw"			) whois $1@whois.cw.net;;
	*				) echo "Usage: `basename $0` [domain-name]";;
esac
exit $?
