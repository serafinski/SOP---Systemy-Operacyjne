#!/bin/bash

#WARIANT ZADANIA 5 -> brak srodka kwadratu -> same obramowanie!

#jezeli nie wprowadzimy wartosci boku!
if [ $# -ne 1 ] ; then
	echo "Skrypt musi byc wywolany z argumentem w postaci wielkosci boku kwadratu!"

#jak jest wartosc boku
else
	# -o -> or - łącznik wartości logiczy
	#doszlo do zmiany wymagan -> teraz musi byc wiekszy od 2 i mniejszy od 40!

	#jezeli te warunki nie sa spelnione
	if [ $1 -lt 3 -o $1 -gt 39 ] ; then
		echo "Argument musi byc wiekszy od 2 i mniejszy niz 40"
	
	#jezeli warunki sa spelnione
	else
		
		#zagniezdzona petla for

		#liczba wierszy (pionowo)
		for (( y=1 ; $y <= $1 ; y++ )) ; do
			
			#kiedy y jest rowny pierwszej i ostatniej wartosci z ustalonego zakresu (rysowanie górnej i dolnej krawedzi)
			if [ $y -eq 1 -o $y -eq $1 ] ; then
				#liczba kolumn (poziomo) 
				for (( x=1 ; $x <= $1 ; x++ )) ; do
					#wypisz gwiazdki w tej samej jednej linijce
					echo -n "*"
			done
			#przejście do nowej linii
			echo ""
		
		#rysowanie lewej i prawej krawedzi
		else
			#tworzymy gwiazdki dla lewej i prawej krawedzi w jednej linii
			echo -n "*"
			#rysowanie spacji od drugiej wartosci do momentu aż nie zrównamy sie pozycja z ostatnia wartoscia
			for (( z=2 ; $z < $1 ; z++ )) ; do
				echo -n " "
			done
			#na tym etapie wciaz wszsystko jest w jednej linicje 

			#wypisz gwiazdki - to sprawia ze wyrysowane linie przestawiaja sie na odpowiednie miejsce
			echo "*"
		fi
	done
	fi
fi
