#!/bin/bash

if test $# != 1 ; then
  echo "Program wymaga podania dokladnie jednego argumentu wywolania: "
  echo " a - data w wersji angielskiej "
  echo " p - data w wersji polskiej "
else
  case $1 in
   a)   echo Today is Wednesday, 30th of March, 2022 ;;
# set date - kluczowe dla automatycznego parametryzowania daty
   p)   set `date`
# $1 - oznacza zawsze dzien tygodnia
        case $1 in
     Mo*) 
		 DZIEN=poniedzialek ;;
     Tu*) 
		 DZIEN=wtorek ;;
     We*) 
		 DZIEN=sroda ;;
	 Th*) 
		 DZIEN=czwartek ;;
	 Fr*) 
		 DZIEN=piatek ;;
	 Sa*) 
		 DZIEN=sobota ;;
	 Su*) 
		 DZIEN=niedziela ;;
        esac

# $2 oznacza zawsze miesiac        
	case $2 in
     Jan*) 
		 MIESIAC=stycznia ;;
     Feb*) 
		 MIESIAC=lutego ;;
     Mar*) 
		 MIESIAC=marca ;;
	 Apr*) 
		 MIESIAC=kwietnia ;;
	 May*) 
		 MIESIAC=maja ;;
	 Jun*) 
		 MIESIAC=czerwca ;;
	 Jul*) 
		 MIESIAC=lipca ;;
	 Aug*) 
		 MIESIAC=sierpinia ;;
	 Sep*) 
		 MIESIAC=wrzesnia ;;
	 Oct*) 
		 MIESIAC=pazdziernika ;;
	 Nov*) 
		 MIESIAC=listopada ;;
	 Dec*) 
		 MIESIAC=grudnia ;;
        esac
# $3 oznacza zawsze nr dnia miesiaca, a $7 rok  
	echo Dzisiaj jest $DZIEN, $3 $MIESIAC $7 roku. ;;
   
   *)   echo Nie ma takiej wersji jezykowej!
	echo
	echo Prosze wprowadzic: 
	echo
	echo a - dla angielskiej
	echo p - dla polskiej ;;
  esac
fi
