#!/bin/bash
czynnosc=(kino spacer klub wyklad)
#ranomowa wartośc z zakresu wielkosci tabeli czynność
k=$(( $RANDOM % ${#czynnosc[@]} ))
echo "Teraz: ${czynnosc[$k]}"
