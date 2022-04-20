#!/bin/bash

echo -n "Podaj wysokosc tabeli (ilosc wierszy): "
read WYSOKOSC
echo -n "Podaj szerokosc tabli (ilosc kolumn): "
read SZEROKOSC

echo
echo "Liczba wierszy $WYSOKOSC, LICZBA KOLUMN $SZEROKOSC"

#błąd jeżeli wymiary tabeli to 0
if [ $WYSOKOSC -le 0 -o $SZEROKOSC -le 0 ] ; then
	echo "Wymiary tabelki powinny byc wieksze od zera!"

else
#wypisujemy góre i doł tabelki
	for (( y=1 ; $y <= $WYSOKOSC ; y++ )) ; do
		for (( x=1 ; $x <= $SZEROKOSC ; x++ )) ; do
			echo -n "+-"
		done
		#dopsisujemy + na końcu (do góry tabelki)
		echo "+"
		
		#wypisywanie pipeline'ow (środkowej części tabelki)
		for (( x=1; $x <= $SZEROKOSC; x++ )) ; do
			echo -n "| "
		done
		#bez tego wszystko będzie obok siebie a nie pod sobą (bo nie będzie łamania linii)
		echo "|" 
	done

	#dopisujemy środkowe wiersze 
	for (( x=1 ; $x <= $SZEROKOSC; x++ )) ; do
		echo -n "+-"
	done
	#ponownie dopisujemy + na końcu (do dołu tabelki) 
	echo "+"
fi
