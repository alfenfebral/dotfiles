#!/bin/sh
sessname="workspace"

if [ ! "$TMUX" ]; then
	tmux new-session -d -s "$sessname"
	tmux send-keys -t "$sessname" "notes.sh" Enter
	tmux attach -t "$sessname"
else
	tmux rename-window notes
	cd /home/neo/Documents/'Obsidian Vault' Vault
	nvim
fi
