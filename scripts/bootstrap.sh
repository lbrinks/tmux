#!/bin/sh

# TPM bootstrap
if [ ! -d "$HOME/.config/tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.config/tmux/plugins/tpm" \
    && "$HOME/.config/tmux/plugins/tpm/bin/install_plugins"
fi

# sesh bootstrap (coder environments only)
if [ "$CODER" = "true" ] && [ ! -f /workspace/bin/sesh ]; then
  mkdir -p /workspace/bin
  GOBIN=/workspace/bin go install github.com/joshmedeski/sesh@latest
fi
