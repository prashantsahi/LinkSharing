List l = [1,2,3,4,5,6,7,8,9,10,11,12,13,1]
//l.add(11)
List l2 =[]
println "list is : "+l
l.eachWithIndex{it,index->
int x = index
println it + " : " + x
if((x%2)!=0)
   {
   l2.add(it)
       println "  add"
   // println it +":"+x
    }
}
println l2
println (l-l2)
//print "List after removing odd elements ${l.size()}"


