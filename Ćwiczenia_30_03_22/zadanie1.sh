#!/bin/bash

#jezeli liczba wprowadzonych wartosci nie jest rowna 1
if [ $# -ne 1 ] ; then
 echo "Skrypt wymaga parametru - liczby calkowitej dodatnej"

else

#przypisz pod i wartosc wprowadzona
 i=$1

#do momentu az i jest wieksze od 0
while [ $i -gt 0 ] ; do
 echo $i
 #zmniejsz wartosc o 1
 i=`expr $i - 1`
done
fi
