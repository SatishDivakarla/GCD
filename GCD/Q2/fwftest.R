#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
#download.file(fileUrl, "wksst.for",method="curl")

#data <- read.fwf("wksst.for",widths=c(9,8,8,8),skip=4)

data <- read.fwf("wksst.for",widths=c(12, 7,4, 9,4, 9,4, 9,4),skip=4,sep="\t")
#print(head(data))

df <- data$V4

sum <- sum(df,na.rm=TRUE)

print(sum)