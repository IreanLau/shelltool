#!/bin/bash

#a=0
#b=1
#c=1
#
#index=2
#
#for((;index<=$1;index++))
#do
#	#a=$((${b}+${c}))
#
#	let a=${b}+${c}
#	b=${c}
#	c=${a}
#done
#echo $a


a[0]=1
a[1]=1

max=$1

index=2

while [ $index -le $max ]
do
	a[$index]=$((${a[$index-1]}+${a[$index-2]}))
	let index++
done

echo ${a[$index-1]}




