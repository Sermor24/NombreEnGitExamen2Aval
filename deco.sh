#!/bin/bash

echo "Introduce el nombre de la ciudad: "
read ciudad 

consumos=$(grep $ciudad consumos.txt | awk '{print $4}')

media=$(echo "$consumos" | awk '{s+=$1} END {print s/NR}')


if [ $media -lt 400 ]; then
    echo "La media de esta ciudad es ECO! Genial!"
elif [ $media -gt 400 ]; then
    echo "La media de esta ciudad es NO ECO......"
else 
    echo "La media de esta ciudad es NO ECO......"
fi