#!/bin/bash

#sprawdzenie czy wprowadzono tylko jedna liczbę
if [ $# -ne 1 ] ; then
	echo "Bledna ilosc argumentow wywolania skryptu"
else
	#sprawdzenie czy wprowadzony argument jest większy od 4
	if [ $1 -lt 5 ] ; then
		echo "Argument musi być wiekszy od 4!"
	else
		#w let można wykonywać operacje artymetyczne -> włącznie z tym, że możemy wykonywać kilka operacji jednocześnie
		let WYNIK=$1%2
		#błąd jeżeli wprowadzona liczba jest parzysta!
		if [ $WYNIK -eq 0 ] ; then
			echo "Argument musi byc nieparzysty!"
		else
			#ile gwiazdek od środka choinki (???)
			let PW=$1/2
			#ile spacji od wieszchołka i pnia (???)
			let PWPLUS=PW+1
			#teoretycznie można było by to zapisać w 1 linijce w następujący sposób:
			# let "PW=S1/2" "PWPLUS=PW+1"
			
			#wraz ze zwiększającą się ilościa gwiazdek mamy mniej spacji (dekrementacja)!
			for (( y=$PWPLUS ; $y >=1 ; y-- )) ; do
				for (( LSP=$y ; LSP >= 1 ; LSP-- )) ; do
					echo -n " "
				done
				for (( LGW=1 ; LGW <= ($PWPLUS-$y)*2+1; LGW++ )) ; do
					echo -n "*"
				done
				#łamanie linii 
				echo ""
			done
			
			#procedura w celu ustawienia pnia równo ze środkiem (???)
			for (( LSP=$PWPLUS ; LSP >= 1 ; LSP-- )) ; do
				echo -n " "
			done
			#pien
			echo "*"
		fi
	fi
fi
