setwd("C:/Users/emily m/Documents/GitHub/TYP")
data<-read.csv("appointments.csv", stringsAsFactors=FALSE)

for (i in 1:length(data)){
  
  data[i,5]<-paste(data[i,5],data[i,12],data[i,13], data[i,14], sep=" ")
}

head(data[,13],200)
