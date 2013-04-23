function autoscreen() {
	autossh -x -a -t "$@" "screen -x"
}
