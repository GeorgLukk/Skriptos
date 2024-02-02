#!/bin/bash
#Ülesanne 4 
#Autor:Georg lukk
#Muudetud:30.01.24

#failinime ning kuupäeva muutuja tegemine
kp=`date +%m.%d.%y_%H.%M.%S`
fn="logbu_$kp.tar.gz"
pr=`date +"%a"`
#varundatava kausta teekonnast muutuja tegemine
mis=/var/log
#varundatava kausta sihtkoha  muutujate tegemine
kuhu1=/varundus/esimene
kuhu2=/varundus/teine
kuhu3=/varundus/kolmas
#loob case kus see võtab muutujast $ps kuupäeva ning hakkab seda kasutama
case $pr in
	#kui on esmaspäev/kolmapäev/reede siis see varundab /var/log kausta /varundus/esimene kausta
        Mon|Wed|Fri)
                tar -czpf $kuhu1/$fn $mis &> /dev/null
	;;
        Tue|Thu|Sat)
	#kui on  teisipäev/neljapäev&laupäev siis see varundab /var/log kausta /varundus/teine
                tar -czpf $kuhu2/$fn $mis &> /dev/null
	;;
        Sun)
	#kui on pühapäev siis see varundab /var/log kausta /varundus/kolmas kausta
		tar -czpf $kuhu3/$fn $mis &> /dev/null
        ;;
esac
#varundamine tar'i abil
#tar -czpf $kuhu/$fn $mis &> /dev/null
