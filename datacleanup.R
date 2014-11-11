setwd("C:/Users/emily m/Documents/GitHub/TYP")
data<-read.csv("appointments.csv", stringsAsFactors=FALSE)

head(data)

#data$Apt_Type[data$Apt_Type=="........"]

data$Apt_Type[is.na(data$Apt_Type)]<-"Not Listed"

apt.table<-table(data$Department, data$Apt_Type)
apt.num<-(apply(apt.table,1,sum))

percentage.apt<-(sort(apt.table[,33]/apt.num))

un<-unique(data$Department)

myfun<-function(i){
  num<-data[data$Department==un[i],]
  perc<-sum(num[,7]=="SC")/nrow(num)
  return(perc)
}

library(plyr)

percs<-laply(1:158, myfun)

names.percs<-data.frame(name=un, percentage=percs)

names.percs<-names.percs[order(names.percs$percentage),]

data$dep.subdep<-paste(data$Department,data$Sub.Department, sep=":")

un.sub<-unique(data$dep.subdep)

myfun.sub<-function(i){
  num<-data[data$dep.subdep==un.sub[i],]
  perc<-sum(num[,7]=="SC")/nrow(num)
  return(perc)
}

percs.sub<-laply(1:length(un.sub), myfun.sub)

names.percs.sub<-data.frame(name=un.sub, percentage=percs.sub)

names.percs.sub<-names.percs.sub[order(names.percs.sub$percentage),]
  
nrow(names.percs.sub[names.percs.sub$percentage>=.5,])

nrow(names.percs[names.percs$percentage>=.5,])

tail(names.percs.sub[-c(grep("PUBLIC", names.percs.sub$name),grep("LEGISLATIVE", names.percs.sub$name),
                        grep("INTERGOVERNMENTAL", names.percs.sub$name),
                        grep("CONGRESSIONAL", names.percs.sub$name)),],30)
  
  
num<-data[data$Department==un[6],]
perc[6]<-sum(num[,7]=="SC")/nrow(num)

for (i in 1:nrow(data)){
  if (data[i,13]!="" & data[i,14]!=""){
  data[i,13]<-paste(data[i,13], data[i,14], sep=" ")
  }
}

for (i in 1:nrow(data)){
  if (data[i,12]!="" & data[i,13]!=""){
    data[i,12]<-paste(data[i,12], data[i,13], sep=" ")
  }
}
data[1:50, 12]
data[46,15]

paste(data[i,5],data[i,12],
  
      
note[1:10]

data[i,5]