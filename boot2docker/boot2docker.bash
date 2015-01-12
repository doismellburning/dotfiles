BOOT2DOCKER=$(which boot2docker)

if [[ -x ${BOOT2DOCKER} ]]
then
	ISRUNNING=$(${BOOT2DOCKER} status | grep --silent running ; echo $?)

	if ((0 == ISRUNNING))
	then
		$(${BOOT2DOCKER} shellinit 2> /dev/null)
	fi
fi
