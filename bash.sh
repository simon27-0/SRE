#!/bin/bash

# File log output
LOG_FILE="./log/sample.log"

# Baris yang akan ditulis
LOG_LINE="2025-02-05 18:30:00 payment 500 180ms user1234 tx7890 Payment completed via credit card"

# Pastikan direktori log ada
mkdir -p "$(dirname "$LOG_FILE")"

echo "Mulai menulis log ke $LOG_FILE setiap 1 detik... (Tekan CTRL+C untuk berhenti)"

# Loop tanpa henti
while true; do
  echo "$LOG_LINE" >> "$LOG_FILE"
  sleep 1
done
