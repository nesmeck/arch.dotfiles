#!/usr/bin/env bash

# Mi manera de arreglar
# la salida de audio
# en 6 canales (5.1)

# Primero para pulseaudio
pulseaudio -k &

# Esperar 5 segundos
# e iniciar de nuevo
sleep 5s && pulseaudio -D

