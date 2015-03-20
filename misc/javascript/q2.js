function calc()
{
  	var p =prompt("Enter the string for checking : ","100");	
	var i,j,f=0;
	for(i=p.length-1,j=0;i>=p.length/2;i--,j++)
	{
		if(p[i]!=p[j])
		{	f=1;
			break;
		}

	}
	if(f==0)
		document.getElementById("one").innerHTML=p + " is a palindrome";
	else
         	document.getElementById("one").innerHTML=p + " is not a palindrome";
}
