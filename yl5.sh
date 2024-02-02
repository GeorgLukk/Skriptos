#!/bin/bash
#Ülesanne 5
#Autor:Georg lukk
#Muudetud:02.02.24

#küsib millist toimingut soovid teha
echo "Vali toiming"
#annab valikud 
echo "1 - kopeerimine (cp), 2 - liigutamine (mv) "

#loeb selle valiku muutujaks
read choise
#loob case selle muutuja alla
case $choise in
	#kui inimene valib cp siis see kopeerib
	1)echo "Sisesta mis kausta soovid kopeerida: "
	read kaust1
	echo "Sisesta kuhu soovid kausta kopeerida: "
	read kaust2
	#kopeerib esimese sisestatud kausta teisse sisestatud kausta
	cp -r $kaust1 $kaust2
	#väljastab mis kaust mis kausta kopeeriti
	echo "Kausta $kaust1 kopeerimine $kaust2 on lõppenud"
	;;
	#kui inimene valib mv siis see liigutab
	2)echo "Sisesta mis kasuta soovid liigutada: "
	read kaust3
	echo "Sisesta kaust kuhu soovid seda liigutada: "
	read kaust4
	#liigutab sisestatud kausta teisse sisestatud kausta
	mv $kaust3 $kaust4
	#väljastab esimese sisestatud kausta teisse sisestatud kausta
	echo "Kaust $kaust3 on liigutatud $kaust4"
	;;
esac
