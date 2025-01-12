#!/bin/zsh

if $(which rbenv)
then
	eval "$(rbenv init - zsh)"
fi
