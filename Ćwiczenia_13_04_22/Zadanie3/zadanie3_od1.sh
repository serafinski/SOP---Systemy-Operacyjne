#!/bin/bash

#przyklad tabeli -> wymieniamy jej elementy
pora_dnia=(swit poranek poludnie popoludnie wieczor noc)

#for loop
#indeks tabeli zaczyna sie od 0 -> dlatego nie bedziemy mieli wymienionego swit
#z jest mniejsze rowne 3 -> nie bedzie wieczor oraz noc
for((z=1 ; $z <= 3 ; z++)) ; do
	#wypisz z tabeli element pod indeksem z 
	echo ${pora_dnia[$z]}
done
