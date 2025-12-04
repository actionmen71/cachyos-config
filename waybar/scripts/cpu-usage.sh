#!/usr/bin/env bash

# Get CPU usage as percentage (user + system)
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2 + $4)}')
CPU=${CPU:-0}  # fallback if empty

# Determine class based on usage
if [ "$CPU" -lt 50 ]; then
    CLASS="cpu-low"
elif [ "$CPU" -lt 80 ]; then
    CLASS="cpu-medium"
else
    CLASS="cpu-high"
fi

# Output JSON for Waybar
printf '{"text":"󰻠: %s%%","class":"%s"}\n' "$CPU" "$CLASS"
