#! /bin/sh
#========================================#
#     Caligula's wal recycle script.     #
#========================================#

# Cycle wal background image and colorscheme.
wal -i "$HOME/Downloads/wpbot2.jpg"

# Restart polybar to match new colorscheme.
pkill polybar
polybar rome &

# Refresh bspwm's colorscheme.
. "$HOME/.cache/wal/colors.sh"
bspc config normal_border_color $color0
bspc config focused_border_color $color1
bspc config active_border_color $color1
bspc config presel_feedback_color $color1
