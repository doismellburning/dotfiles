#!/bin/bash

if test -f "$(which starship)"
then
	eval "$(starship init bash)"
fi
