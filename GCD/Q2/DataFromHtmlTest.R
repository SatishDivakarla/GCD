con <- url("http://biostat.jhsph.edu/~jleek/contact.html")

htmlCode <- readLines(con)
close(con)

#print(htmlCode)

#print(nchar(htmlCode[10]))

print(nchar(c(htmlCode[10],htmlCode[20],htmlCode[30],htmlCode[100])))