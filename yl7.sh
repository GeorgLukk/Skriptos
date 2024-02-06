#!/bin/bash
#Ülesanne 7
#Autor:Georg lukk
#Muudetud:06.02.24


if [ -d /var/vanadfailid ]
then
	tar -czpf /var/backups/varundus.tar.gz /var/vanadfailid &> /dev/null
	echo "kaust leiti ning varundati /var/backups kausta"
	rm -r  /var/vanadfailid/* &> /dev/null
else
	echo "kausta ei leitud, skript seiskub"
	exit 1
fi
