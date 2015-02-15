function calc()
{	
	
	var x=document.getElementById("two").value;
	document.getElementById("two").value=	document.getElementById("three").value;
	document.getElementById("three").value=x;
}
