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
##################################September 2012####################################
Sept12<-read.csv("Sept2012Apts..csv", stringsAsFactors=FALSE)

names12<-c("Agency", "CS.Career12", "CD.CareerCond12", "P.ES.SCA12", "P.ES.SCB12", "P.ES.SCD12", 
           "ES.Exec12", "ES.Other12", "SES.Career12", "SES.NonCareer12", "P.Unspec12", 
           "Total.Permanent12", "NP.CS12", "NP.ES.SCA12", "NP.ES.SCB12", "NP.ES.SCC12",
           "NP.ES.SCD12", "NP.ES.Exec12", "NP.ES.Other12", "NP.SES.LimTerm12", "NP.SES.LimEmerg12", 
           "Total.NonPermanent12", "Unspecified12", "Total.Appts12")
colnames(Sept12)<-names12
##################################September 2011####################
Sept11<-read.csv("Sept2011Apts.csv", stringsAsFactors=FALSE)

names11<-c("Agency", "CS.Career11", "CD.CareerCond11", "P.ES.SCA11", "P.ES.SCB11", "ES.Exec11", 
           "ES.Other11", "SES.Career11", "SES.NonCareer11", "P.Unspec11", "Total.Permanent11", 
           "NP.CS11", "NP.ES.SCA11", "NP.ES.SCB11", "NP.ES.SCC11", "NP.ES.Exec11", "NP.ES.Other11",
           "NP.SES.LimTerm11", "NP.SES.LimEmerg11", "Total.NonPermanent11", "Unspecified11", 
           "Total.Appts11")

colnames(Sept11)<-names11
##################################September 2010######################
Sept10<-read.csv("Sept2010Apts.csv", stringsAsFactors=FALSE)

names10<-c("Agency", "CS.Career10", "CD.CareerCond10", "P.ES.SCA10", "P.ES.SCB10", "ES.Exec10", 
           "ES.Other10", "SES.Career10", "SES.NonCareer10", "P.Unspec10", "Total.Permanent10", 
           "NP.CS10", "NP.ES.SCA10", "NP.ES.SCB10", "NP.ES.SCC10", "NP.ES.Exec10", "NP.ES.Other10",
           "NP.SES.LimTerm10", "NP.SES.LimEmerg10", "Total.NonPermanent10", "Unspecified10", 
           "Total.Appts10")

colnames(Sept10)<-names10
##################################September 2009########################################
Sept09<-read.csv("Sept2009Apts.csv", stringsAsFactors=FALSE)

names09<-c("Agency", "CS.Career09", "CD.CareerCond09", "P.ES.SCA09", "P.ES.SCB09", "ES.Exec09", 
           "ES.Other09", "SES.Career09", "SES.NonCareer09", "P.Unspec09", "Total.Permanent09", 
           "NP.CS09", "NP.ES.SCA09", "NP.ES.SCB09", "NP.ES.SCC09", "NP.ES.Exec09", "NP.ES.Other09",
           "NP.SES.LimTerm09", "NP.SES.LimEmerg09", "Total.NonPermanent09", "Unspecified09", 
           "Total.Appts09")

colnames(Sept09)<-names09
##################################September 2008########################################
Sept08<-read.csv("Sept2008Apts.csv", stringsAsFactors=FALSE)

names08<-c("Agency", "CS.Career08", "CD.CareerCond08", "P.ES.SCA08", "P.ES.SCB08", "ES.Exec08", 
           "ES.Other08", "SES.Career08", "SES.NonCareer08", "P.Unspec08", "Total.Permanent08", 
           "NP.CS08", "NP.ES.SCA08", "NP.ES.SCB08", "NP.ES.SCC08", "NP.ES.Exec08", "NP.ES.Other08",
           "NP.SES.LimTerm08", "NP.SES.LimEmerg08", "Total.NonPermanent08", "Unspecified08", 
           "Total.Appts08")

colnames(Sept08)<-names08
##################################September 2007########################################
Sept07<-read.csv("Sept2007Apts.csv", stringsAsFactors=FALSE)

names07<-c("Agency", "CS.Career07", "CD.CareerCond07", "P.ES.SCA07", "P.ES.SCB07", "ES.Exec07", 
           "ES.Other07", "SES.Career07", "SES.NonCareer07", "P.Unspec07", "Total.Permanent07", 
           "NP.CS07", "NP.ES.SCA07", "NP.ES.SCB07", "NP.ES.SCC07", "NP.ES.Exec07", "NP.ES.Other07",
           "NP.SES.LimTerm07", "NP.SES.LimEmerg07", "Total.NonPermanent07", "Unspecified07", 
           "Total.Appts07")

colnames(Sept07)<-names07
##################################September 2006########################################
Sept06<-read.csv("Sept2006Apts.csv", stringsAsFactors=FALSE)

names06<-c("Agency", "CS.Career06", "CD.CareerCond06", "P.ES.SCA06", "P.ES.SCB06", "ES.Exec06", 
           "ES.Other06", "SES.Career06", "SES.NonCareer06", "P.Unspec06", "Total.Permanent06", 
           "NP.CS06", "NP.ES.SCA06", "NP.ES.SCB06", "NP.ES.SCC06", "NP.ES.Exec06", "NP.ES.Other06",
           "NP.SES.LimTerm06", "NP.SES.LimEmerg06", "Total.NonPermanent06", "Unspecified06", 
           "Total.Appts06")

colnames(Sept06)<-names06
##################################September 2005########################################
Sept05<-read.csv("Sept2005Apts.csv", stringsAsFactors=FALSE)

names05<-c("Agency", "CS.Career05", "CD.CareerCond05", "P.ES.SCA05", "P.ES.SCB05", "ES.Exec05", 
           "ES.Other05", "SES.Career05", "SES.NonCareer05", "P.Unspec05", "Total.Permanent05", 
           "NP.CS05", "NP.ES.SCA05", "NP.ES.SCB05", "NP.ES.SCC05", "NP.ES.Exec05", "NP.ES.Other05",
           "NP.SES.LimTerm05", "NP.SES.LimEmerg05", "Total.NonPermanent05", "Unspecified05", 
           "Total.Appts05")

colnames(Sept05)<-names05
##################################September 2004########################################
Sept04<-read.csv("Sept2004Apts.csv", stringsAsFactors=FALSE)

names04<-c("Agency", "CS.Career04", "CD.CareerCond04", "P.ES.SCA04", "P.ES.SCB04", "ES.Exec04", 
           "ES.Other04", "SES.Career04", "SES.NonCareer04", "P.Unspec04", "Total.Permanent04", 
           "NP.CS04", "NP.ES.SCA04", "NP.ES.SCB04", "NP.ES.SCC04", "NP.ES.Exec04", "NP.ES.Other04",
           "NP.SES.LimTerm04", "NP.SES.LimEmerg04", "Total.NonPermanent04", "Unspecified04", 
           "Total.Appts04")

colnames(Sept04)<-names04
##################################September 2003########################################
Sept03<-read.csv("Sept2003Apts.csv", stringsAsFactors=FALSE)

names03<-c("Agency", "CS.Career03", "CD.CareerCond03", "P.ES.SCA03", "P.ES.SCB03", "ES.Exec03", 
           "ES.Other03", "SES.Career03", "SES.NonCareer03", "P.Unspec03", "Total.Permanent03", 
           "NP.CS03", "NP.ES.SCA03", "NP.ES.SCB03", "NP.ES.SCC03", "NP.ES.Exec03", "NP.ES.Other03",
           "NP.SES.LimTerm03", "NP.SES.LimEmerg03", "Total.NonPermanent03", "Unspecified03", 
           "Total.Appts03")

colnames(Sept03)<-names03
##################################September 2002########################################
Sept02<-read.csv("Sept2002Apts.csv", stringsAsFactors=FALSE)

names02<-c("Agency", "CS.Career02", "CD.CareerCond02", "P.ES.SCA02", "P.ES.SCB02", "ES.Exec02", 
           "ES.Other02", "SES.Career02", "SES.NonCareer02", "P.Unspec02", "Total.Permanent02", 
           "NP.CS02", "NP.ES.SCA02", "NP.ES.SCB02", "NP.ES.SCC02", "NP.ES.Exec02", "NP.ES.Other02",
           "NP.SES.LimTerm02", "NP.SES.LimEmerg02", "Total.NonPermanent02", "Unspecified02", 
           "Total.Appts02")

colnames(Sept02)<-names02

dupl<-  dupl<-grep("^[A-Z]{2}-", Sept02$Agency)

renames<-unlist(lapply(1:length(dupl), FUN=subber, Sept02$Agency, dupl))

Sept02$Agency[dupl]<-renames

##################################September 2001########################################
Sept01<-read.csv("Sept2001Apts.csv", stringsAsFactors=FALSE)

names01<-c("Agency", "CS.Career01", "CD.CareerCond01", "P.ES.SCA01", "P.ES.SCB01", "ES.Exec01", 
           "ES.Other01", "SES.Career01", "SES.NonCareer01", "P.Unspec01", "Total.Permanent01", 
           "NP.CS01", "NP.ES.SCA01", "NP.ES.SCB01", "NP.ES.SCC01", "NP.ES.Exec01", "NP.ES.Other01",
           "NP.SES.LimTerm01", "NP.SES.LimEmerg01", "Total.NonPermanent01", "Unspecified01", 
           "Total.Appts01")

colnames(Sept01)<-names01

dupl<-grep("^[A-Z]{2}-", Sept01$Agency)

renames<-unlist(lapply(1:length(dupl), FUN=subber, Sept01$Agency, dupl))

Sept01$Agency[dupl]<-renames
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

##################################September 1998########################################
Sept98<-read.csv("Sept1998Apts.csv", stringsAsFactors=FALSE)

names98<-c("Agency", "CS.Career98", "CD.CareerCond98", "P.ES.SCA98", "P.ES.SCB98", "ES.Exec98", 
           "ES.Other98", "SES.Career98", "SES.NonCareer98", "P.Unspec98", "Total.Permanent98", 
           "NP.CS98", "NP.ES.SCA98", "NP.ES.SCB98", "NP.ES.SCC98", "NP.ES.Exec98", "NP.ES.Other98",
           "NP.SES.LimTerm98", "NP.SES.LimEmerg98", "Total.NonPermanent98", "Unspecified98", 
           "Total.Appts98")

colnames(Sept98)<-names98

dupl<-  dupl<-grep("^[A-Z]{2}-", Sept98$Agency)

renames<-unlist(lapply(1:length(dupl), FUN=subber, Sept98$Agency, dupl))

Sept98$Agency[dupl]<-renames

######################Merging###############################
Apts<-merge(Sept13, Sept12, by="Agency", all.x=TRUE, all.y=TRUE)
Apts2<-merge(Sept11,Sept10, by="Agency", all.x=TRUE, all.y=TRUE)
Apts3<-merge(Sept09,Sept08, by="Agency", all.x=TRUE, all.y=TRUE)
Apts4<-merge(Sept07,Sept06, by="Agency", all.x=TRUE, all.y=TRUE)
Apts5<-merge(Sept05,Sept04, by="Agency", all.x=TRUE, all.y=TRUE)
Apts6<-merge(Sept03,Sept02, by="Agency", all.x=TRUE, all.y=TRUE)
Apts7<-merge(Sept01,Sept00, by="Agency", all.x=TRUE, all.y=TRUE)  
Apts8<-merge(Sept99,Sept98, by="Agency", all.x=TRUE, all.y=TRUE)

Apts9<-merge(Apts,Apts2, by="Agency", all.x=TRUE, all.y=TRUE)
Apts10<-merge(Apts3,Apts4, by="Agency", all.x=TRUE, all.y=TRUE)
Apts11<-merge(Apts5,Apts6, by="Agency", all.x=TRUE, all.y=TRUE)
Apts12<-merge(Apts7,Apts8, by="Agency", all.x=TRUE, all.y=TRUE)

Apts13<-merge(Apts9,Apts10, by="Agency", all.x=TRUE, all.y=TRUE)
Apts14<-merge(Apts11,Apts12, by="Agency", all.x=TRUE, all.y=TRUE)

Apts<-merge(Apts13,Apts14, by="Agency", all.x=TRUE, all.y=TRUE)

#write.csv(Apts, "Sept98thru13Apts.csv", append=TRUE)
###############################################
##Split Agency Heading

stringlist<-  strsplit(Apts$Agency, "-")
abbrlist<-character(nrow(Apts))

##Get first part
for(i in 1:nrow(Apts)){
  abbrlist[i]<-stringlist[[i]][1]
}

Apts$id<-abbrlist

Apts$Agency[duplicated(abbrlist)]

trialdat[1,vec]
trialdat[2,vec2]
trialdat[3,vec3]
vec<-unlist(!is.na(trialdat[1,]))
vec2<-unlist(!is.na(trialdat[2,]))
vec3<-unlist(!is.na(trialdat[3,]))

merger<-function(i, data){
  vec<-unlist(!is.na(trialdat[i,]))
  return(data[i,vec])
}
merger(1, trialdat)

therow<-unlist(lapply(1:nrow(trialdat),merger, trialdat))
therow[colnames(Apts)]


trialdat<-Apts[965:967,]
mat<-(!is.na(trialdat))

grep("^AF", Apts$Agency)




