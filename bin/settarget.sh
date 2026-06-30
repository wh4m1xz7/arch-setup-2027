#!/bin/bash

FILE="$HOME/.config/bin/target"

ICON="󰓾"

RED="%{F#f7768e}"
GREEN="%{F#9ece6a}"
WHITE="%{F#f1f1f1}"
RESET="%{F-}"

if [ -s "$FILE" ]; then
    ip=$(cut -d' ' -f1 "$FILE")
    name=$(cut -d' ' -f2- "$FILE")

    # ACTIVO: todo rojo menos nombre verde
    echo "${RED}${ICON}${RESET} ${RED}${ip}${RESET} - ${GREEN}${name}${RESET}"
else
    # INACTIVO: icono rojo + texto blanco
    echo "${RED}${ICON}${RESET} ${WHITE}No target${RESET}"
fi
