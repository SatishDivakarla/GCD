#if (!file.exists("./data")){
#  dir.create("./data")
#}

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"

#download.file(fileUrl, destfile = "./data/GDP.csv",method="curl")


#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

#download.file(fileUrl, destfile = "./data/countries.csv",method="curl")

gdpData <- read.csv("./data/GDP.csv")

countryData <- read.csv("./data/countries.csv")

mergedData <- merge(gdpData,countryData,by.x='X',by.y='CountryCode')

specialNotes <- mergedData$Special.Notes

regexpr("^Fiscal year end: June",specialNotes,perl=TRUE)