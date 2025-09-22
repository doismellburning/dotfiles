#!/bin/bash

# Ugh this is a nasty hack
cat << EOF > "$HOME"/.config/ghostty/config
# Auto-overwritten by .dotfiles/ghostty/ghostty.bash
theme = Xcode Dark hc

# Disable ligatures
# Thanks https://github.com/ghostty-org/ghostty/discussions/3323#discussioncomment-11698037
font-feature = -calt
font-feature = -liga
font-feature = -dlig
EOF
