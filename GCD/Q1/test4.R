fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
xData <- getURL(fileUrl)

doc <- xmlInternalTreeParse(xData,useInternal=TRUE)
rootNode <- xmlRoot(doc)
zips <- xpathSApply(rootNode,"//zipcode",xmlValue)
print(table(zips))
