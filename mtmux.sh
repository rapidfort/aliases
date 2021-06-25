#!/bin/bash
#
# Use tmux to run multiple commands in parallel with output split horizontally on the screen
#

tmux_args="new-session "

if [ $# -lt 1 ] ; then
    echo "ERROR: Must specify at least one command!"
    exit 1
fi

for arg in "${@:1:$#-1}" ; do
    tmux_args+="'""$arg""; read -p \"Command finished with $?. Press a Key...\"' \; split-window "
done

tmux_args+="'""${@: -1}""; read -p \"Command finished with $?. Press a Key...\"' \; select-layout even-vertical"

#echo tmux $tmux_args
eval tmux ${tmux_args}
