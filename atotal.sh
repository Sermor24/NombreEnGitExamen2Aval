#!/bin/bash

echo "Introduce el nombre de la ciudad: "
read ciudad 

while [ $(grep -c "^$ciudad " consumos.txt) -eq 0 ]; do
    echo "La ciudad $ciudad no existe en el archivo"
    echo "Introduzca el nombre de la ciudad:"
    read ciudad
done