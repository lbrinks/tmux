#!/bin/sh

# TPM bootstrap
if [ ! -d "$HOME/.config/tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.config/tmux/plugins/tpm" \
    && "$HOME/.config/tmux/plugins/tpm/bin/install_plugins"
fi

# sesh bootstrap
if ! command -v sesh >/dev/null 2>&1; then
  case "$(uname -s)" in
    Darwin)
      brew install joshmedeski/sesh/sesh
      ;;
    Linux)
      if [ "$CODER" = "true" ]; then
        mkdir -p /workspace/bin
        GOBIN=/workspace/bin go install github.com/joshmedeski/sesh@latest
      else
        mkdir -p "$HOME/.local/bin"
        GOBIN="$HOME/.local/bin" go install github.com/joshmedeski/sesh@latest
      fi
      ;;
  esac
fi