String url = "http://www.google.com?name=johny&age=20&hobby=cricket"
println url
Closure clos={String s->
    String k = s.tokenize('?')[1]
    def s1 = k.tokenize('&')
    s1.each{
        List l=it.tokenize('=')
        println "key:"+l[0]+"\tvalue : "+l[1]
    }
    
}

clos(url)
