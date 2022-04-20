#!/bin/bash

echo "Ten skrypt sumuje podane poniżej liczby calkowite: "
echo -n "Podaj sekwencje liczb: "
read CIAG

#użycie set w taki sposób pozwala na to, że kolejne operacje beda wywolane na kolejnych wartościach $1, $2 itd...
set $CIAG

echo "Zadana lista liczb calkowitych: $@"
echo "Ilosc zadanych liczb : $#"

SUMA=0
ILOSC=$#

for (( licz=1; $licz <= $ILOSC; licz++ )) ; do
	#wypisuje który krok robi -> tyle ile ilość argumentów
	echo "Krok: $licz"
	#argument na którym aktualnie operujemy 
	echo "Argument: $1"
	SUMA=`expr $SUMA + $1`
	#suma po dodaniu argumentu na którym aktualnie operujemy
	echo "Suma: $SUMA"

#shift pozwala na zamienienie argumentu -> wartosc argumentu $2 przechodzi na $1 itd...
#jest to swojego rodzaju forma iteracji!
	shift
#ponieważ został wykonanyb shift - to zmniejsza nam się też liczba argumentów
	echo "Pozostale argumenty: $@"
done
echo "Suma koncowa: $SUMA"
