#if (!file.exists("./data")){
#  dir.create("./data")
#}

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

#download.file(fileUrl, destfile = "./data/housing.csv",method="curl")

housingData <- read.csv("./data/housing.csv")
print(housingData[[123]])
splittedData = strsplit(names(housingData),"wgtp")
print(splittedData[[123]])

