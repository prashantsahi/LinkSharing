/*
1. Create a class in Java along with follwing fields. classname: Person fields: name, age, gender, address Access the fields in all known ways: like through getter , by dot operator
*/

class Person
{
String name 
int age
String add
char gen

}

Person p=new Person()
p.name="prashant"
p.age=10
println(p.name)
println(p.age)
println(p.getName());
println(p.getAge());
p.setName("sahi")
p.setAge(15);
println(p.name)
println(p.age)

