List l = [1,2,3,"elements",0.3,[2,4,6],0..10]
println l
//l.flatten()
for(i in l)
{
println i.class
}

print l.get(6).get(9)

/*OUTPUT

[1, 2, 3, elements, 0.3, [2, 4, 6], 0..10]
class java.lang.Integer
class java.lang.Integer
class java.lang.Integer
class java.lang.String
class java.math.BigDecimal
class java.util.ArrayList
class groovy.lang.IntRange
9

*/