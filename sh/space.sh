#!/bin/sh
sessname="workspace"

if [ ! "$TMUX" ]; then
	tmux new-session -d -s "$sessname"
	tmux send-keys -t "$sessname" "space ." Enter
	tmux attach -t "$sessname"
else
	dirName=${PWD##*/}          # to assign to a variable
	tmux rename-window ${dirName}
	nvim
fi

