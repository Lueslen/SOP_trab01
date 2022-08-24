#!/usr/bin/bash

user=$(whoami)
day=$(date +%A)


if [[ $1 = "-welcome" ]]
then
	echo "Welcome, $user! Today is $day!"
fi


if [[ $1 = "-version" ]]
then
	echo 'System version 0.1.4.4'
fi


if [[ $1 = "-help" ]]
then
	echo '-welcome'
    echo '-version'
    echo '-help'
	echo '-search'
fi


if [[ $1 = "-search" ]]
then
	echo "File name"
	read nomeArq
	if [[ -f $nomeArq ]]
	then
		echo "Text to search"
		read grepvar
		grep -i $grepvar $nomeArq
	else
		echo "File not found"
	fi
fi