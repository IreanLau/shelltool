#!/bin/awk -f


BEGIN{
	FS=":";
	OFS="+"
	ORS="---"
}
/bash$/{
	#printf("%s: %d: %d\n",$NF,NF,NR);
	print $1,$2,$5;
}
