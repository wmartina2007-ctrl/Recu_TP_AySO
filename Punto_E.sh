#!/bin/bash
mkdir -p ~/Punto_E
FILE=~/Punto_E/Filtro_basico.txt
grep "MemTotal :" /proc/meminfo | awk '{print "Memoria Total: " $2 " " $3}' > "$FILE"
MODELO=$(grep "model name" /proc/cpuinfo | head -n 1 | cut -d: -f2 | xargs)
FREQ_MHZ=$(grep "cpu MHZ" /proc/cpuinfo | head -n 1 | cut -d: -f2 | xargas)
FREQ_GHZ=$(echo "scale=2; $FREQ_MHZ / 1000" | bc 2>/dev/null)
echo "Modelo Microprocesador: $MODELO" >> "$FILE"
echo "Frecuencia: $FREQ_GHZ GHz" >> "$FILE"

