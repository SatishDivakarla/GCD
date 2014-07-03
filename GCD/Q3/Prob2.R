#if (!file.exists("./data")){
#  dir.create("./data")
#}

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"

#download.file(fileUrl, destfile = "./data/jeff.jpg",method="curl")

library("jpeg")
img <- readJPEG("./data/jeff.jpg", TRUE)

print(quantile(img,probs=c(0.3,0.8)))