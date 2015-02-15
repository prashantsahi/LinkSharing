function calc()
{	
	var flag=true;	
	var n=document.getElementById("one").value;
	var a=document.getElementById("two").value;
	if(n.length==0)
{	flag=false;
	document.getElementById("div1").innerHTML="this field cannot b left blank !!Please Enter name";
}	
if(!isNaN(n))
{
	flag=false;
	alert("Enter valid name");
}	
	 if(a.length==0)
{
	flag=false;
	alert("this field cannot b left blank !!Please Enter age");
}
	 if(isNaN(a))
{
	flag=false;
	alert("Enter the number ");
}
	 if(a<18)
{
	flag=false;
	alert("Invalid age !! Enter age >18");	
}
	else
	document.getElementById("div1").innerHTML="Form Successfully submitted !!";
return flag;
}

