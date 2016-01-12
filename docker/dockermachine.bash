DOCKERMACHINE=$(which docker-machine)

if [[ -x ${DOCKERMACHINE} ]]
then
	ISRUNNING=$(${DOCKERMACHINE} status default | grep -i --silent running ; echo $?)

	if ((0 == ISRUNNING))
	then
		eval $(${DOCKERMACHINE} env default)
	fi
fi
