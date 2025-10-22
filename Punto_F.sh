#!/bin/bash
mkdir -p ~/Punto_F
FILE=~/Punto_F/Filtro_Avanzando.txt
IP_PUBLICA=$(curl -s ifconfig.me)
MODELO=$(grep "model name" /proc/cpuinfo | head -n 1 | cut -d: -f2 | xargs)
FREQ_MHZ=$(grep "cpu MHz" /proc/cpuinfo | head -n 1 | cut -d: -f2 | xargas)
FREQ_GHZ=$(echo "scale=2, $FREQ_MHZ / 1000" | bc >2/dev/null)
echo "Mi ip publica es: $IP_PUBLICA" > "$FILE"
echo "CPU Modelo: $MODELO Frecuencia: $FREQ_GHZ GHz" >> "$FILE"
