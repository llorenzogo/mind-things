#!/bin/bash

echo Escriba el nombre del usuario 1
read user1
echo escriba el nombre del usuario 2
read user2
echo escriba el nombre del usuario 3
read user3
echo escriba el nombre del grupo
read group
echo Creando Grupo...
groupadd -g 1555 $group
echo Creando Usuarios...
useradd -G 1555 $user1,$user2,$user3 
echo Usuarios creados.
echo añadiendo los usuarios al grupo...

