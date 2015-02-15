/*

5. Groovy Truth: if('test') { printlnn "test evaluated to true inside if" }
try replacing test with various objects and observe its behaviour.
a) "Test"
b)'null'
c) null
d) 100
e) 0
f) empty list
g) list with all vaues as null List list = new ArrayList()

*/

List l1=[]
List l2 = new ArrayList()
if('test')
{
    println "test evaluated to true"
}
else { println "test evauates to false"}

if("test")
{
    println "test evaluated to true"
}
else { println "test evauates to false"}


if('null')
{
    println "'null' evaluated to true"
}
else { println "'null' evauates to false"}


if(null)
{
    println "null evaluated to true"
}
else { println "null evauates to false"}


if(100)
{
    println "100 evaluated to true"
}
else { println "100 evauates to false"}


if(0)
{
    println "0 evaluated to true"
}
else { println "0 evauates to false"}

println "hello"
if(l1)
{
    println "List evaluated to true"
}
else { println "list evauates to false"}


if(l2)
{
    println "list evaluated to true"
}
else { println "list evauates to false"}



