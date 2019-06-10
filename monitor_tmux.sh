#!/bin/sh
# A script to quickly open up tmux panes to monitor server
session="work"

tmux start-server

tmux new-session -d -s $session -n monitor

tmux selectp -t 1
tmux send-keys "tail -f /var/log/syslog" C-m

tmux splitw -h
tmux send-keys "tail -f /var/log/auth.log" C-m

tmux selectp -t 2
tmux splitw -v
tmux send-keys "watch ss -tp" C-m

tmux selectp -t 0
tmux splitw -v
tmux send-keys "watch netstat -tan" C-m

tmux selectp -t 3
tmux send-keys "api" C-m

tmux select-window -t $session:0

tmux attach-session -t $session
