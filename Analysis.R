setwd("C:/Users/emily m/Documents/GitHub/TYP")
##Data

subber<-function(i, data, dupl=dupl){
  x<-data[dupl]
  y<-sub(x=x[i], pattern="^[A-Z]{2}-",replacement=paste(substr(x, 1,2)[i], "00", "-", sep=""))
  return(y)
}

##################################September 2013#####################
Sept13<-read.csv("Sept2013Apts.csv", stringsAsFactors=FALSE)
names13<-c("Agency", "CS.Career13", "CD.CareerCond13", "P.ES.SCA13", "P.ES.SCB13", "P.ES.SCD13", 
         "ES.Exec13", "ES.Other13", "SES.Career13", "SES.NonCareer13", "P.Unspec13", 
         "Total.Permanent13", "NP.CS13", "NP.ES.SCA13", "NP.ES.SCB13", "NP.ES.SCC13",
         "NP.ES.SCD13", "NP.ES.Exec13", "NP.ES.Other13", "NP.SES.LimTerm13", "NP.SES.LimEmerg13", 
         "Total.NonPermanent13", "Unspecified13", "Total.Appts13")

colnames(Sept13)<-names13

stringlist<-  strsplit(Sept13$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept13)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept13$id<-abbrlist

##################################September 2012####################################
Sept12<-read.csv("Sept2012Apts..csv", stringsAsFactors=FALSE)

names12<-c("Agency", "CS.Career12", "CD.CareerCond12", "P.ES.SCA12", "P.ES.SCB12", "P.ES.SCD12", 
           "ES.Exec12", "ES.Other12", "SES.Career12", "SES.NonCareer12", "P.Unspec12", 
           "Total.Permanent12", "NP.CS12", "NP.ES.SCA12", "NP.ES.SCB12", "NP.ES.SCC12",
           "NP.ES.SCD12", "NP.ES.Exec12", "NP.ES.Other12", "NP.SES.LimTerm12", "NP.SES.LimEmerg12", 
           "Total.NonPermanent12", "Unspecified12", "Total.Appts12")
colnames(Sept12)<-names12

stringlist<-  strsplit(Sept12$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept12)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept12$id<-abbrlist

##################################September 2011####################
Sept11<-read.csv("Sept2011Apts.csv", stringsAsFactors=FALSE)

names11<-c("Agency", "CS.Career11", "CD.CareerCond11", "P.ES.SCA11", "P.ES.SCB11", "ES.Exec11", 
           "ES.Other11", "SES.Career11", "SES.NonCareer11", "P.Unspec11", "Total.Permanent11", 
           "NP.CS11", "NP.ES.SCA11", "NP.ES.SCB11", "NP.ES.SCC11", "NP.ES.Exec11", "NP.ES.Other11",
           "NP.SES.LimTerm11", "NP.SES.LimEmerg11", "Total.NonPermanent11", "Unspecified11", 
           "Total.Appts11")

colnames(Sept11)<-names11

stringlist<-  strsplit(Sept11$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept11)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept11$id<-abbrlist
##################################September 2010######################
Sept10<-read.csv("Sept2010Apts.csv", stringsAsFactors=FALSE)

names10<-c("Agency", "CS.Career10", "CD.CareerCond10", "P.ES.SCA10", "P.ES.SCB10", "ES.Exec10", 
           "ES.Other10", "SES.Career10", "SES.NonCareer10", "P.Unspec10", "Total.Permanent10", 
           "NP.CS10", "NP.ES.SCA10", "NP.ES.SCB10", "NP.ES.SCC10", "NP.ES.Exec10", "NP.ES.Other10",
           "NP.SES.LimTerm10", "NP.SES.LimEmerg10", "Total.NonPermanent10", "Unspecified10", 
           "Total.Appts10")

colnames(Sept10)<-names10

stringlist<-  strsplit(Sept10$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept10)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept10$id<-abbrlist

##################################September 2009########################################
Sept09<-read.csv("Sept2009Apts.csv", stringsAsFactors=FALSE)

names09<-c("Agency", "CS.Career09", "CD.CareerCond09", "P.ES.SCA09", "P.ES.SCB09", "ES.Exec09", 
           "ES.Other09", "SES.Career09", "SES.NonCareer09", "P.Unspec09", "Total.Permanent09", 
           "NP.CS09", "NP.ES.SCA09", "NP.ES.SCB09", "NP.ES.SCC09", "NP.ES.Exec09", "NP.ES.Other09",
           "NP.SES.LimTerm09", "NP.SES.LimEmerg09", "Total.NonPermanent09", "Unspecified09", 
           "Total.Appts09")

colnames(Sept09)<-names09

stringlist<-  strsplit(Sept09$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept09)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept09$id<-abbrlist

##################################September 2008########################################
Sept08<-read.csv("Sept2008Apts.csv", stringsAsFactors=FALSE)

names08<-c("Agency", "CS.Career08", "CD.CareerCond08", "P.ES.SCA08", "P.ES.SCB08", "ES.Exec08", 
           "ES.Other08", "SES.Career08", "SES.NonCareer08", "P.Unspec08", "Total.Permanent08", 
           "NP.CS08", "NP.ES.SCA08", "NP.ES.SCB08", "NP.ES.SCC08", "NP.ES.Exec08", "NP.ES.Other08",
           "NP.SES.LimTerm08", "NP.SES.LimEmerg08", "Total.NonPermanent08", "Unspecified08", 
           "Total.Appts08")

colnames(Sept08)<-names08

stringlist<-  strsplit(Sept08$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept08)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept08$id<-abbrlist

##################################September 2007########################################
Sept07<-read.csv("Sept2007Apts.csv", stringsAsFactors=FALSE)

names07<-c("Agency", "CS.Career07", "CD.CareerCond07", "P.ES.SCA07", "P.ES.SCB07", "ES.Exec07", 
           "ES.Other07", "SES.Career07", "SES.NonCareer07", "P.Unspec07", "Total.Permanent07", 
           "NP.CS07", "NP.ES.SCA07", "NP.ES.SCB07", "NP.ES.SCC07", "NP.ES.Exec07", "NP.ES.Other07",
           "NP.SES.LimTerm07", "NP.SES.LimEmerg07", "Total.NonPermanent07", "Unspecified07", 
           "Total.Appts07")

colnames(Sept07)<-names07

stringlist<-  strsplit(Sept07$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept07)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept07$id<-abbrlist

##################################September 2006########################################
Sept06<-read.csv("Sept2006Apts.csv", stringsAsFactors=FALSE)

names06<-c("Agency", "CS.Career06", "CD.CareerCond06", "P.ES.SCA06", "P.ES.SCB06", "ES.Exec06", 
           "ES.Other06", "SES.Career06", "SES.NonCareer06", "P.Unspec06", "Total.Permanent06", 
           "NP.CS06", "NP.ES.SCA06", "NP.ES.SCB06", "NP.ES.SCC06", "NP.ES.Exec06", "NP.ES.Other06",
           "NP.SES.LimTerm06", "NP.SES.LimEmerg06", "Total.NonPermanent06", "Unspecified06", 
           "Total.Appts06")

colnames(Sept06)<-names06

stringlist<-  strsplit(Sept06$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept06)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept06$id<-abbrlist

##################################September 2005########################################
Sept05<-read.csv("Sept2005Apts.csv", stringsAsFactors=FALSE)

names05<-c("Agency", "CS.Career05", "CD.CareerCond05", "P.ES.SCA05", "P.ES.SCB05", "ES.Exec05", 
           "ES.Other05", "SES.Career05", "SES.NonCareer05", "P.Unspec05", "Total.Permanent05", 
           "NP.CS05", "NP.ES.SCA05", "NP.ES.SCB05", "NP.ES.SCC05", "NP.ES.Exec05", "NP.ES.Other05",
           "NP.SES.LimTerm05", "NP.SES.LimEmerg05", "Total.NonPermanent05", "Unspecified05", 
           "Total.Appts05")

colnames(Sept05)<-names05

stringlist<-  strsplit(Sept05$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept05)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept05$id<-abbrlist

##################################September 2004########################################
Sept04<-read.csv("Sept2004Apts.csv", stringsAsFactors=FALSE)

names04<-c("Agency", "CS.Career04", "CD.CareerCond04", "P.ES.SCA04", "P.ES.SCB04", "ES.Exec04", 
           "ES.Other04", "SES.Career04", "SES.NonCareer04", "P.Unspec04", "Total.Permanent04", 
           "NP.CS04", "NP.ES.SCA04", "NP.ES.SCB04", "NP.ES.SCC04", "NP.ES.Exec04", "NP.ES.Other04",
           "NP.SES.LimTerm04", "NP.SES.LimEmerg04", "Total.NonPermanent04", "Unspecified04", 
           "Total.Appts04")

colnames(Sept04)<-names04

stringlist<-  strsplit(Sept04$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept04)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept04$id<-abbrlist

##################################September 2003########################################
Sept03<-read.csv("Sept2003Apts2.csv", stringsAsFactors=FALSE)
Sept03<-Sept03[,-1]
names03<-c("Agency", "CS.Career03", "CD.CareerCond03", "P.ES.SCA03", "P.ES.SCB03", "ES.Exec03", 
           "ES.Other03", "SES.Career03", "SES.NonCareer03", "P.Unspec03", "Total.Permanent03", 
           "NP.CS03", "NP.ES.SCA03", "NP.ES.SCB03", "NP.ES.SCC03", "NP.ES.Exec03", "NP.ES.Other03",
           "NP.SES.LimTerm03", "NP.SES.LimEmerg03", "Total.NonPermanent03", "Unspecified03", 
           "Total.Appts03")

colnames(Sept03)<-names03

stringlist<-  strsplit(Sept03$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept03)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept03$id<-abbrlist

##################################September 2002########################################
Sept02<-read.csv("Sept2002Apts.csv", stringsAsFactors=FALSE)

names02<-c("Agency", "CS.Career02", "CD.CareerCond02", "P.ES.SCA02", "P.ES.SCB02", "ES.Exec02", 
           "ES.Other02", "SES.Career02", "SES.NonCareer02", "P.Unspec02", "Total.Permanent02", 
           "NP.CS02", "NP.ES.SCA02", "NP.ES.SCB02", "NP.ES.SCC02", "NP.ES.Exec02", "NP.ES.Other02",
           "NP.SES.LimTerm02", "NP.SES.LimEmerg02", "Total.NonPermanent02", "Unspecified02", 
           "Total.Appts02")

colnames(Sept02)<-names02

dupl<-grep("^[A-Z]{2}-", Sept02$Agency)

renames<-unlist(lapply(1:length(dupl), FUN=subber, Sept02$Agency, dupl))

Sept02$Agency[dupl]<-renames

stringlist<-  strsplit(Sept02$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept02)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept02$id<-abbrlist

##################################September 2001########################################
Sept01<-read.csv("Sept2001Apts.csv", stringsAsFactors=FALSE)

names01<-c("Agency", "CS.Career01", "CD.CareerCond01", "P.ES.SCA01", "P.ES.SCB01", "ES.Exec01", 
           "ES.Other01", "SES.Career01", "SES.NonCareer01", "P.Unspec01", "Total.Permanent01", 
           "NP.CS01", "NP.ES.SCA01", "NP.ES.SCB01", "NP.ES.SCC01", "NP.ES.Exec01", "NP.ES.Other01",
           "NP.SES.LimTerm01", "NP.SES.LimEmerg01", "Total.NonPermanent01", "Unspecified01", 
           "Total.Appts01")

colnames(Sept01)<-names01

dupl<-  dupl<-grep("^[A-Z]{2}-", Sept01$Agency)

renames<-unlist(lapply(1:length(dupl), FUN=subber, Sept01$Agency, dupl))

Sept01$Agency[dupl]<-renames

stringlist<-  strsplit(Sept01$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept01)){
  abbrlist[i]<-stringlist[[i]][1]
}
Sept01$id<-abbrlist

##################################September 2000########################################
Sept00<-read.csv("Sept2000Apts.csv", stringsAsFactors=FALSE)

names00<-c("Agency", "CS.Career00", "CD.CareerCond00", "P.ES.SCA00", "P.ES.SCB00", "ES.Exec00", 
           "ES.Other00", "SES.Career00", "SES.NonCareer00", "P.Unspec00", "Total.Permanent00", 
           "NP.CS00", "NP.ES.SCA00", "NP.ES.SCB00", "NP.ES.SCC00", "NP.ES.Exec00", "NP.ES.Other00",
           "NP.SES.LimTerm00", "NP.SES.LimEmerg00", "Total.NonPermanent00", "Unspecified00", 
           "Total.Appts00")

colnames(Sept00)<-names00

dupl<-  dupl<-grep("^[A-Z]{2}-", Sept00$Agency)

renames<-unlist(lapply(1:length(dupl), FUN=subber, Sept00$Agency, dupl))

Sept00$Agency[dupl]<-renames

stringlist<-  strsplit(Sept00$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept00)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept00$id<-abbrlist

##################################September 1999########################################
Sept99<-read.csv("Sept1999Apts.csv", stringsAsFactors=FALSE)

names99<-c("Agency", "CS.Career99", "CD.CareerCond99", "P.ES.SCA99", "P.ES.SCB99", "ES.Exec99", 
           "ES.Other99", "SES.Career99", "SES.NonCareer99", "P.Unspec99", "Total.Permanent99", 
           "NP.CS99", "NP.ES.SCA99", "NP.ES.SCB99", "NP.ES.SCC99", "NP.ES.Exec99", "NP.ES.Other99",
           "NP.SES.LimTerm99", "NP.SES.LimEmerg99", "Total.NonPermanent99", "Unspecified99", 
           "Total.Appts99")

colnames(Sept99)<-names99

dupl<-  dupl<-grep("^[A-Z]{2}-", Sept99$Agency)
renames<-unlist(lapply(1:length(dupl), FUN=subber, Sept99$Agency, dupl))
Sept99$Agency[dupl]<-renames

stringlist<-  strsplit(Sept99$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept99)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept99$id<-abbrlist

##################################September 1998########################################
Sept98<-read.csv("Sept1998Apts.csv", stringsAsFactors=FALSE)

names98<-c("Agency", "CS.Career98", "CD.CareerCond98", "P.ES.SCA98", "P.ES.SCB98", "ES.Exec98", 
           "ES.Other98", "SES.Career98", "SES.NonCareer98", "P.Unspec98", "Total.Permanent98", 
           "NP.CS98", "NP.ES.SCA98", "NP.ES.SCB98", "NP.ES.SCC98", "NP.ES.Exec98", "NP.ES.Other98",
           "NP.SES.LimTerm98", "NP.SES.LimEmerg98", "Total.NonPermanent98", "Unspecified98", 
           "Total.Appts98")

colnames(Sept98)<-names98

stringlist<-  strsplit(Sept98$Agency, "-")

##Get first part for ID
abbrlist<-character(length(stringlist))

for(i in 1:nrow(Sept98)){
  abbrlist[i]<-stringlist[[i]][1]
}

Sept98$id<-abbrlist

######################Merging###############################
Apts<-merge(Sept13, Sept12, by="id", all.x=TRUE, all.y=TRUE)
Apts2<-merge(Sept11,Sept10, by="id", all.x=TRUE, all.y=TRUE)
Apts3<-merge(Sept09,Sept08, by="id", all.x=TRUE, all.y=TRUE)
Apts4<-merge(Sept07,Sept06, by="id", all.x=TRUE, all.y=TRUE)
Apts5<-merge(Sept05,Sept04, by="id", all.x=TRUE, all.y=TRUE)
Apts6<-merge(Sept03,Sept02, by="id", all.x=TRUE, all.y=TRUE)
Apts7<-merge(Sept01,Sept00, by="id", all.x=TRUE, all.y=TRUE)  
Apts8<-merge(Sept99,Sept98, by="id", all.x=TRUE, all.y=TRUE)

Apts9<-merge(Apts,Apts2, by="id", all.x=TRUE, all.y=TRUE)
Apts10<-merge(Apts3,Apts4, by="id", all.x=TRUE, all.y=TRUE)
Apts11<-merge(Apts5,Apts6, by="id", all.x=TRUE, all.y=TRUE)
Apts12<-merge(Apts7,Apts8, by="id", all.x=TRUE, all.y=TRUE)

Apts13<-merge(Apts9,Apts10, by="id", all.x=TRUE, all.y=TRUE)
Apts14<-merge(Apts11,Apts12, by="id", all.x=TRUE, all.y=TRUE)

Apts<-merge(Apts13,Apts14, by="id", all.x=TRUE, all.y=TRUE)

#write.csv(Apts, "Sept98thru13Apts.csv", append=TRUE)
###############################################


##Checks out
sum(Apts$Total.Appts00, na.rm=TRUE)

##find all columns with Agency in title
#ind<-grep("Agency", colnames(Apts))
##Find which ones are not NA and use that for the row
#Agency<-character(nrow(Apts))
#for(i in 1:length(Agency)){
#  Agency[i]<-na.omit(unlist(Apts[i,ind]))[1]
#}
#Apts$Agency<-Agency
##Remove extra columns
#Apts<-Apts[,-ind]

##Get the total appointments for all agencies over time

TotalOverTime<-rev(apply(Apts[,grep("Total.Appts",colnames(Apts))], 2,FUN=sum, na.rm=TRUE))

##Get the total for all Schedule C over time
colsSC<-grep("NP.ES.SCC", colnames(Apts))

TotalSCOverTime<-rev(apply(Apts[,colsSC], 2,FUN=sum, na.rm=TRUE))

####################PLOT TOTAL APTS, SCS, and PERCENTAGE ####################
par(mfrow=c(1,1),mar=c(5, 4, 4, 2))
plot(y=TotalOverTime/1000,x=c(1998:2013),xlim=c(1998,2013), xlab="Year", 
     ylab="Appointments (In Thousands)", xaxp=c(1998,2013, 15),
     pch=20, type='o', ylim=c(1000,2500),
     col="black", lwd=2, 
     main="Total Appointments Over Time")
abline(v=2000.5, col="red")
abline(v=2008.5, col="blue")

plot(y=TotalSCOverTime/1000,x=c(1998:2013), xlim=c(1998,2013), xlab="Year", 
     ylab="Appointments (In Thousands)", xaxp=c(1998,2013, 15),
     pch=20, type='o', ylim=c(0,2),
     col="black", lwd=2, 
     main="Schedule C Appointments Over Time")
abline(v=2000.5, col="red")
abline(v=2008.5, col="blue")

plot(y=TotalSCOverTime/TotalOverTime, x=c(1998:2013), 
     xlim=c(1998,2013), xlab="Year", 
     ylab="Appointments (In Thousands)", xaxp=c(1998,2013, 15),
     pch=20, type='o', ylim=c(0,.001),
     col="black", lwd=2, ,
     main="Percentage of All Employees Who Are Schedule C")
abline(v=2000.5, col="red")
abline(v=2008.5, col="blue")


#write.csv(Apts, "Appointments1998thru2013.csv")

#####################SCs BY AGENCY PLOTS#############################
##Discover which agencies have had SC appointments at all in the time period

AnySCs<-apply(Apts[,colsSC]>0, 1, any, na.rm=TRUE)
SCindex<-which(AnySCs==TRUE)
totals<-grep("Total.Appts", colnames(Apts))

##Plot
par(mfrow=c(4,5), mar=c(2,2,3,2))
for(i in SCindex){
  plot(rev(unlist(Apts[i,colsSC])),x=1998:2013, pch=20, main=Apts$id[i],
       ylab="SC Appointments", xlab="Year", type="o", xaxp=c(1998, 2013, 15))
  abline(v=2000.5, col="red")
  abline(v=2008.5, col="blue")
}

Agency[SCindex]
ind<-grep("Agency", colnames(Apts))
##Find which ones are not NA and use that for the row
Agency<-character(nrow(Apts))
for(i in 1:length(Agency)){
  Agency[i]<-na.omit(unlist(Apts[i,ind]))[1]
}
#Apts$Agency<-Agency
##Remove extra columns
#Apts<-Apts[,-ind]

##How many proportions over 5 percent at some point
mat<-numeric(length(SCindex))
for(i in 1:length(SCindex)){
    mat[i]<-max(rev(unlist(Apts[SCindex[i],colsSC]))/rev(unlist(Apts[SCindex[i],totals])),
                na.rm=TRUE)
}

mat<-cbind(mat, SCindex)
mat<-as.data.frame(mat)

MoreThan.05<-(mat[mat$mat>.05,])

for(i in MoreThan.05[,2]){
  plot(y=rev(unlist(Apts[i,colsSC]))/rev(unlist(Apts[i,totals])),x=1998:2013, pch=20, main=Apts$id[i],
       ylab="SC Appointments", xlab="Year", type="o", xaxp=c(1998, 2013, 15),
       ylim=c(0,1))
  abline(v=2000.5, col="red")
  abline(v=2008.5, col="blue")
}

par(mfrow=c(1,1))
plot(rev(unlist(Apts[Apts$id=="HE10",colsSC])),x=1998:2013, ylim=c(0,60), pch=20, type="o")
abline(v=2000.5, col="red")
abline(v=2008.5, col="blue")

##By department
##Health and Human
par(mfrow=c(2,2))
HESCs<-apply(Apts[grep("HE", Apts$id),colsSC], 2, sum, na.rm=TRUE)

plot(rev(HESCs), x=1998:2013, pch=20, type="o", 
     main="All Health and Human Services", ylim=c(0,80))
abline(v=2000.5, col="red")
abline(v=2008.5, col="blue")

##Commerce
CMSCs<-apply(Apts[grep("^CM", Apts$id),colsSC], 2, sum, na.rm=TRUE)

plot(rev(CMSCs), x=1998:2013, pch=20, type="o", 
     main="All Commerce", ylim=c(0,125))
abline(v=2000.5, col="red")
abline(v=2008.5, col="blue")

EDSCs<-apply(Apts[grep("^ED", Apts$id),colsSC], 2, sum, na.rm=TRUE)

plot(rev(EDSCs), x=1998:2013, pch=20, type="o", 
     main="All Education", ylim=c(0,200))
abline(v=2000.5, col="red")
abline(v=2008.5, col="blue")


##Histograms
par(mfrow=c(4,4))

for(i in 16:1){
  hist(na.omit(unlist(Apts[,colsSC[i]])), breaks=seq(0,130, by=5), main="Number Apts")
}

for(i in 16:1){
  hist(na.omit(unlist(Apts[Apts[,colsSC[i]]>0, colsSC[i]])), 
       main="Number Apts For Agencies With At Least 1") 
}

