#!/bin/bash


# Gathers usage data into temp.txt
top -stats pid,cpu | grep -v "0.0" > temp.txt;

# Removes temporary file
rm temp.txt;