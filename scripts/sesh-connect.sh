#!/bin/sh

# Prepend persistent sesh path in coder environments
[ "$CODER" = "true" ] && export PATH="/workspace/bin:$PATH"

selected=$(sesh list | fzf --no-sort --border --prompt '  ' --header '  sesh' --preview 'sesh preview {}')
[ -n "$selected" ] && sesh connect "$selected"
