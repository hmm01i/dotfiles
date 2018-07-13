#!/bin/bash

i=1
n1=1
n2=1
c=0
while [[ $i -lt $(date +%d) ]];
do
	c=$(bc <<< "$n1 + $n2")
	n1=$n2
	n2=$c
	i=$(($i + 1))
done
echo "Fibonaci number of the day: $c"

