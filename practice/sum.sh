#!/bin/bash

function sum()
{
	local total=0
	local index=1
	while [ ${index} -le $1 ]
	do
		let total+=${index}
		let index++
	done
	echo "$total"
}


sum $1


