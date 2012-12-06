#!/bin/bash

echo 'Start';
counter=0
mkdir allowed-files;
while read line
do
	for file in *
	do
		if [[ $file = $line ]]
		then
			echo 'Copied:' $file
			cp $file allowed-files
			counter=$(($counter+1));
		fi
	done
done < 'allowed.txt' # File containing names of allowed files
echo 'Done: copied' $counter;

