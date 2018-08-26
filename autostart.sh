#!/bin/bash

# Terminate already running bar:
killall -q polybar
# Wait until the process have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done
#Launch bar 1 and 2
polybar example -r &
