#!/bin/sh

#opens up 4 windows with tmux mad fast bruv

tmux send-keys 'htop'
tmux split-window -h
tmux send-keys './vpn.sh'
tmux select-pane -L
tmux split-window -v
tmux send-keys 'vim agenda.txt'
tmux select-pane -R
tmux split-window -v
tmux send-keys 'tcpdump'

