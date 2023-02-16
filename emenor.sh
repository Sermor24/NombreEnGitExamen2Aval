#!/bin/bash

consumos=$(grep $ciudad consumos.txt | awk '{print $4}')

media=$(echo "$consumos" | awk '{s+=$1} END {print s/NR}')

menor_media=

