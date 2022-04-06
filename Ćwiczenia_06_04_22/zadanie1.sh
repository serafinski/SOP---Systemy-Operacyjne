#!/bin/bash

#przechodzimy po nazwach plikow w katalogu 
for PLIK in `ls ?2017*.txt` ; do
	#jezeli znajdziemy plik spelniajacy kryteria
	if [ -f $PLIK ] ; then
		#ustawiamy zmienne pomocnicze
		LP=0
		LNP=0
		LZ=0
		#czytamy tekst pliku linijka po linijce
		while read LINIA ; do
			#jak bedzei liczba
			for LICZBA in $LINIA ; do
				#jak bedzie 0
				if [ $LICZBA -eq 0 ]; then
				       #inkrementuj liczbe zer	
						let LZ++
				#w przeciwnym wypadku
				else
					#sprawdz czy liczba jest parzysta czy nie
					WYNIK=$(($LICZBA % 2))
					
					#jezeli nie jest parzysta
					if [ $WYNIK -eq 0 ] ; then
						#inkrementuj liczbe liczb parzystych
						let LP++
					#w przeciwnym wypadku
					else
						#inkrementuj liczbe liczb nieparzystych
						let LNP++
					fi
				fi
			done
		# skoncz czytanie z pliku
		done < "$PLIK"
		#wypisz informacje odpowiednio jest 0, parzystych i nieparzystych
		echo "Plik $PLIK zawiera $LP parzystych i $LNP nieparzystych oraz $LZ liczb zero."
	fi
done

