#!/bin/bash
aux=0
reg='Register'
tem='Template'
for i in $(ls Register/ | sort -V);
do
    aux=$((aux+1))
    echo "$i \t\t -> \t\t subject_$aux.cap" >> ./log0.log
    cp $reg/$i $reg/subject_$aux.cap
done

aux=0
for i in $(ls Template/ | sort -V);
do
    aux=$((aux+1))
    echo "$i \t\t -> \t\t subject_$aux.cap" >> ./log1.log
    cp $tem/$i $tem/subject_$aux.cap
done
