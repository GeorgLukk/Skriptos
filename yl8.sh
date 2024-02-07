#!/bin/bash
#lihtne interaktiivne varundus
#Georg Lukk IS22
#30.01.24

#kuupäeva ning failinime muutujate loomine
kp=$(date +%m%d%y_%H%M%S)
fn="logbu_$kp.tar.gz"
#küsib mis kausta soovid varundada
read -p "Millist kausta soovita varundada: " mis
#vaatab kas see kaust on olemas kui on siis läheb edasi skriptiga kui pole siis lõpetab selle
if [ -d $mis ]
then
	echo "kaust $mis olemas"
else
	echo "kausta $mis pole olemas"
	exit 1
fi
#küsib kuhu varundada
read -p "Kuhu soovite kausta varundada: " kuhu
#vaatab kas see kaust on olemas kui pole siis lõpetab skripti
if [ -d $kuhu ]
then
	echo "kaust $kuhu on olemas"

else
	echo "kausta $kuhu pole"
	exit 1
fi
#varundamine tar'iga
tar -czpf $kuhu/$fn $mis &> /dev/null
#väljastab et kaust on varundatud
echo "kausta $mis varundamine $kuhu on edukalt lõpetatud"
#vaatab kas file on olemas mida varundati
if [ -f $kuhu/$fn ]
then
	echo "fail on olemas"
else
	echo "faili pole olemas"
	exit 1
fi
