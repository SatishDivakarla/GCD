library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 

twentyTwelveData <- sampleTimes[grep("2012-",sampleTimes,perl=TRUE)]

weekDays <- weekdays(twentyTwelveData)