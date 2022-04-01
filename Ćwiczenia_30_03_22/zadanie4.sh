#!/bin/bash

#jezeli nie podamy nazwy pliku
if [ ! $# -eq 1 ] ; then
  echo "Skrypt powinien byc wywolany z jednym argumentem - nazwa pliku wejsciowego"
else

#nazwamy plik
  PLIKWE=$1

##inicjujemy zmienne liczace ile jest parzystych a ile nie parzystych linii
  LPAR=0
  LNPAR=0

#werfyfikujemy czy plik istnieje

#jezeli nie istnieje - wypisz ze nie isnieje
  if [ ! -f $PLIKWE ] ; then
    echo "Plik o nazwie $PLIKWE nie istnieje."

#jezeli plik istnieje  
  else

#kiedy czyta zainicjowana zmienna linia
    while read LINIA ; do

#rownanie sprawdzajace czy liczba wyrazow w linijce jest podzielna bez reszty przez 2
      WYNIK=$((`echo $LINIA | wc -w` %2))

#jezeli jest podzielna przez 2
      if [ $WYNIK -eq 0 ] ; then

#nadpisz plik PARZYSTE wartoscia linijki 
       echo $LINIA >> PARZYSTE

#zwieksz licznik parzystych linijek       
       let LPAR++

#w przeciwnym wypadku
      else

#nadpisz plik NIEPARZYSTE wartoscia linijki	      
       echo $LINIA >> NIEPARZYSTE

#zwieksz licznik nieparzystych linijek
       let LNPAR++
      fi

#input z pliku wejsciowego 
    done < "$PLIKWE"

#wypisz informacje o statysytkach
    echo " W pliku wejsciowym o nazwie $PLIKWE bylo $LPAR linii z parzysta i $LNPAR linii z nieparzysta liczba slow"
  fi
fi
