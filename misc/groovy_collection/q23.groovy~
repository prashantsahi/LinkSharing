class Employee
{
  String Name, DepartmentName
  int Age, EmployeeNumber, Salary
  String toString(){
    "Name: " + Name + ", DepartmentName: " + DepartmentName + ", Age: " + Age + ", EmployeeNumber: " + EmployeeNumber + ", Salary: "+Salary+"\n"
  }
}
List l = []
50.times{
  l = l + new Employee(Name:(10+it+"Emp"), DepartmentName:("Dept"+it%5), Age: 18+it%25, 
  EmployeeNumber:it,Salary:1000*(it/2 +1))
}
int n = 0
for (int i = 0;i<50 && n<50;i++){
  println "\nEmployees in Salary Range: ${i*5000+1}-${(i+1)*5000}:"
  List tmp = l.findAll{((i*5000+1)..(i+1)*5000).contains(it.salary)}
  n += tmp.size()
  println tmp
}

println "\n-----------------------------------------------------------------------------------"
println "\nNumber of Employees in departments: \n"
l.DepartmentName.unique().each{dept->
  println dept + ": " + l.findAll{it.DepartmentName == dept}.size()
}

println "\n-----------------------------------------------------------------------------------"
println "\nBetween age range: 18 to 25: "
println l.findAll{(18..35).contains(it.age)}

println "\n-----------------------------------------------------------------------------------"
println "\nGrouped By First character of name and age greater than 20"
println l.sort{it.name[0]}.findAll{it.age>20}


println "\n-----------------------------------------------------------------------------------\n"
println "Grouped by Department:"
println l.sort{it.DepartmentName}