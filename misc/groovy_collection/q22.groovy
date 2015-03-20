Map m =['computing':['computing':600,'Information System':300],'Engineering':['Civil':200,'Mechanical':100],'Management' : ['Management':800]]
println m

println "No of departments : " +m.count{it.key}
println "Programs delivered by computing department :"+m.get('computing').count{it.key}

println "no of students enrolled in civil department : "+m.get('Engineering').get('Civil')


