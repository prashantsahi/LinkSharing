class Stack
{
    List l

    
    int POP(){    
    return l.pop()    
    }
    
    def PUSH(def d)
    {
        l.push(d)
    }
    
    def TOP(){
    return l.last()
    }
}
//List l1st =[1,2,3,4,5,8,2,8,6,9]
Stack s= new Stack()
s.l=[10,2,5,4,7,8,6,5]
println s.l
println s.POP()
s.PUSH("hello")
println s.l
println s.TOP()
