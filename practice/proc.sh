#!/bin/bash


#\r  回车不换行

bar=''
index=0
pos=0
flag=("|" "/" "-" "\\")

while [ $index -le 100 ]
do
	let pos=index%4
	bar=${bar}#
	sleep 0.3
	printf "[%-100s][%d%%][%c]\r" "${bar}" "${index}" "${flag[pos]}"
	let index++
done
printf "\n"

