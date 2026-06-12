#!/bin/sh

panes=$(tmux list-panes | wc -l | tr -d ' ')
windows=$(tmux list-windows | wc -l | tr -d ' ')

if [ "$panes" -gt 1 ]; then
  tmux kill-pane
elif [ "$windows" -gt 1 ]; then
  tmux confirm-before -p "Kill window? " kill-window || true
else
  tmux confirm-before -p "Kill session? " kill-session || true
fi