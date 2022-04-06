#!/bin/bash

#jezeli nie dostarczymy 1  argumentu
if [ $# -ne 1 ] ; then
	#wypisz
	echo "Skrypt wymaga 1 argumentu - nazwy pliku wejsciowego."
#jezeli jest 1 argument
else
	#alias dla wejsciowego
	PLIKWE=$1

	#jezeli podany plik nie istnieje w katalogu
	if [ ! -f $PLIKWE ]; then
		#wypisz
		echo "Plik o podanej nazwie $PLIKWE nie istnieje w biezacym katalogu!"
	
	#jezeli plik istnieje w katalogu
	else
		#aliasy
		NRLINII=1
		LLP=0
		LLNP=0
		LZ=0
		LS=0

		#czytamy linia po linii
		while read LINIA ; do
			#zmienna majaca okreslic ile znakow jest w linii
			WYNIK=$((`echo $LINIA | wc -c` - 1 ))
			
			#jezeli jest 0 znakow
			if [ $WYNIK -eq 0 ] ; then
				#wypisz informacje do pliku wyjsciowego
				echo "# << TA LINIA INTENCJONALNIE JEST PUSTA! >>" >> PLIKWY
				#zainkrementuj liczbe linii pustych
				let LLP++
			#jezeli jest wiecej znakow niz 0
			else
				#wypisz nr linii i jej zawartosc do pliku wyjsciowego
				echo "linia " $NRLINII " " $LINIA >> PLIKWY
				#zainkrementuj liczbe linii nie pustych
				let LLNP++
				#zainkremetnuj nr linii
				let NRLINII++
				#policz ile jest znakow w linii
				LZNAKOW=$((`echo $LINIA | wc -c` - 1 ))
				let LZ+=LZNAKOW
				#policz ile wyrazow jest w linii
				LSLOW=$((`echo $LINIA | wc -w`))
				let LS+=LSLOW

			fi
		#zamknij czytany plik wejsciowey
		done < "$PLIKWE"
	fi
fi
#wypisze to co bylo w input'cie a nie w PLIKWY
#jako znak bedzie liczona spacja
echo "Liczba pustych linijek: $LLP, liczba nie pustych linijek: $LLNP."
echo "Liczba znakow w pliku (wraz ze spacjami) $LZ, liczba slow w pliku $LS."
