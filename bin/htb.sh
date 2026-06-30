#!/bin/sh

ICON="󰷛"

GREEN="%{F#9ece6a}"
CYAN="%{F#7dcfff}"
RESET="%{F-}"

SP=" "

if ip a | grep -qE "tun0|wg0"; then
    IP=$(ip -4 addr show | awk '/tun0|wg0/{f=1} f&&/inet /{print $2; exit}' | cut -d/ -f1)
    echo "${GREEN}${ICON}${RESET}${SP}${GREEN}${IP}${RESET}"
else
    echo "${CYAN}${ICON}${RESET}${SP}${CYAN}Disconnected${RESET}"
fi
