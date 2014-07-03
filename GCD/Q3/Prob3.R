#if (!file.exists("./data")){
#  dir.create("./data")
#}

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"

#download.file(fileUrl, destfile = "./data/GDP.csv",method="curl")


#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

#download.file(fileUrl, destfile = "./data/countries.csv",method="curl")

# IMP NOTE: LOOK at the dataset and cleanup if required

gdpData <- read.csv("./data/GDP.csv")

countryData <- read.csv("./data/countries.csv")

matchedData  <- gdpData[gdpData$X %in% countryData$CountryCode,]

matchedDataSort <- matchedData[order(matchedData$Ranking,decreasing=TRUE),]

print(matchedDataSort[13,4])
#mergedData <- merge(gdpData,countryData,by.x='X',by.y='CountryCode')