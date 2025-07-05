#!/usr/bin/env bash

INTERFACE="wlan0"

# Obtener potencia de señal (dBm)
SIGNAL=$(iwconfig $INTERFACE | grep -i --color=never 'signal level' | awk -F '=' '{print $3}' | awk '{print $1, $2}')

# Obtener calidad de señal (x/70)
QUALITY=$(iwconfig $INTERFACE | grep -i --color=never 'Link Quality' | awk -F '=' '{print $2}' | awk '{print $1}')

# Obtener IP local usando ip addr (compatible con Arch)
IP=$(ip addr show $INTERFACE | grep "inet " | awk '{print $2}' | cut -d/ -f1)

# Manejo si no hay IP (desconectado)
if [ -z "$IP" ]; then
    IP="No IP"
fi

# Definir colores (deben coincidir con los de polybar)
COLOR_ICON="%{F#0db9d7}"      # colors.primary
COLOR_PIPE="%{F#BD00FF}"      # secondary (color del separador | en tu config)
COLOR_TEXT="%{F#bb9af7}"      # foreground general (texto principal)

# Mostrar con colores y pipes
echo "${COLOR_ICON} ${COLOR_TEXT} $IP ${COLOR_PIPE}|${COLOR_TEXT} $SIGNAL ${COLOR_PIPE}|${COLOR_TEXT} $QUALITY"
