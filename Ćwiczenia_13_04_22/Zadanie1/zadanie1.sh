#!/bin/bash

#dla wpisanego slowa/pliku
for slowo in `cat $@` ; do

#jezeli dlugosc slowa jest wieksza niz zmienna wynik
	if [ "${#slowo}" -gt "${#wynik}" ] ; then
		
	#nadpisz zmienna wynik tym slowem 
		wynik="$slowo"
	fi
done
echo "Najdlusze slowo to $wynik"
