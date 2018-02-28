#!/bin/bash

fichero=$1

#Muestra el mensaje
	echo "Contenido actual del directorio HOME:">$1
	echo>>$1
	echo>>$1
	ls -al $home >>$1
	echo>>$1
	echo>>$1
	echo>>$1
#Muestra el mensaje
	echo "Contenido actual del directorio Raíz:">>$1
	echo>>$1
	echo>>$1
#Se hace ls al directorio raíz
	ls -al / >>$1

