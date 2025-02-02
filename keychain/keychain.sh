#!/bin/sh

if ! command -v keychain >/dev/null 2>&1
then
	echo "Bailing on Keychain config because \"keychain\" is not an available command"
	return
fi

eval $(keychain --eval "${HOME}"/.ssh/id_!(*.pub))
