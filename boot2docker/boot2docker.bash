BOOT2DOCKER=$(which boot2docker)

if [[ -x ${BOOT2DOCKER} ]]
then
	ISRUNNING=$(${BOOT2DOCKER} status | grep --silent running ; echo $?)

	if ((0 != ISRUNNING)) 
	then
		echo "boot2docker not running - attempting to change that"
		${BOOT2DOCKER} start
	fi

	$(${BOOT2DOCKER} shellinit 2> /dev/null)
fi
