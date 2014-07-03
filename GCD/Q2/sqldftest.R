#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
#download.file(fileUrl, "uscountysurvey.csv",method="curl")

acs<- read.table("uscountysurvey.csv",sep=",",header=TRUE)
data <- sqldf("select * from acs where AGEP < 50")

print(data)