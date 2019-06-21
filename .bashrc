#!/bin/bash

set -o history -o histexpand

function cdn() {

	# guard statements to ensure proper execution
	if [ "$#" -ne 1 ]; then
		echo 'Command requires a single argument'
		return 1
	fi

	# initialize variables used in script

	files=`ls`
	fileArray=($files)
	number=$1


	# determine which file to go into, and change directory


	cd ${fileArray[`expr $number - 1`]}
}

export -f cdn


function cd {
  builtin cd "$@" && ls -ah
}

function back {
	INPUT_FILE="/Users/Krystopher_Weeton/scripts/PINNED"
	while read line; do
		cd $line
	done <$INPUT_FILE
}


export -f back


function cmake() {
	clear
	make clean
	make
}

export -f cmake

function cldir() {

	if [ "$#" -ne 1 ]; then
		echo 'cmake requires a single argument which is the path to the directory to clear'
		return 1
	fi

	rm -r $1
	mkdir $1
}

export -f cldir

function goto() {

	INPUT_FILE="/Users/Krystopher_Weeton/scripts/MARKS"

	if [[ "$#" -ne 1 ]]; then
		echo "goto requires a single argument which is the name of the mark to go to."
		return 1
	fi

	ARG=$1

	while read p; do
		FIRST=1
		for w in $p; do
			if [[ FIRST -ne 1 ]]; then
				MARK=$w
			else
				DIRECTORY=$w
			fi
			FIRST=0
		done

		if [[ $MARK == $ARG ]]; then
			clear
			cd $DIRECTORY
			return
		fi

	done <$INPUT_FILE

	echo "The mark you gave does not exist. Choose one from the list below."
	list

}

export -f goto
