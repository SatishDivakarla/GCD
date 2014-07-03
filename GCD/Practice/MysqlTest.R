# Connecting to mysql server and checking databases 
#ucscDB <- dbConnect(MySQL(), user="genome",host="genome-mysql.cse.ucsc.edu")
#result <- dbGetQuery(ucscDB,"show databases;"); dbDisconnect(ucscDB);

# Connecting to a database
hg19 <- dbConnect(MySQL(), user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")
allTables <- dbListTables(hg19)
print(length(allTables))

listFields <- dbListFields(hg19,"acemblyClass")

print(listFields)
results <- dbGetQuery(hg19, "select count(*) from acemblyClass")

print(results)

# Read from table
#rows <- dbReadTable(hg19,"acemblyClass")
#print(head(rows))

# Subsetting the results from table
query <- dbSendQuery(hg19,"select * from acemblyClass where name like '%A1BGAS%'")
results <- fetch(query);
print(results)

query <- dbSendQuery(hg19,"select * from acemblyClass where name like '%A1BGAS%'")
smallResults <- fetch(query,n=2);

#To clear the query from the remote server
dbClearResult(query);

print(smallResults)

dbDisconnect(hg19);
