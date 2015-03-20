//8. Write a closure which checks if a value is contained within a list where the closure accepts two parameters

List l1=["prashant","sahi","meena","sashi",123]
def clos={List l,def find->
if(l.contains(find))
println "${find} is found in the list"

}

clos(l1,123)
