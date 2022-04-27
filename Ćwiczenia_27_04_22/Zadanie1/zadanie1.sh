#!/bin/bash

if [ $# -ne 1 ] ; then
	echo "Skrypt powinien byc wywolany z jednym argumentem - nazwa pliku raportu."
else
	RAPORT=$1
	LPLOG=0
	LPFAIL=0
	for PLIK in *.log ; do
		# jeżeli jest to plik
		if [ -f $PLIK ] ; then
			#zwiększ licznik liczby plików z rozszeżeniem .log
			let LPLOG++
			LWFAIL=0
			#jeżeli w linii wystąpi slowo falil
			while read LINIA ; do
				for SLOWO in $LINIA ; do
					#porownujac String'i musimy uzyc == !
					if [ $SLOWO == "fail" ] ; then
						#zwieksz licznik wystąpień fail w pliku
						let LWFAIL++
					fi
				done
			#po zakończeniu operacji zapisz output do pliku
			done < "$PLIK"
			# jeżeli w pliku jest przynajmniej jedno slowo fail 
			if [ $LWFAIL -gt 0 ] ; then
			#zwieksz licznik liczby plikow z wiecej niz 1 slowem fail
				let LPFAIL++
			fi
		fi
	done
	echo "Bierzacy katalog zawiera $LPLOG plikow z rozszerzeniem .log" >> $RAPORT
	echo "w tym $LPFAIL plikow zawiera przynajmniej jedno slowo fail." >> $RAPORT
fi
			 
