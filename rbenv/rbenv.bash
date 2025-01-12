#!/bin/bash

if $(which rbenv)
then
	eval "$(rbenv init - bash)"
fi
