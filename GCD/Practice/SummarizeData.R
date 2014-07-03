#if (!file.exists("./data")){
#  dir.create("./data")
#}

#fileUrl <- "https://data.baltimorecity.gov/api/views/ijfz-2v3c/rows.csv?accessType=DOWNLOAD"

#download.file(fileUrl, destfile = "./data/salaries.csv",method="curl")
salData <- read.csv("./data/salaries.csv")


print("HEAD")
print(head(salData, n=3))

print("Summary")
print(summary(salData))

print("STR")
print(str(salData))

print("Quantiles")
#print(quantile(salData$GrossPay,na.rm=TRUE))
# Quantiles are not allowed on factors

print(table(salData$Agency,useNA="ifany"))


print(table(salData$Agency,salData$JobTitle))

#Check for NAs

print("##############################################")
print("Check for NAs")
print("##############################################")

isNA <- sum(is.na(salData$Agency))
print(isNA)

print ("OR...")

print (any(is.na(salData$Agency)))

print("##############################################")
print("Col sums")
print("##############################################")

print(colSums(is.na(salData)))

print(all(colSums(is.na(salData))==0))

print(table(salData$Agency,useNA="ifany"))
print(table(salData$Agency %in% c("War Memorial Commission","Wage Commissioner")))

print("Reduced Data...")
reducedData <- salData[salData$Agency %in% c("War Memorial Commission","Wage Commissioner"),]
print(reducedData)

