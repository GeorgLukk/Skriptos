#!/bin/bash
#Ülesanne 10
#Autor:Georg lukk
#Muudetud:07.02.24

#loob muutujad serveritele ning kuupäevale
server1="1.1.1."
server2="172.16.2.103"
server3="172.16.2.114"
kp=`date +%m.%d.%y_%H.%M.%S`
#loob for tsükli mis kontrollib kas kõik kolm serverit on online
for serverid in $server1 $server2 $server3
do
#pingib igat serverit 1 korra ning saadab selle voidi
	ping -c 1 $serverid &> /dev/null
#if lause mis kontrollib eelnevalt saadu ping käsust kas serverid on võrgus või mitte
if [ $? -ne 0 ]
#kui ei ole võrgus siis see väljastab et ei ole ning edastab selle serverid.txt faili
then
	echo "Server aadressiga $serverid pole võrgus kättesaadav"
	echo "Server $serverid polnud kättesaadaval $kp" >> /home/student/skriptid/serverid.txt
	echo
#kui ei ole siis väljastab need ning logib ssh abil serverisse ning küsib mis ajast server aktiivne on olnud
else
	echo "Server aadressiga $serverid on võrgus kättesaadav"
	echo "Server on olnud töös alates:"
	ssh student@$serverid uptime -s
	echo
fi
done
