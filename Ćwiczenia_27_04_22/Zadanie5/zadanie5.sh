#!/bin/bash

#dodałem dodatkową klauzule by nie wysypał się skrypt (w orginale tego nie zawarł)
if [ $# -ne 1 ] ; then
echo "Wprosze wprowadzic pojedyncza liczbe!"

else
silnia()
{
if [ $1 == 0 ]; then 
	WYNIK=1
else
	silnia `expr $1 - 1`
	WYNIK=`expr $WYNIK \* $1`
	echo "Argument: $1 WYNIK: $WYNIK"
fi
}
silnia $1
echo "Wynik koncowy: $WYNIK"
fi
