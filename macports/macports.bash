alias sp='sudo /opt/local/bin/port'
alias spup='sp selfupdate && sp upgrade outdated'

function spclean() {
    sp clean --all installed
    sp uninstall inactive
}

