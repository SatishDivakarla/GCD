# This is dependent on Prob4
gdpData <- read.csv("./data/GDP.csv")

countryData <- read.csv("./data/countries.csv")

mergedData <- merge(gdpData,countryData,by.x='X',by.y='CountryCode')

quantile <- quantile(mergedData$Ranking,prob =c(0.2,0.4,0.6,0.8,1))
highGDPData <- mergedData[mergedData$Ranking<quantile[1],]

crosstab <- xtabs(Ranking~Income.Group+X,data=highGDPData)