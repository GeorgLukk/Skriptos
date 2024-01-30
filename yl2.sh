#!/bin/bash
#Interaktiivne kopeerimine
#Georg lukk IS22
#Muudetud 30.01.24

#küsib mida kopeerida ning loob sellest muutuja
read -p "Sisesta kaust mida soovid kopeerida: " mida
echo $mida
#küsib kuhu seda kopeerida ning loob selleks muutuja
read -p "Sisesta kaust kuhu soovid kopeerida: " kuhu
echo $kuhu
#kopeerib soovitud kasuta soovitud kohta
cp -r $mida $kuhu
