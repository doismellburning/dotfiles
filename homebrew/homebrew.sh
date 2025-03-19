#!/bin/sh

BREW_BIN=/opt/homebrew/bin/brew

if command -v $BREW_BIN >/dev/null 2>&1
then
	eval `"$BREW_BIN" shellenv`
fi
