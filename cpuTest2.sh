#!/bin/bash

n=1
while [ $n -lt 6 ]
do
        echo "Test #: $n" 
        sysbench --test=cpu --cpu-max-prime=50000 run
        n=`expr $n + 1`
        sleep 60
done
