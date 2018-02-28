#!/bin/bash

clear

if [ "$USER" != "root" ]
then
	echo Hay que sudar
	exit
fi

		echo Introduzca el nombre del usuario.
		read name
		echo Creando usuario...
		useradd $name
		echo Creando directorio principal...
		mkdir /home/$name
		echo "Hola, Bienvenido a tu nuevo usuario">/home/$name/WELCOME.txt
	exit
