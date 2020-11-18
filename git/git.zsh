#!/bin/zsh

# Thanks to https://stackoverflow.com/a/58517668/928098
autoload -Uz compinit

# Note that -u disables security checking
#
# This...isn't entirely great.
# I like the fact it does some security checks, and don't like that I'm disabling them.
# On the other hand, I don't love that it checks group writability, because on OSX with Homebrew, some of the directories are writable by the admin group, and I'm ok with that
#
# But (though I'm not actually using it) this is the official recommendation of ohmyzsh: https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390589452
compinit -u
