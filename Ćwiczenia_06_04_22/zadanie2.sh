#!/bin/bash

#Dla wszystkich katalogow
for KATALOG in * ; do
	#jezeli mamy katalog
	if [ -d $KATALOG ]; then
		#zmien lokalizacje na niego
		cd $KATALOG
		#liczba do odczytu
		LR=0
		#liczba wykonywalnych
		LX=0

#Przegladamy obiekty

#musimy wejsc nizej by zobaczyc faktyczne pliki

#dla wszystkich plikow
		for PLIK in * ; do
			#jezeli mamy plik
			if [ -f $PLIK ] ; then
				#jezeli plik jest wykonywalny
				if [ -x $PLIK ] ; then
					#zinkrementuj licznik wykonywalnych
					let LX++
				fi
				#jezeli jest plik do odczytu
				if [ -r $PLIK ] ; then
					#zinkrementuj plik do odczytu
					let LR++
				fi
			fi
		done
		#warunek zalozony w zadaniu
		#przynajmniej 2 pliki do odczytu
		#oraz -> -a (and)
		#przynajmniej 3 pliki do wykonywania
		if [ $LR -gt 1 -a $LX -gt 2 ] ; then
			echo "$KATALOG zawiera minimum 2 pliki do odczytu i 3 pliki wykonywalne!"
		fi
		#wyjsc z katalogu by przejsc do nastepnego
		cd ".."
	fi
done
