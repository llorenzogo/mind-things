#!/bin/bash

OPERATION=`cat $1 | cut -d',' -f1`
USERNAME=`cat $1 | cut -d',' -f2`

if [ $OPERATION == add ]
then
      if [ $USERNAME == `cat /etc/passwd | cut -d':' -f1` ]
      echo "Creando usuario $USERNAME ..."
      adduser $USERNAME
