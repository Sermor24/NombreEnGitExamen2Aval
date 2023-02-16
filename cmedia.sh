
echo "Introduce el nombre de la ciudad: "
read ciudad 

consumos=$(grep $ciudad consumos.txt | awk '{print $4}')

media=$(echo "$consumos" | awk '{s+=$1} END {print s/NR}')

echo "La media de consumos en la ciudad de $ciudad es: $media"