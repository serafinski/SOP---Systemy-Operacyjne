#!/bin/bash

#przyklad tabeli -> wymieniamy jej elementy
pora_dnia=(swit poranek poludnie popoludnie wieczor noc)

#przypadek for loop'a z deinkrementacja

#for loop
#jako ze nie ma elementu tablicy z 6 indeksem -> bedzie pusta linijka, nie wypisze bledu!!!

#czyli od pustego do poludnie (bo jest mniejsze/rowne 2)
for((y=6 ; $y >= 2 ; y--)) ; do
	echo ${pora_dnia[$y]}
done
