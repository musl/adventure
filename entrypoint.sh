#!/bin/sh
tmux new-session -c / -s adventure -d 'simh-pdp8 simh.cfg' 
sleep 2
tmux send-keys "R FRTS"
tmux send-keys Enter
tmux send-keys "ADVENT.LD"
tmux send-keys Enter
tmux send-keys Escape
tmux attach
