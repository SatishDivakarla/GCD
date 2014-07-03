fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl, "mdsurvey.csv",method="curl")
#require(data.table)
DT <-fread("mdsurvey.csv")