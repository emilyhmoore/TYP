setwd("C:/Users/emily m/Documents/GitHub/TYP")
data<-read.csv("appointments.csv", stringsAsFactors=FALSE)

head(data)
colnames(data)

library(plyr)

for (i in 1:length(data)){
  data[i,5]<-paste(data[i,5],data[i,12], sep=" ")
}

head(data[,5])
