var t;
function start()
{
 t=setInterval('update()',1000);	
//alert("hiiii");
}


function stop()
{
clearInterval(t);
t=null;
}


function update()
{
  var time = new Date ( );

  var hour = time.getHours ( );
  var min = time.getMinutes ( );
  var sec = time.getSeconds ( );

  min = ( min < 10 ? "0" : "" ) + min;
  sec = ( sec < 10 ? "0" : "" ) + sec;
  hour = ( hour < 10 ? "0" : "" ) + hour;
  var ap = (hour > 12) ? "PM" : "AM";	
  hour = ( hour > 12 ) ? hour - 12 : hour;
  hour = ( hour == 0 ) ? 12 : hour;
  	
 
document.getElementById("hr").innerHTML=hour;
document.getElementById("min").innerHTML=min;
document.getElementById("sec").innerHTML=sec; 
document.getElementById("ap").innerHTML=ap; 

}



