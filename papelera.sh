#!/bin/bash

if [ ! -d ~/papelera ]
then
	echo "Creando Papelera"
	mkdir ~/papelera
fi

if [ -f "$1" ]
then
	if [ -f ~/papelera/$1 ]
	then
		echo "Moviendo a la papelera"
		mv $1 ~/papelera/"$1.$RANDOM"
	else
		echo "Moviendo a la papelera"
		mv $1 ~/papelera/
	fi
fi
