#!/bin/awk -f

BEGIN{
	sum=0;
	i=0;
}
{
for(;i<=100;i++)
	sum+=i;
}
END{
	printf("%d\n",sum);
}
