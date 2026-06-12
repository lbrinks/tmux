#!/bin/sh

# Prepend persistent sesh path in coder environments
[ "$CODER" = "true" ] && export PATH="/workspace/bin:$PATH"

current=$(tmux display-message -p '#S')
pos=$(sesh list -t -c | sort | awk -v cur="$current" '$0 == cur {print NR}')

selected=$(sesh list -t -c | sort | awk '{printf "%d  %s\n", NR-1, $0}' | fzf --no-sort --border \
  --layout=reverse \
  --prompt '  ' --header '  sesh' \
  --preview 'sesh preview {2..}' \
  --highlight-line \
  --bind "load:pos(${pos:-1})" \
  --bind 'q:transform:[ -z {q} ] && echo abort || echo put\(q\)' \
  --bind '0:transform:[ -z {q} ] && echo pos\(1\)+accept || echo put\(0\)' \
  --bind '1:transform:[ -z {q} ] && echo pos\(2\)+accept || echo put\(1\)' \
  --bind '2:transform:[ -z {q} ] && echo pos\(3\)+accept || echo put\(2\)' \
  --bind '3:transform:[ -z {q} ] && echo pos\(4\)+accept || echo put\(3\)' \
  --bind '4:transform:[ -z {q} ] && echo pos\(5\)+accept || echo put\(4\)' \
  --bind '5:transform:[ -z {q} ] && echo pos\(6\)+accept || echo put\(5\)' \
  --bind '6:transform:[ -z {q} ] && echo pos\(7\)+accept || echo put\(6\)' \
  --bind '7:transform:[ -z {q} ] && echo pos\(8\)+accept || echo put\(7\)' \
  --bind '8:transform:[ -z {q} ] && echo pos\(9\)+accept || echo put\(8\)' \
  --bind '9:transform:[ -z {q} ] && echo pos\(10\)+accept || echo put\(9\)' \
  | sed 's/^[0-9]*  //')
[ -n "$selected" ] && sesh connect "$selected"
