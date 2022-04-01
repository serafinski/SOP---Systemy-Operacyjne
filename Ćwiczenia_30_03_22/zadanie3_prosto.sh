#!/bin/bash

if test $# != 1 ; then
  echo "Program wymaga podania dokladnie jednego argumentu wywolania: "
  echo " a - data w wersji angielskiej "
  echo " p - data w wersji polskiej "
else
  case $1 in
   p)   echo Dzisiaj jest Sroda, 30 Marca, 2022 ;;
   a)   echo Today is Wednesday, 30th of March, 2022 ;;
   *)   echo Nie ma takiej wersji jezykowej!
	echo
	echo Prosze wprowadzic: 
	echo
	echo a - dla angielskiej
	echo p - dla polskiej ;;
  esac
fi
