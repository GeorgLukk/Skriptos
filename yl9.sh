#!/bin/bash
#Ülesanne 9
#Autor:Georg lukk
#Muudetud:07.02.24

#loob suvalise numbri
num=$(( $RANDOM %20 + 1 ))
num=$(( $num + 1 ))
#loob muutuja mida sa hiljem readiga muudad ning arvus mis loeb mitu korda sa proovisid
guess=0
arvud=0
while [ $guess -ne $num ]
do
#küsib arvu 1 ja 20 vahel
read -p "Arva ära 1 number ühest 20-ni: " guess
#kui sinu arv on suurem kui random number siis
if [ $guess -gt $num ]
then
echo "Pakutud number on väiksem kui $guess. Paku uuesti: "
#kui sinu arv on väiksem kui random number siis
elif [ $guess -lt $num ]
then
echo "pakutud number on suurem kui $guess. Paku uuesti: "
#kui on õige number siis õnnitleb ning väljastab mitme korraga ära arvasid
else
echo "Tubli see oligi $num"
echo "Arvasid ära $arvud katsega"
fi
#lisab katse kordadele 1 juurde
(( ++arvud ))
done
