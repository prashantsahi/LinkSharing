List list=[1,2,3,4,5,6,7,8,9,10,1,2,3,4,5] 
/*
println list
List l=["hii","hii","hello","hii","hello"]
l.add("5")
l<<"bviu"
l.push(5)
l+="last element"
println l
println l[5]
println l.get(5)
println l.getAt(5)
println l.first()
println l.head()
println l.last()
println l.tail()
l.unique()         //  o/p of unique
println l

List l2 = []
l2.add(l)
println l2
l2.add(list)
println l2
l2.pop()
println l2
l2.pop()
println l2
list.remove(5)
*/


def ll= list.toSet()
println ll       
 println list.unique()


List l1= [1,2,3,2,4,4,5,6,7,8,9]
List l2= 1..6
println "first list is : "+l1

println "second list is : "+l2
List l3=l1-l2
println "List of items from first that are not in second : "+l3

