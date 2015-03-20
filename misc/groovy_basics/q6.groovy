//6. Write a class HourMinute where the class stores hours and minutes as separate fields. Overload + and - operator operator for this class

class HourMin 
{
int hr,min


HourMin plus(HourMin hm)
{
//    HourMin x = new HourMin()

println "this started"
    this.min+=hm.min
    this.hr+=hm.hr
    if(this.min>60)
    {
     this.min=this.min-60
     this.hr+=1
     }
     
//     println "${this.hr}hrs:${this.min}mins"   
     return new HourMin(hr:this.hr,min:this.min)

}
}
HourMin ob = new HourMin(hr:10,min:40)

HourMin ob1 = new HourMin(hr:5,min:45)

HourMin p= (ob+ob1)

println p.hr + ":" +p.min

print("----------")




