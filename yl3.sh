#!/bin/bash
#lihtne interaktiivne varundus
#Georg Lukk IS22
#30.01.24

#kuupäeva ning failinime muutujate loomine
kp=$(date +%m%d%y_%H%M%S)
fn="logbu_$kp.tar.gz"

#küsib mis kausta varundada ning teeb selles muutuja
read -p "Millist kausta soovita varundada: " mis
echo $mis
echo
#küsb kuhu seda kausta varundada ning teeb sellest muutuja
read -p "Kuhu soovite kausta varundada: " kuhu
echo $kuhu
#varundamine tar'i abil
tar -czpf $kuhu/$fn $mis &> /dev/null
echo
#teatud teadete väljastamine mis kasutab muutujaid
echo "Kausta $mis varundamine kausta $kuhu on lõppenud"
echo "Varundusfaili nimi on $fn"
