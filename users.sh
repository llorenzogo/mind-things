#!/bin/bash
 
clear
if [ $# -eq 0 ]
    then
    echo "Debe ejecutar es script con parámetros"
    exit
fi
if [ "$USER" != "root" ]
    then
    echo "Hay que sudar"
    exit
fi
if [ "$1" = "-u" -o "$1" = "-U" ]
    then
    if [ -z "$2" ]
        then
        echo "Después de -u va un usuario"
        exit
    fi
    VALIDAR=`more /etc/passwd | grep ^"${2}:"`
    if [ -z "$VALIDAR" ]
        then
        echo "$2 no es un usuario del sistema"
        exit
    fi
    DIRHOME=`echo $VALIDAR | cut -d: -f6`
    PESO=`du -sh $DIRHOME | cut -f1`
    echo "Usuario $2 encontrado"
    echo "Dir home: $DIRHOME ocupa: $PESO"
    exit
fi
