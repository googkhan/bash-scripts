#!/bin/bash

## bulundugun klasoru listele
## her bir satiri oku
# file harf sayisini oku
# bas

#for i in $( ls -t ); do
#    $wordcount=($1 | wc -l)
#    echo "$i has $wordcount letter in it" 
#done

function count {


for i in $(ls); do

    function count {
        wc -l $i
    }

    echo $i

    nm=$( count $i)

    echo "Letter count for $i is $nm "

done
