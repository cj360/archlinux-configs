#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch Polybar, using default config location ~/.config/polybar/config
echo "---" | tee -a /tmp/polybar-main.log
polybar main >>/tmp/polybar-main.log 2>&1 &
echo "Polybar launched..."