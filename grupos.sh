#!/bin/bash

if [ "$1" == "crea" ]
then
        echo "Bienvenido al creador de usuarios"
        echo "¿Qué usuarios desea crear?(si son varios separar por comas y no poner espacios)"
        read usuarios
        echo "Creando usuarios..."
        `useradd $usuarios`
        echo "Usuarios creados."
        echo "¿Qué nombre quiere darle al grupo en el que estarán estos usuarios?"
        read grupo
        echo "Creando Grupo..."
        `groupadd -g 1556 $grupo`
        echo "Añadiendo los usuarios al grupo..."
        `usermod -G 1556 $usuarios`
        echo "Usuarios añadidos con éxito."
        exit


elif [ "$1" == "borra" ]
then
        echo "Bienvenido al borrador de usuarios y grupo."
        echo "Introduzca el nombre de usuario o grupo que desea borrar"
        read usuariosdel
        VALIDAR=`more /etc/passwd | grep "^${usuariosdel}:"`
        if [ -z "$VALIDAR" ]
       	then
               	exit
        else
               	echo "Borrando Usuario..."
               	`userdel $usuariosdel`
               	exit
        fi
	VALIDARGR=`more /etc/group | grep "^${usuariosdel}:"`
        if [ -z "$VALIDARGR" ]
	then
		echo "$usuariosdel no es un usuario o un grupo del sistema"
		exit
	else
		echo "Borrando Grupo..."
		`groupdel $usuariosdel`
		exit
	fi
else
	echo "Utilice los parametros crea o borra."

fi
exit
