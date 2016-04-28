#!/bin/bash


function sum()
{

	if [ $1 -eq 1 ];then
		r=1
	else
		sum $(($1-1))

		r=$(($r+$1))
	fi
}



sum $1
echo $r
