#!/bin/bash

for u in `ls /home`
do
useradd $u
done
