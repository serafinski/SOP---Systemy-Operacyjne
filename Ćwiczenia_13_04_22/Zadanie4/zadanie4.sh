#!/bin/bash

#-n -> kursor nie przechodzi do nowej linijki
echo "Mozliwe typy do wprowadzenia NR| 0NR | Ang | pol"
echo -n "Podaj numer lub skrot nazwy miesiaca: "

#czytanie to co zostanie wprowadzone przez uzytkownika
read MIESIAC

case $MIESIAC in
# | -> w tym przypadku traktowane jako lub (a nie jako pipeline)
	1|01|Jan*|st*) echo "$MIESIAC to January (styczen)." ;;
	2|02|Feb*|lu*) echo "$MIESIAC to February (luty)" ;;
	3|03|Mar*|mar*) echo "$MIESIAC to March (marzec" ;;
	4|04|Apr*|kw*) echo "$MIESIAC to April (kwiecien)" ;;
	5|05|May|maj) echo "$MIESIAC to May (maj)" ;;
	6|06|Jun*|cze*) echo "$MIESIAC to June (czerwiec)" ;;
	7|07|Jul*|lip*) echo "$MIESIAC to July (lipiec)" ;;
	8|08|Aug*|sie*) echo "$MIESIAC to August (sierpien)" ;;
	9|09|Sep*|wrz*) echo "$MIESIAC to September (wrzesien)" ;;
	10|10|Oct*|paz*) echo "$MIESIAC to October (pazdziernik)" ;;
	11|11|Nov*|lis*) echo "$MIESIAC to November (listopad)" ;;
	12|12|Dec*|gru*) echo "$MIESIAC to December (grudzien)" ;;
	*) echo "Wprowadzono nie prawidlowa wartosc!" ;;
esac
