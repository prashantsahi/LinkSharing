function calc()
{
  	var p =prompt("Enter radius of the circle","100");	
	var si= (22*p*p)/7;
	si="Area of the circle is :" + si;
	document.getElementById("one").innerHTML=si;
}
