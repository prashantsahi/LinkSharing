//7. Print multiple of 3 upto 10 terms in at least three different ways using groovy special methods


println "First method"
10.times{
int a=3*(it+1)
print("\t"+a)
}

def x = 1..10
//print(x.size())
println "\n Second method"
for( i in x)
{
int a=3*(i)
print("\t"+a)

}
println "\n Third method"
for(def i:x)
{
int a=3*(i)
print("\t"+a)

}
