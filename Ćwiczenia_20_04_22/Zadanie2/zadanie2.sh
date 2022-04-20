#!/bin/bash
#predefiniowany plik -> stworzony wcześniej
PLIK="ala.txt"
#pipeline'em przekazujemy dalej
cat "$PLIK" | while read LINIA ; do
	echo $LINIA
done
