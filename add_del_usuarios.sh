#!/bin/bash

OPERATION=`cat $1 | cut -d',' -f1`
USERNAME=`cat $1 | cut -d',' -f2`

if [ $OPERATION == add ]
then
      if [ $USERNAME != `cat /etc/passwd | cut -d':' -f1` ]
      then
            echo "Creando usuario $USERNAME ..."
            adduser $USERNAME
            exit
      else
            exit
      fi
elif [ $OPERATION == del] 
then	
      if [ $USERNAME == `cat /etc/passwd | cut -d':' -f1 ] 
      then
            echo "Borrando usuario $USERNAME ..." 
            userdel $USERNAME 
            exit
      else
            exit
      fi
fi
