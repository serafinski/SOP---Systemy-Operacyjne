#!/bin/bash

tab=(pn wt sr czw pt sob nie)
echo "Liczba elementow tablicy: ${#tab[@]}"
a=0

#nowa konstrukcja -> tzw. until loop - wykonuje tak długo aż nie zostanie osiągnięty zalozony stan
until [ $a -eq ${#tab[@]} ] ; do
	echo "a przed $a"
	echo tab[$a]=${tab[$[a++]]}
	echo "a po a++ $a"
done
