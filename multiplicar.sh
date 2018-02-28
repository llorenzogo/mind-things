#!/bin/bash
 
clear
if [ -z $1 ]
    then
    DER=0
    IZQ=0
    while [ $IZQ -lt 10 ]
        do 
        while [ $DER -lt 10 ]
            do
            echo "${IZQ}*${DER}=`expr $IZQ \* $DER`"
            DER=`expr $DER + 1`
        done
        DER=0
        IZQ=`expr $IZQ + 1`
    done
exit
fi
if [ $1 -ge 0 -a $1 -lt 10 ]
    then
    DER=0
    while [ $DER -le 10 ]
        do
        echo "${1}*${DER}=`expr $1 \* $DER`"
        DER=`expr $DER + 1`
    done
exit
fi
if [ "$1" == "-f" ]
    then
    LOG="${HOME}/log.log"
    echo "Tabla de multiplicar" > $LOG
    DER=0
    IZQ=0
    while [ $IZQ -lt 10 ]
        do 
        while [ $DER -lt 10 ]
            do
            echo "${IZQ}*${DER}=`expr $IZQ \* $DER`" >> $LOG   
            DER=`expr $DER + 1`
        done
        DER=0
        IZQ=`expr $IZQ + 1`
    done
exit
fi
