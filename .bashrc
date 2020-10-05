#!/bin/bash

#set -o history -o histexpand

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

function finder() {
    if [[ "$#" -ne 1 ]]; then
        echo "USAGE: $0 <mark>"
    exit
    fi

    MARK=$1

    goto $MARK
    open .
}

export -f finder

function tab() {
    #!/bin/bash

    # Opens the specified number of tab windows
    # Note: You may have to allow terminal access through system preferences, and depends on the terminal being used

    # Check the proper number of arguments
    if [[ "$#" -ne 1 ]]; then
        echo "USAGE: $0 <tab-number>"
    exit
    fi
 
    # Stolen from http://dan.doezema.com/2013/04/programmatically-create-title-tabs-within-the-mac-os-x-terminal-app/
    function new_tab() {
    osascript \
        -e "tell application \"Terminal\"" \
        -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
        -e "end tell" > /dev/null
    } 


    COUNT=$1
    while [[ $COUNT > 0 ]]; do
        COUNT="$(($COUNT - 1))"
        new_tab
    done
}

export -f tab


function activate() {
    ENVIRONMENT='venv'
    if [[ $# == 1 ]]; then
        ENVIRONMENT=$1
    fi

    source "${ENVIRONMENT}/bin/activate"
}

export -f activate


