#!/bin/bash

#jezeli nie wprowadzimy wartosci boku!
if [ $# -ne 1 ] ; then
	echo "Skrypt musi byc wywolany z argumentem w postaci wielkosci boku kwadratu!"

#jak jest wartosc boku
else
	# -o -> or - łącznik wartości logiczy
	#wymagania z zadnia -> musi byc wieksze od 0 i mniejsze od 40
	
	#jezeli te warunki nie sa spelnione
	if [ $1 -lt 1 -o $1 -gt 39 ] ; then
		#wypisz informacje
		echo "Argument musi byc wiekszy od 0 i mniejszy niz 40"
	
	#jezeli warunki sa spelnione
	else
		#zagniezdzona petla for
		
		#liczba wierszy (pionow)
		for (( y=1 ; $y <= $1 ; y++ )) ; do
			#liczba kolumn (poziomo) 
			for (( x=1 ; $x <= $1 ; x++ )) ; do
				#wypisuj gwiazdke
				echo -n "*"
			done
			#przejście do nowej linii
			echo ""
		done
	fi
fi
