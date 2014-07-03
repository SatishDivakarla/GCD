#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

#download.file(fileUrl, "output.csv",method="curl")
data<- read.table("output.csv",sep=",",header=TRUE)
#load("output.csv")

DT <- data.table(data,check.names=TRUE)
DT[,PROP:=VAL==24]
print(DT[,table(PROP)])