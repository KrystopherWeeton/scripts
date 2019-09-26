#!/bin/bash

# Removes the specified mark from the list of marks

# Check the proper number of arguments
if [[ "$#" -ne 1 ]]; then
    echo "USAGE: $0 <mark-name>"
  exit
fi


INPUT_FILE="/Users/Krystopher_Weeton/scripts/MARKS"
TEMP_FILE="/Users/Krystopher_Weeton/scripts/TEMP"
TO_REMOVE=$1

grep -v $TO_REMOVE $INPUT_FILE > $TEMP_FILE

mv $TEMP_FILE $INPUT_FILE

list
