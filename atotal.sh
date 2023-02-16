#!/bin/bash

echo "Introduce el nombre de la ciudad: "
read ciudad 

while [ $(grep -c "^$ciudad " consumos.txt) -eq 0 ]; do
    echo "La ciudad $ciudad no existe en el archivo"
    echo "Introduzca el nombre de la ciudad:"
    read ciudad
done

total=$(grep "^$ciudad " consumos.txt | awk '{total += $3} END {print total}')
echo "El total de consumo de $ciudad es: $total kWh"