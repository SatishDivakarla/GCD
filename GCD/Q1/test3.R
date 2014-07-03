#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"

#download.file(fileUrl, "ngpdata.xlsx",method="curl")

dat<- read.xlsx("ngpdata.xlsx",sheetIndex=1,,colIndex=7:15,rowIndex=18:23)
print(sum(dat$Zip*dat$Ext,na.rm=T))