//9. Combine content of all the files in a specific directory to another new file


File f1 = new File("file1.txt")
File f2 = new File("file2.txt")
f1.write("hiii this is first file")
f2.write("hi i m from second file")

File f3= new File("file3.txt")
f3.write(" ")
File dir = new File("/home/prashant/file_handling")
dir.eachFile{
f3 << it.text
}

f3.text
