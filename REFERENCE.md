# tmux Reference

Prefix: **`C-s`** (send-prefix also bound to `C-a`)

---

## Panes

| Key | Action |
|---|---|
| `C-h/j/k/l` | Navigate panes (vim-tmux-navigator, works across vim/nvim) |
| `prefix '` | Split vertical (preserve cwd) **[custom]** |
| `prefix ]` | Split horizontal (preserve cwd) **[custom]** |
| `prefix "` | Split horizontal (default) |
| `prefix %` | Split vertical (default, unbound) |
| `prefix x` | Kill pane **[custom]** |
| `prefix &` | Kill window (with confirmation) |
| `prefix !` | Break pane into new window |
| `prefix m` | Maximize/zoom pane (toggle) **[custom]** |
| `prefix z` | Zoom pane (toggle) |
| `prefix q` | Display pane numbers |
| `prefix o` | Select next pane |
| `prefix ;` | Select last pane |
| `prefix Up/Down/Left/Right` | Navigate panes |
| `prefix {` | Swap with previous pane |
| `prefix }` | Swap with next pane |
| `prefix C-o` | Rotate window (cycle panes) |
| `prefix M-o` | Rotate window (reverse) |
| `prefix Space` | Cycle to next layout |
| `prefix E` | Spread panes evenly |
| `prefix M-1` | Layout: even-horizontal |
| `prefix M-2` | Layout: even-vertical |
| `prefix M-3` | Layout: main-horizontal |
| `prefix M-4` | Layout: main-vertical |
| `prefix M-5` | Layout: tiled |
| `prefix M-6` | Layout: main-horizontal-mirrored |
| `prefix M-7` | Layout: main-vertical-mirrored |
| `prefix A` | Toggle synchronize-panes **[custom]** |
| `prefix M` | Select pane for marking |

### Resize Panes

| Key | Action |
|---|---|
| `prefix j` | Resize down 5 **[custom, repeatable]** |
| `prefix k` | Resize up 5 **[custom, repeatable]** |
| `prefix h` | Resize left 5 **[custom, repeatable]** |
| `prefix L` | Resize right 5 **[custom, repeatable]** |
| `prefix C-Up/Down/Left/Right` | Resize pane 1 cell **[repeatable]** |
| `prefix M-Up/Down/Left/Right` | Resize pane 5 cells **[repeatable]** |
| `prefix S-Up/Down/Left/Right` | Resize client 10 cells **[repeatable]** |

---

## Windows

| Key | Action |
|---|---|
| `prefix c` | New window (preserve cwd) **[custom]** |
| `prefix n` | Next window |
| `prefix p` | Previous window |
| `prefix M-n` | Next window (with alert) |
| `prefix M-p` | Previous window (with alert) |
| `prefix l` | Open lazygit popup **[custom]** |
| `prefix 0-9` | Switch to window |
| `prefix w` | Choose window (tree view) |
| `prefix f` | Find window |
| `prefix ,` | Rename window |
| `prefix .` | Move window |
| `prefix &` | Kill window (with confirmation) |
| `prefix <` | Window menu (swap, kill, mark, rename) |

---

## Sessions

| Key | Action |
|---|---|
| `prefix s` | Choose session (tree view) |
| `prefix $` | Rename session |
| `prefix (` | Previous client |
| `prefix )` | Next client |
| `prefix d` | Detach |
| `prefix D` | Choose client |
| `prefix C-z` | Suspend client |
| `prefix i` | Display message (session info) |
| `prefix ~` | Show messages |
| `prefix t` | Clock mode |

---

## Buffers

| Key | Action |
|---|---|
| `prefix [` | Enter copy mode |
| `prefix ]` | Split horizontal (custom, overrides paste) **[custom]** |
| `prefix =` | Choose buffer |
| `prefix #` | List buffers |
| `prefix -` | Delete buffer |
| `prefix PPage` | Copy mode (scroll up) |

---

## Copy Mode (Emacs-style)

Enter with `prefix [`.

### Navigation

| Key | Action |
|---|---|
| `h/j/k/l` | Not available (use arrows) |
| `Up/Down/Left/Right` | Move cursor |
| `C-n/C-p` | Cursor down/up |
| `C-f/C-b` | Cursor right/left |
| `C-a` | Start of line |
| `C-e` | End of line |
| `M-f` | Next word end |
| `M-b` | Previous word |
| `M-m` | Back to indentation |
| `Home/End` | Start/end of line |
| `PPage/NPage` | Page up/down |
| `C-v` | Page down |
| `M-v` | Page up |
| `M-<` | History top |
| `M->` | History bottom |
| `M-R` | Top line |
| `M-r` | Middle line |
| `M-{` / `M-}` | Previous/next paragraph |
| `C-Up/C-Down` | Scroll up/down |
| `M-Up/M-Down` | Half page up/down |
| `C-l` | Center cursor vertically |
| `M-l` | Center cursor horizontally |
| `C-M-f/C-M-b` | Next/previous matching bracket |
| `q/Esc/C-c` | Cancel/exit copy mode |

### Jumping

| Key | Action |
|---|---|
| `f` | Jump forward to character |
| `F` | Jump backward to character |
| `t` | Jump to forward (before character) |
| `T` | Jump to backward (before character) |
| `;` | Repeat jump |
| `,` | Reverse jump |

### Searching

| Key | Action |
|---|---|
| `C-r` | Search backward (incremental) |
| `C-s` | Search forward (incremental) |
| `n` | Search again |
| `N` | Search reverse |

### Selection & Copy

| Key | Action |
|---|---|
| `C-Space` | Begin selection |
| `C-g` | Clear selection |
| `R` | Toggle rectangle selection |
| `y` | Copy to clipboard (pbcopy) and exit |
| `C-w` | Copy selection and exit |
| `C-k` | Copy to end of line and exit |
| `M-w` | Copy and exit |
| `M-y` | Copy and paste |
| `Y` | Copy and paste into tmux buffer |
| `!` | Copy (strip newlines) to clipboard |
| `Enter` | (not bound in emacs mode) |
| `X` | Set mark |
| `M-x` | Jump to mark |
| `A` | (not bound in emacs mode) |
| `P` | Toggle position |

### Mouse (Copy Mode)

| Action | Effect |
|---|---|
| Click pane | Select pane |
| Drag pane | Begin selection |
| Release drag | Copy to clipboard |
| Double-click | Select word, copy |
| Triple-click | Select line, copy |
| Scroll up/down | Scroll 5 lines |

### Misc (Copy Mode)

| Key | Action |
|---|---|
| `g` | Go to line (prompt) |
| `r` | Refresh from pane |
| `M-1` to `M-9` | Repeat next action N times |

---

## Copy Mode (Vi-style)

Enter with `prefix [` (if `set -g mode-keys vi` is set, otherwise emacs is default).

### Navigation

| Key | Action |
|---|---|
| `h/j/k/l` | Move cursor |
| `w/b/e` | Next word / previous word / next word end |
| `W/B/E` | Next/previous space-delimited word |
| `0` | Start of line |
| `$` | End of line |
| `^` | Back to indentation |
| `H` | Top line |
| `M` | Middle line |
| `L` | Bottom line |
| `g` | History top |
| `G` | History bottom |
| `{` / `}` | Previous/next paragraph |
| `f/F` | Jump forward/backward to character |
| `t/T` | Jump to forward/backward |
| `;` / `,` | Repeat / reverse jump |
| `%` | Next matching bracket |
| `J/K` | Scroll down/up |
| `z` | Scroll to center |
| `C-b/C-f` | Page up/down |
| `C-d/C-u` | Half page down/up |
| `C-e/C-y` | Scroll down/up |
| `PPage/NPage` | Page up/down |
| `q/Esc` | Cancel/exit |

### Selection & Copy

| Key | Action |
|---|---|
| `Space` | Begin selection |
| `v` | Toggle rectangle selection |
| `V` | Select line |
| `Enter` | Copy and exit |
| `y` | Copy to clipboard (pbcopy) and exit |
| `D` | Copy to end of line and exit |
| `A` | Append selection and exit |
| `o` | Other end of selection |
| `X` | Set mark |
| `M-x` | Jump to mark |
| `Y` | Copy and paste into tmux buffer |
| `!` | Copy (strip newlines) to clipboard |
| `P` | Toggle position |

### Searching (Vi)

| Key | Action |
|---|---|
| `/` | Search forward |
| `?` | Search backward |
| `n` | Search again |
| `N` | Search reverse |
| `*` | Search forward for word under cursor |
| `#` | Search backward for word under cursor |

### Pane Navigation (Vi Copy Mode)

| Key | Action |
|---|---|
| `C-h/j/k/l` | Navigate to adjacent pane |
| `C-\` | Select last pane |

---

## Plugins

### Resurrect / Continuum

| Key | Action |
|---|---|
| `prefix S` | Save session |
| `prefix R` | Restore session |

Continuum auto-restores on startup. Pane contents are captured.

### Yank

| Key | Action |
|---|---|
| `y` (copy mode) | Copy to system clipboard |
| `prefix Y` | Copy pane current path |
| `prefix y` | Copy line |

### TPM

| Key | Action |
|---|---|
| `prefix I` | Install plugins |
| `prefix U` | Update plugins |
| `prefix u` | Clean plugins |

---

## Misc

| Key | Action |
|---|---|
| `prefix r` | Reload config **[custom]** |
| `prefix C-l` | Send clear **[custom]** |
| `prefix C-k` | Send C-k **[custom]** |
| `prefix :` | Command prompt |
| `prefix ?` | List all keybindings |
| `prefix /` | List keys by pattern |
| `prefix C` | Customize mode |

---

## Mouse

Mouse is enabled.

| Action | Effect |
|---|---|
| Click pane | Select pane |
| Click status bar | Switch to window |
| Scroll pane | Enter copy mode and scroll |
| Scroll status bar | Cycle windows |
| Drag border | Resize pane |
| Right-click pane | Context menu (split, swap, kill, zoom, mark) |
| Right-click status | Context menu (swap windows, kill, rename) |
| Right-click status left | Context menu (switch session, rename, new session) |
| Double-click pane | Select word, copy to clipboard |
| Triple-click pane | Select line, copy to clipboard |

---

## Configuration Notes

- Status bar: **top**
- Window numbering starts at **1**
- Pane numbering starts at **1**
- Detach on destroy: **off** (closing a session doesn't close tmux)
- Theme: **nordfox**
