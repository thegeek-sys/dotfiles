#!/bin/bash

INTERFACE="en0"
TEMP_FILE="/tmp/sketchybar_netstat"

# Ottieni i byte attuali
RX_BYTES=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface {print $7; exit}')
TX_BYTES=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface {print $10; exit}')

# Se il file temporaneo esiste, calcola la velocità
if [[ -f "$TEMP_FILE" ]]; then
    read PREV_RX PREV_TX < "$TEMP_FILE"

    RX_DIFF=$((RX_BYTES - PREV_RX))
    TX_DIFF=$((TX_BYTES - PREV_TX))

    RX_SPEED=$(awk "BEGIN {printf \"%.1f\", $RX_DIFF / 1024 / 1024}")
    TX_SPEED=$(awk "BEGIN {printf \"%.1f\", $TX_DIFF / 1024 / 1024}")

    # Se inferiore a 1MB, mostra in KB
    [[ $(echo "$RX_SPEED < 1" | bc -l) -eq 1 ]] && RX_SPEED=$(awk "BEGIN {printf \"%.0fKB\", $RX_DIFF / 1024}") || RX_SPEED="${RX_SPEED}MB"
    [[ $(echo "$TX_SPEED < 1" | bc -l) -eq 1 ]] && TX_SPEED=$(awk "BEGIN {printf \"%.0fKB\", $TX_DIFF / 1024}") || TX_SPEED="${TX_SPEED}MB"
fi

# Salva i nuovi valori
echo "$RX_BYTES $TX_BYTES" > "$TEMP_FILE"

sketchybar --set "$NAME" label="􀄯 $TX_SPEED  􀄰 $RX_SPEED"
