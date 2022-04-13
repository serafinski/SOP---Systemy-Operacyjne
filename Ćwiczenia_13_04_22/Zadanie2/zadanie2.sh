#!/bin/bash

echo "Prosze wprowadzic tekst!"
#dla wprowadzanej wartosci ze strumienia
for k in $@ ; do
	#zmienna wynik to bedzie to co bylo najnowsze wprowadzone + to co zostalo juz nadpisane
	WYNIK="$k $WYNIK"
done
echo $WYNIK
