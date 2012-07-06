alias ls="LC_COLLATE=C ls --color=auto -F"
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color'
alias hilite='grep -C 999999'
alias urxvt='urxvt -fg white -bg black +sb -fn "xft:Bitstream Vera Sans Mono:autohint=true:size=10pt"'
alias dush='du -sxh * | tee dush'

export PATH="$PATH:~/bin/"
export CVS_RSH='ssh'

export EDITOR=vim
export VISUAL=vim
export TMPDIR=/tmp
export BROWSER=/usr/bin/links
export LESS="FRX" # Kill less if <1 screen, handle escape codes, don't clear screen first


case $TERM in
	screen*)
		WINDOWTITLE='\[\033_\u@\h:\w\033\\\]'
		;;
esac

export BASEPROMPT="\[\e[0;32m\][\u@\h \w]\$ \[\e[0m\]"
export PS1="${WINDOWTITLE}${BASEPROMPT}"

function camldap() {
	ldapsearch -x -LLL -h'ldap.lookup.cam.ac.uk' -b'o=University of Cambridge, dc=cam, dc=ac, dc=uk' uid=$1
}

function rpms() {
	rpm -q --queryformat %{NAME}" - "%{SUMMARY}"\n" $1
}

function timestamp() {
	date +%Y%m%d.%H%M
}

function demorse() {
	a="  ETIANMSURWDKGOHVFULAPJBXCYZQO";i=1;while read -n1 R;do case "$R" in .)i=$((2*i));;-)i=$((2*i+1));;/)echo -n "${a:i:1}";i=1;esac;done
}

function svndiff() {
	svn diff $* | vim -R -
}

function svnlog() {
	svn log -l 50 $*
}

umask 0002

if [[ -x $(which fortune 2> /dev/null) ]]
then
	fortune
fi

BASHRCLOCAL=$HOME/.bashrc.local

if [[ -f $BASHRCLOCAL ]]
then
	. $BASHRCLOCAL
fi
