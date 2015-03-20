//11. Write a method which removes all the white spaces in a file and writes the output to another file. Suppose white space characters are //Space, Tab and Enter


File f1= new File("white_spaces")
File f = new File("demo.txt")
f.write("hiii \n i m prashant \t sahi \n i \t m \t from  \n ttn digital \n")
f.text.getChars().each{
if(it!= " " && it !="\n"  && it!="\t")
    f1 << it 
}
println f1.text
