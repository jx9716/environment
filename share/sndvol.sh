re='^[0-9]+$'
if ! [[ "$1" =~ $re ]] ; then
	echo Not a number
	exit 1
fi
amixer sset 'PCM' $1% >/dev/null
echo Set the output volume to $1%
