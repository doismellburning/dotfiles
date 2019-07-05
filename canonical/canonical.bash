#!/bin/bash

case "$HOSTNAME" in
	(definitivedevil) echo "Configuring $HOSTNAME for Canonical";;
	(canonical) echo "Configuring $HOSTNAME for Canonical";;
	(*) echo "Bailing on Canonical config because $HOSTNAME looks like a personal machine"; return;;
esac

export GIT_AUTHOR_EMAIL="kristian.glass@canonical.com"
