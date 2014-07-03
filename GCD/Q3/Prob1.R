#if (!file.exists("./data")){
#  dir.create("./data")
#}

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

#download.file(fileUrl, destfile = "./data/housing.csv",method="curl")

#housingData <- read.csv("./data/housing.csv")

#print(head(housingData))

agricultureLogical <- ifelse((housingData$ACR==3 & housingData$AGS==6),TRUE,FALSE)
print(which(agricultureLogical))