#!/bin/bash

#przyklad tabeli -> wymieniamy jej elementy
pora_dnia=(swit poranek poludnie popoludnie wieczor noc)

#pokazanie ze tablica zaczyna sie od indeksu 0 -> wiec wypisze 0 element jako swit

#jako ze jest od 0 do 3 -> to wypisze od swit do popoludnie
for((x=0 ; $x <= 3 ; x++)) ; do
	echo ${pora_dnia[$x]}
done
