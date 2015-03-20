String s= "this string needs to b split"
println s.tokenize(" ")
println s.tokenize()

println s.split("")
println s.split(/\s/)

println s.tokenize(/\i/) 

String s1= "a.r.e.y.o.u.t.r.y.i.n.g.t.o.s.p.l.i.t.m.e.m.i.s.t.e.r"
println s1.tokenize(".")
println s1.split(".")