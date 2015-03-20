/*
2. Extend the Person class in Groovy Add following fields to it: empId, company, salary Access the fields in all known ways: like through getter , by dot operator, by @ operator.

4. GString... override the toString() of the Person class to return something like... "Sachin is a man aged 24 who lives at Delhi. He works for Intelligrape with employee id 12 and draws $$$$$$$ lots of money !!!!."

*/

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



def s="${p.@name} is a man aged ${p.age}, who lives  at Delhi. He works for Intelligrape with id 12 and draws  lots of money"

println(s)








