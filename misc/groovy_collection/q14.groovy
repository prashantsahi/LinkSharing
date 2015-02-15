Range r = 1..100
r.each{
    if((it%3)==0)
        println "fizz"
     if((it%5)==0)
        println "buzz"
       if((it%3)==0 && ((it%5)==0))
           println "fizzbuzz"
     else 
     println it
}