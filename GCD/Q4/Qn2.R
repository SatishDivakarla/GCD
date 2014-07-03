#if (!file.exists("./data")){
#  dir.create("./data")
#}

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"

#download.file(fileUrl, destfile = "./data/gdp.csv",method="curl")

gdpData <- read.csv("./data/GDP.csv",header=TRUE)

dollarsCol <-  gdpData[,5]

dollarsCol <- gsub(',','',dollarsCol)
dollarsCol <- as.double(dollarsCol)

print(mean(dollarsCol,na.rm=TRUE))

countryNames <- as.character(gdpData[,4])

print(grep("^United",countryNames))
