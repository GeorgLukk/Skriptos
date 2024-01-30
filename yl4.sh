#!/bin/bash
#Ülesanne 4 
#Autor:Georg lukk
#Muudetud:30.01.24

#failinime ning kuupäeva muutuja tegemine
kp=`date +%m.%d.%y_%H.%M.%S`
fn="logbu_$kp.tar.gz"

#varundatava kausta teekonnast muutuja tegemine
mis=/var/log
#varundatava kausta sihtkoha  muutuja tegemine
kuhu=/varundus
#varundamine tar'i abil
tar -czpf $kuhu/$fn $mis &> /dev/null
