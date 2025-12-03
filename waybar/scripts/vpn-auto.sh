#!/usr/bin/env bash

LAST_IP_FILE="$HOME/.config/waybar/scripts/.last_public_ip"
CURRENT_IP=$(curl -s https://api.ipify.org)

# If file exists, read old IP, else assume first run
if [[ -f "$LAST_IP_FILE" ]]; then
    LAST_IP=$(cat "$LAST_IP_FILE")
else
    LAST_IP="$CURRENT_IP"
fi

# Determine VPN status: connected if current IP != last known IP OR first run and IP != empty
if [[ "$CURRENT_IP" != "$LAST_IP" ]] || [[ ! -f "$LAST_IP_FILE" ]]; then
    STATUS="connected"
else
    STATUS="disconnected"
fi

# Save current IP for next check
echo "$CURRENT_IP" > "$LAST_IP_FILE"

# Output for Waybar
if [[ "$STATUS" == "connected" ]]; then
    echo "{\"text\": \"<span color='#00ff00'> VPN</span>\", \"markup\": true}"
else
    echo "{\"text\": \"<span color='#888888'> VPN</span>\", \"markup\": true}"
fi
