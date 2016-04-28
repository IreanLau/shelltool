#!/bin/awk -f

BEGIN{
	good=0;
	ge=0;
	mid=0;
	bad=0;
}

{
	if( $3 > 30){
		good++;
	}
	else if( $3<=30 && $3 > 15 )
	{
		ge++;
	}
    else if($3<=15 && $3 >10 )
	{
	 	mid++;
	}
	else
	{
	 	bad++;
	}
}

END{
	printf("good: %d\n",good);
	printf("ge: %d\n",ge);
	printf("mid: %d\n",mid);
	printf("bad: %d\n",bad);
}
