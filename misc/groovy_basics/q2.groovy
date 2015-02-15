class Person
{
String name
int age
String getName(){ return "return from getter"}
String add
char gen
//String toString()
}

class Emp extends Person 
{
    int empid
    String company
    Float sal
}

Emp e1 = new Emp(empid:123,company:"TTN",sal:50000)
println(e1.empid)
e1.name="prashant sahi"
//println e1.@name
Person p=new Person()
p.name="prashant"
p.age=10
println(p.@name)
println(p.age)
println(p.getName());
println(p.getAge());
p.setName("sahi")
p.setAge(15);
println(p.name)
println(p.age)











