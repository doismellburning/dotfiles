#!/bin/sh

HOSTNAME=$(hostname -s)

case "$HOSTNAME" in
	(52565-mac) echo "Configuring $HOSTNAME for Optile";;
	(*) echo "Bailing on Optile config because $HOSTNAME looks like a personal machine"; return;;
esac

export GIT_AUTHOR_EMAIL="kristian.glass@optile.net"
export GIT_COMMITTER_EMAIL="kristian.glass@optile.net"
