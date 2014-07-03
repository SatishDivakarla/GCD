# This is dependent on Prob3
library("reshape2")
gdpData <- read.csv("./data/GDP.csv")

countryData <- read.csv("./data/countries.csv")

mergedData <- merge(gdpData,countryData,by.x='X',by.y='CountryCode')

#meltedDataFrame <- melt(mergedData,id=c("Ranking"),measure.vars=c("High income: OECD","High income: nonOECD"))

print(tapply(mergedData$Ranking,mergedData$Income.Group,mean,na.rm=TRUE))
#print(means)