#!/bin/bash


proc=$(basename $0)
function usage()
{
	echo "uage : ${proc} data1 data2 ..."
	exit 1
}

[ $# -lt 1 ] && usage

min=$1
max=$1
sum=0
for val in $@
do
	if [ $min -gt $val ];then
		min=$val
	fi

	if [ $max -lt $val ];then
		max=$val
	fi

	let sum+=$val
done
echo "max ${max}"
echo "min ${min}"
echo "total ${sum}"
echo "ibase=10; scale=2; ${sum}/$# " | bc
