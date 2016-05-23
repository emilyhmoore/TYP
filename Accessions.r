setwd("~/TYP")

##Need to make these files into one thing.

idMaker<-function(data){
  stringlist<-  strsplit(data$Agency, "-")
  
  ##Get first part for ID
  abbrlist<-character(length(stringlist))
  
  for(i in 1:nrow(data)){
    abbrlist[i]<-stringlist[[i]][1]
  }
  data$id<-abbrlist
}

###########################Oct04#######################
AccOct04<-read.csv("AccessionsOct04.csv", stringsAsFactors=FALSE)
namesOct04<-c("Agency", "CS.Career.Transfer.Oct04", "CD.CareerCond.Transfer.Oct04", 
           "P.ES.SCA.Transfer.Oct04", "P.ES.SCB.Transfer.Oct04", "ES.Exec.Transfer.Oct04", 
           "ES.Other.Transfer.Oct04", "SES.Career.Transfer.Oct04", 
           "SES.NonCareer.Transfer.Oct04", "P.Unspec.Transfer.Oct04", 
           "Total.Permanent.Transfer.Oct04", "NP.CS.Transfer.Oct04", 
           "NP.ES.SCA.Transfer.Oct04", "NP.ES.SCB.Transfer.Oct04", 
           "NP.ES.SCC.Transfer.Oct04", "NP.ES.Exec.Transfer.Oct04", 
           "NP.ES.Other.Transfer.Oct04", "NP.SES.LimTerm.Transfer.Oct04", 
           "NP.SES.LimEmerg.Transfer.Oct04", "Total.NonPermanent.Transfer.Oct04", 
           "Unspecified.Transfer.Oct04", "Total.Appts.Transfer.Oct04",
           "CS.Career.Hire.Oct04", "CD.CareerCond.Hire.Oct04", 
           "P.ES.SCA.Hire.Oct04", "P.ES.SCB.Hire.Oct04","ES.Exec.Hire.Oct04", 
           "ES.Other.Hire.Oct04", "SES.Career.Hire.Oct04", 
           "SES.NonCareer.Hire.Oct04", "P.Unspec.Hire.Oct04", 
           "Total.Permanent.Hire.Oct04", "NP.CS.Hire.Oct04", "NP.ES.SCA.Hire.Oct04", 
           "NP.ES.SCB.Hire.Oct04", "NP.ES.SCC.Hire.Oct04", "NP.ES.Exec.Hire.Oct04", 
           "NP.ES.Other.Hire.Oct04", "NP.SES.LimTerm.Hire.Oct04", 
           "NP.SES.LimEmerg.Hire.Oct04", "Total.NonPermanent.Hire.Oct04", 
           "Unspecified.Hire.Oct04", "Total.Appts.Hire.Oct04", "Total.Accessions.Oct04")

colnames(AccOct04)<-namesOct04
AccOct04$id<-idMaker(AccOct04)
##Remove "All Agencies"
AccOct04<-AccOct04[-562,]
###########################Nov04#############################
AccNov04<-read.csv("AccessionsNov04.csv", stringsAsFactors=FALSE)
colnames(AccNov04)<-gsub("Oct04", "Nov04", namesOct04)
AccNov04$id<-idMaker(AccNov04)
##Remove "All Agencies"
AccNov04<-AccNov04[-562,]
###########################Dec04###############################
AccDec04<-read.csv("AccessionsDec04.csv", stringsAsFactors=FALSE)
colnames(AccDec04)<-gsub("Oct04", "Dec04", namesOct04)
AccDec04$id<-idMaker(AccDec04)
##Remove "All Agencies"
AccDec04<-AccDec04[-562,]
###########################Jan05################################
AccJan05<-read.csv("AccessionsJan05.csv", stringsAsFactors=FALSE)
colnames(AccJan05)<-gsub("Oct04", "Jan05", namesOct04)
AccJan05$id<-idMaker(AccJan05)
##Remove "All Agencies"
AccJan05<-AccJan05[-562,]
###########################Feb05################################
AccFeb05<-read.csv("AccessionsFeb05.csv", stringsAsFactors=FALSE)
colnames(AccFeb05)<-gsub("Oct04", "Feb05", namesOct04)
AccFeb05$id<-idMaker(AccFeb05)
##Remove "All Agencies"
AccFeb05<-AccFeb05[-562,]
###########################Mar05################################
AccMar05<-read.csv("AccessionsMar05.csv", stringsAsFactors=FALSE)
colnames(AccMar05)<-gsub("Oct04", "Mar05", namesOct04)
AccMar05$id<-idMaker(AccMar05)
##Remove "All Agencies"
AccMar05<-AccMar05[-562,]
###########################Apr05################################
AccApr05<-read.csv("AccessionsApr05.csv", stringsAsFactors=FALSE)
colnames(AccApr05)<-gsub("Oct04", "Apr05", namesOct04)
AccApr05$id<-idMaker(AccApr05)
##Remove "All Agencies"
AccApr05<-AccApr05[-562,]
###########################May05################################
AccMay05<-read.csv("AccessionsMay05.csv", stringsAsFactors=FALSE)
colnames(AccMay05)<-gsub("Oct04", "May05", namesOct04)
AccMay05$id<-idMaker(AccMay05)
##Remove "All Agencies"
AccMay05<-AccMay05[-562,]
###########################Jun05################################
AccJun05<-read.csv("AccessionsJun05.csv", stringsAsFactors=FALSE)
colnames(AccJun05)<-gsub("Oct04", "Jun05", namesOct04)
AccJun05$id<-idMaker(AccJun05)
##Remove "All Agencies"
AccJun05<-AccJun05[-562,]
###########################Jul05################################
AccJul05<-read.csv("AccessionsJul05.csv", stringsAsFactors=FALSE)
colnames(AccJul05)<-gsub("Oct04", "Jul05", namesOct04)
AccJul05$id<-idMaker(AccJul05)
##Remove "All Agencies"
AccJul05<-AccJul05[-562,]
###########################Aug05################################
AccAug05<-read.csv("AccessionsAug05.csv", stringsAsFactors=FALSE)
colnames(AccAug05)<-gsub("Oct04", "Aug05", namesOct04)
AccAug05$id<-idMaker(AccAug05)
##Remove "All Agencies"
AccAug05<-AccAug05[-562,]
##########################Sept05################################
AccSept05<-read.csv("AccessionsSept05.csv", stringsAsFactors=FALSE)
colnames(AccSept05)<-gsub("Oct04", "Sept05", namesOct04)
AccSept05$id<-idMaker(AccSept05)
##Remove "All Agencies"
AccSept05<-AccSept05[-562,]
###########################Oct05################################
AccOct05<-read.csv("AccessionsOct05.csv", stringsAsFactors=FALSE)
colnames(AccOct05)<-gsub("Oct04", "Oct05", namesOct04)
AccOct05$id<-idMaker(AccOct05)
##Remove "All Agencies"
AccOct05<-AccOct05[-562,]
###########################Nov05################################
AccNov05<-read.csv("AccessionsNov05.csv", stringsAsFactors=FALSE)
colnames(AccNov05)<-gsub("Oct04", "Nov05", namesOct04)
AccNov05$id<-idMaker(AccNov05)
##Remove "All Agencies"
AccNov05<-AccNov05[-562,]
###########################Dec05################################
AccDec05<-read.csv("AccessionsDec05.csv", stringsAsFactors=FALSE)
colnames(AccDec05)<-gsub("Oct04", "Dec05", namesOct04)
AccDec05$id<-idMaker(AccDec05)
##Remove "All Agencies"
AccDec05<-AccDec05[-562,]
###########################Jan06################################
AccJan06<-read.csv("AccessionsJan06.csv", stringsAsFactors=FALSE)
colnames(AccJan06)<-gsub("Oct04", "Jan06", namesOct04)
AccJan06$id<-idMaker(AccJan06)
##Remove "All Agencies"
AccJan06<-AccJan06[-562,]
###########################Feb06################################
AccFeb06<-read.csv("AccessionsFeb06.csv", stringsAsFactors=FALSE)
colnames(AccFeb06)<-gsub("Oct04", "Feb06", namesOct04)
AccFeb06$id<-idMaker(AccFeb06)
##Remove "All Agencies"
AccFeb06<-AccFeb06[-562,]
###########################Mar06################################
AccMar06<-read.csv("AccessionsMar06.csv", stringsAsFactors=FALSE)
colnames(AccMar06)<-gsub("Oct04", "Mar06", namesOct04)
AccMar06$id<-idMaker(AccMar06)
##Remove "All Agencies"
AccMar06<-AccMar06[-562,]
###########################Apr06################################
AccApr06<-read.csv("AccessionsApr06.csv", stringsAsFactors=FALSE)
colnames(AccApr06)<-gsub("Oct04", "Apr06", namesOct04)
AccApr06$id<-idMaker(AccApr06)
##Remove "All Agencies"
AccApr06<-AccApr06[-562,]
###########################May06################################
AccMay06<-read.csv("AccessionsMay06.csv", stringsAsFactors=FALSE)
colnames(AccMay06)<-gsub("Oct04", "May06", namesOct04)
AccMay06$id<-idMaker(AccMay06)
##Remove "All Agencies"
AccMay06<-AccMay06[-562,]
###########################Jun06################################
AccJun06<-read.csv("AccessionsJun06.csv", stringsAsFactors=FALSE)
colnames(AccJun06)<-gsub("Oct04", "Jun06", namesOct04)
AccJun06$id<-idMaker(AccJun06)
##Remove "All Agencies"
AccJun06<-AccJun06[-562,]
###########################Jul06################################
AccJul06<-read.csv("AccessionsJul06.csv", stringsAsFactors=FALSE)
colnames(AccJul06)<-gsub("Oct04", "Jul06", namesOct04)
AccJul06$id<-idMaker(AccJul06)
##Remove "All Agencies"
AccJul06<-AccJul06[-562,]
###########################Aug06################################
AccAug06<-read.csv("AccessionsAug06.csv", stringsAsFactors=FALSE)
colnames(AccAug06)<-gsub("Oct04", "Aug06", namesOct04)
AccAug06$id<-idMaker(AccAug06)
##Remove "All Agencies"
AccAug06<-AccAug06[-562,]
##########################Sept06################################
AccSept06<-read.csv("AccessionsSept06.csv", stringsAsFactors=FALSE)
colnames(AccSept06)<-gsub("Oct04", "Sept06", namesOct04)
AccSept06$id<-idMaker(AccSept06)
##Remove "All Agencies"
AccSept06<-AccSept06[-562,]
###########################Oct06################################
AccOct06<-read.csv("AccessionsOct06.csv", stringsAsFactors=FALSE)
colnames(AccOct06)<-gsub("Oct04", "Oct06", namesOct04)
AccOct06$id<-idMaker(AccOct06)
##Remove "All Agencies"
AccOct06<-AccOct06[-562,]
###########################Nov06################################
AccNov06<-read.csv("AccessionsNov06.csv", stringsAsFactors=FALSE)
colnames(AccNov06)<-gsub("Oct04", "Nov06", namesOct04)
AccNov06$id<-idMaker(AccNov06)
##Remove "All Agencies"
AccNov06<-AccNov06[-562,]
###########################Dec06################################
AccDec06<-read.csv("AccessionsDec06.csv", stringsAsFactors=FALSE)
colnames(AccDec06)<-gsub("Oct04", "Dec06", namesOct04)
AccDec06$id<-idMaker(AccDec06)
##Remove "All Agencies"
AccDec06<-AccDec06[-562,]

###########################Jan07################################
AccJan07<-read.csv("AccessionsJan07.csv", stringsAsFactors=FALSE)
colnames(AccJan07)<-gsub("Oct04", "Jan07", namesOct04)
AccJan07$id<-idMaker(AccJan07)
##Remove "All Agencies"
AccJan07<-AccJan07[-562,]
###########################Feb07################################
AccFeb07<-read.csv("AccessionsFeb07.csv", stringsAsFactors=FALSE)
colnames(AccFeb07)<-gsub("Oct04", "Feb07", namesOct04)
AccFeb07$id<-idMaker(AccFeb07)
##Remove "All Agencies"
AccFeb07<-AccFeb07[-562,]
###########################Mar07################################
AccMar07<-read.csv("AccessionsMar07.csv", stringsAsFactors=FALSE)
colnames(AccMar07)<-gsub("Oct04", "Mar07", namesOct04)
AccMar07$id<-idMaker(AccMar07)
##Remove "All Agencies"
AccMar07<-AccMar07[-562,]
###########################Apr07################################
AccApr07<-read.csv("AccessionsApr07.csv", stringsAsFactors=FALSE)
colnames(AccApr07)<-gsub("Oct04", "Apr07", namesOct04)
AccApr07$id<-idMaker(AccApr07)
##Remove "All Agencies"
AccApr07<-AccApr07[-562,]
###########################May07################################
AccMay07<-read.csv("AccessionsMay07.csv", stringsAsFactors=FALSE)
colnames(AccMay07)<-gsub("Oct04", "May07", namesOct04)
AccMay07$id<-idMaker(AccMay07)
##Remove "All Agencies"
AccMay07<-AccMay07[-562,]
###########################Jun07################################
AccJun07<-read.csv("AccessionsJun07.csv", stringsAsFactors=FALSE)
colnames(AccJun07)<-gsub("Oct04", "Jun07", namesOct04)
AccJun07$id<-idMaker(AccJun07)
##Remove "All Agencies"
AccJun07<-AccJun07[-562,]
###########################Jul07################################
AccJul07<-read.csv("AccessionsJul07.csv", stringsAsFactors=FALSE)
colnames(AccJul07)<-gsub("Oct04", "Jul07", namesOct04)
AccJul07$id<-idMaker(AccJul07)
##Remove "All Agencies"
AccJul07<-AccJul07[-562,]
###########################Aug07################################
AccAug07<-read.csv("AccessionsAug07.csv", stringsAsFactors=FALSE)
colnames(AccAug07)<-gsub("Oct04", "Aug07", namesOct04)
AccAug07$id<-idMaker(AccAug07)
##Remove "All Agencies"
AccAug07<-AccAug07[-562,]
##########################Sept07################################
AccSept07<-read.csv("AccessionsSept07.csv", stringsAsFactors=FALSE)
colnames(AccSept07)<-gsub("Oct04", "Sept07", namesOct04)
AccSept07$id<-idMaker(AccSept07)
##Remove "All Agencies"
AccSept07<-AccSept07[-562,]
###########################Oct07################################
AccOct07<-read.csv("AccessionsOct07.csv", stringsAsFactors=FALSE)
colnames(AccOct07)<-gsub("Oct04", "Oct07", namesOct04)
AccOct07$id<-idMaker(AccOct07)
##Remove "All Agencies"
AccOct07<-AccOct07[-562,]
###########################Nov07################################
AccNov07<-read.csv("AccessionsNov07.csv", stringsAsFactors=FALSE)
colnames(AccNov07)<-gsub("Oct04", "Nov07", namesOct04)
AccNov07$id<-idMaker(AccNov07)
##Remove "All Agencies"
AccNov07<-AccNov07[-562,]
###########################Dec07################################
AccDec07<-read.csv("AccessionsDec07.csv", stringsAsFactors=FALSE)
colnames(AccDec07)<-gsub("Oct04", "Dec07", namesOct04)
AccDec07$id<-idMaker(AccDec07)
##Remove "All Agencies"
AccDec07<-AccDec07[-562,]
###########################Jan08################################
AccJan08<-read.csv("AccessionsJan08.csv", stringsAsFactors=FALSE)
colnames(AccJan08)<-gsub("Oct04", "Jan08", namesOct04)
AccJan08$id<-idMaker(AccJan08)
##Remove "All Agencies"
AccJan08<-AccJan08[-562,]
###########################Feb08################################
AccFeb08<-read.csv("AccessionsFeb08.csv", stringsAsFactors=FALSE)
colnames(AccFeb08)<-gsub("Oct04", "Feb08", namesOct04)
AccFeb08$id<-idMaker(AccFeb08)
##Remove "All Agencies"
AccFeb08<-AccFeb08[-562,]
###########################Mar08################################
AccMar08<-read.csv("AccessionsMar08.csv", stringsAsFactors=FALSE)
colnames(AccMar08)<-gsub("Oct04", "Mar08", namesOct04)
AccMar08$id<-idMaker(AccMar08)
##Remove "All Agencies"
AccMar08<-AccMar08[-562,]
###########################Apr08################################
AccApr08<-read.csv("AccessionsApr08.csv", stringsAsFactors=FALSE)
colnames(AccApr08)<-gsub("Oct04", "Apr08", namesOct04)
AccApr08$id<-idMaker(AccApr08)
##Remove "All Agencies"
AccApr08<-AccApr08[-562,]
###########################May08################################
AccMay08<-read.csv("AccessionsMay08.csv", stringsAsFactors=FALSE)
colnames(AccMay08)<-gsub("Oct04", "May08", namesOct04)
AccMay08$id<-idMaker(AccMay08)
##Remove "All Agencies"
AccMay08<-AccMay08[-562,]
###########################Jun08################################
AccJun08<-read.csv("AccessionsJun08.csv", stringsAsFactors=FALSE)
colnames(AccJun08)<-gsub("Oct04", "Jun08", namesOct04)
AccJun08$id<-idMaker(AccJun08)
##Remove "All Agencies"
AccJun08<-AccJun08[-562,]
###########################Jul08################################
AccJul08<-read.csv("AccessionsJul08.csv", stringsAsFactors=FALSE)
colnames(AccJul08)<-gsub("Oct04", "Jul08", namesOct04)
AccJul08$id<-idMaker(AccJul08)
##Remove "All Agencies"
AccJul08<-AccJul08[-562,]
###########################Aug08################################
AccAug08<-read.csv("AccessionsAug08.csv", stringsAsFactors=FALSE)
colnames(AccAug08)<-gsub("Oct04", "Aug08", namesOct04)
AccAug08$id<-idMaker(AccAug08)
##Remove "All Agencies"
AccAug08<-AccAug08[-562,]
##########################Sept08################################
AccSept08<-read.csv("AccessionsSept08.csv", stringsAsFactors=FALSE)
colnames(AccSept08)<-gsub("Oct04", "Sept08", namesOct04)
AccSept08$id<-idMaker(AccSept08)
##Remove "All Agencies"
AccSept08<-AccSept08[-562,]
colnames(AccSept08)
###########################Oct08################################
AccOct08<-read.csv("AccessionsOct08.csv", stringsAsFactors=FALSE)
namesOct08<-c("Agency", "CS.Career.Transfer.Oct08", "CD.CareerCond.Transfer.Oct08", 
              "P.ES.SCA.Transfer.Oct08", "P.ES.SCB.Transfer.Oct08", 
              "P.ES.SCD.Transfer.Oct08", "ES.Exec.Transfer.Oct08", 
              "ES.Other.Transfer.Oct08", "SES.Career.Transfer.Oct08", 
              "SES.NonCareer.Transfer.Oct08", "P.Unspec.Transfer.Oct08", 
              "Total.Permanent.Transfer.Oct08", "NP.CS.Transfer.Oct08", 
              "NP.ES.SCA.Transfer.Oct08", "NP.ES.SCB.Transfer.Oct08", 
              "NP.ES.SCC.Transfer.Oct08", "NP.ES.SCD.Transfer.Oct08",
              "NP.ES.Exec.Transfer.Oct08", "NP.ES.Other.Transfer.Oct08", 
              "NP.SES.LimTerm.Transfer.Oct08", "NP.SES.LimEmerg.Transfer.Oct08", 
              "Total.NonPermanent.Transfer.Oct08", "Unspecified.Transfer.Oct08", 
              "Total.Appts.Transfer.Oct08","CS.Career.Hire.Oct08", 
              "CD.CareerCond.Hire.Oct08", "P.ES.SCA.Hire.Oct08", 
              "P.ES.SCB.Hire.Oct08","P.ES.SCD.Hire.Oct08", "ES.Exec.Hire.Oct08", 
              "ES.Other.Hire.Oct08", "SES.Career.Hire.Oct08", 
              "SES.NonCareer.Hire.Oct08", "P.Unspec.Hire.Oct08", 
              "Total.Permanent.Hire.Oct08", "NP.CS.Hire.Oct08", "NP.ES.SCA.Hire.Oct08", 
              "NP.ES.SCB.Hire.Oct08", "NP.ES.SCC.Hire.Oct08", 
              "NP.ES.SCD.Hire.Oct08", "NP.ES.Exec.Hire.Oct08", 
              "NP.ES.Other.Hire.Oct08", "NP.SES.LimTerm.Hire.Oct08", 
              "NP.SES.LimEmerg.Hire.Oct08", "Total.NonPermanent.Hire.Oct08", 
              "Unspecified.Hire.Oct08", "Total.Appts.Hire.Oct08", "Total.Accessions.Oct08")

colnames(AccOct08)<-namesOct08
AccOct08$id<-idMaker(AccOct08)
##Remove "All Agencies"
AccOct08<-AccOct08[-(nrow(AccOct08)),]

###########################Nov08################################
AccNov08<-read.csv("AccessionsNov08.csv", stringsAsFactors=FALSE)
colnames(AccNov08)<-gsub("Oct08", "Nov08", namesOct08)
AccNov08$id<-idMaker(AccNov08)
##Remove "All Agencies"
AccNov08<-AccNov08[-(nrow(AccNov08)),]
###########################Dec08################################
AccDec08<-read.csv("AccessionsDec08.csv", stringsAsFactors=FALSE)
colnames(AccDec08)<-gsub("Oct08", "Dec08", namesOct08)
AccDec08$id<-idMaker(AccDec08)
##Remove "All Agencies"
AccDec08<-AccDec08[-(nrow(AccDec08)),]
###########################Jan09################################
AccJan09<-read.csv("AccessionsJan09.csv", stringsAsFactors=FALSE)
colnames(AccJan09)<-gsub("Oct08", "Jan09", namesOct08)
AccJan09$id<-idMaker(AccJan09)
##Remove "All Agencies"
AccJan09<-AccJan09[-(nrow(AccJan09)),]
###########################Feb09################################
AccFeb09<-read.csv("AccessionsFeb09.csv", stringsAsFactors=FALSE)
colnames(AccFeb09)<-gsub("Oct08", "Feb09", namesOct08)
AccFeb09$id<-idMaker(AccFeb09)
##Remove "All Agencies"
AccFeb09<-AccFeb09[-(nrow(AccFeb09)),]
###########################Mar09################################
AccMar09<-read.csv("AccessionsMar09.csv", stringsAsFactors=FALSE)
colnames(AccMar09)<-gsub("Oct08", "Mar09", namesOct08)
AccMar09$id<-idMaker(AccMar09)
##Remove "All Agencies"
AccMar09<-AccMar09[-(nrow(AccMar09)),]
###########################Apr09################################
AccApr09<-read.csv("AccessionsApr09.csv", stringsAsFactors=FALSE)
colnames(AccApr09)<-gsub("Oct08", "Apr09", namesOct08)
AccApr09$id<-idMaker(AccApr09)
##Remove "All Agencies"
AccApr09<-AccApr09[-(nrow(AccApr09)),]
###########################May09################################
AccMay09<-read.csv("AccessionsMay09.csv", stringsAsFactors=FALSE)
colnames(AccMay09)<-gsub("Oct08", "May09", namesOct08)
AccMay09$id<-idMaker(AccMay09)
##Remove "All Agencies"
AccMay09<-AccMay09[-(nrow(AccMay09)),]
###########################Jun09################################
AccJun09<-read.csv("AccessionsJun09.csv", stringsAsFactors=FALSE)
colnames(AccJun09)<-gsub("Oct08", "Jun09", namesOct08)
AccJun09$id<-idMaker(AccJun09)
##Remove "All Agencies"
AccJun09<-AccJun09[-(nrow(AccJun09)),]
###########################Jul09################################
AccJul09<-read.csv("AccessionsJul09.csv", stringsAsFactors=FALSE)
colnames(AccJul09)<-gsub("Oct08", "Jul09", namesOct08)
AccJul09$id<-idMaker(AccJul09)
##Remove "All Agencies"
AccJul09<-AccJul09[-(nrow(AccJul09)),]
###########################Aug09################################
AccAug09<-read.csv("AccessionsAug09.csv", stringsAsFactors=FALSE)
colnames(AccAug09)<-gsub("Oct08", "Aug09", namesOct08)
AccAug09$id<-idMaker(AccAug09)
##Remove "All Agencies"
AccAug09<-AccAug09[-(nrow(AccAug09)),]
###########################Sept09################################
AccSept09<-read.csv("AccessionsSept09.csv", stringsAsFactors=FALSE)
colnames(AccSept09)<-gsub("Oct08", "Sept09", namesOct08)
AccSept09$id<-idMaker(AccSept09)
##Remove "All Agencies"
AccSept09<-AccSept09[-(nrow(AccSept09)),]
###########################Oct09################################
AccOct09<-read.csv("AccessionsOct09.csv", stringsAsFactors=FALSE)
colnames(AccOct09)<-gsub("Oct08", "Oct09", namesOct08)
AccOct09$id<-idMaker(AccOct09)
##Remove "All Agencies"
AccOct09<-AccOct09[-(nrow(AccOct09)),]
###########################Nov09################################
AccNov09<-read.csv("AccessionsNov09.csv", stringsAsFactors=FALSE)
colnames(AccNov09)<-gsub("Oct08", "Nov09", namesOct08)
AccNov09$id<-idMaker(AccNov09)
##Remove "All Agencies"
AccNov09<-AccNov09[-(nrow(AccNov09)),]
###########################Dec09################################
AccDec09<-read.csv("AccessionsDec09.csv", stringsAsFactors=FALSE)
colnames(AccDec09)<-gsub("Oct08", "Dec09", namesOct08)
AccDec09$id<-idMaker(AccDec09)
##Remove "All Agencies"
AccDec09<-AccDec09[-(nrow(AccDec09)),]

###########################Jan10################################
AccJan10<-read.csv("AccessionsJan10.csv", stringsAsFactors=FALSE)
colnames(AccJan10)<-gsub("Oct08", "Jan10", namesOct08)
AccJan10$id<-idMaker(AccJan10)
##Remove "All Agencies"
AccJan10<-AccJan10[-(nrow(AccJan10)),]
###########################Feb10################################
AccFeb10<-read.csv("AccessionsFeb10.csv", stringsAsFactors=FALSE)
colnames(AccFeb10)<-gsub("Oct08", "Feb10", namesOct08)
AccFeb10$id<-idMaker(AccFeb10)
##Remove "All Agencies"
AccFeb10<-AccFeb10[-(nrow(AccFeb10)),]
###########################Mar10################################
AccMar10<-read.csv("AccessionsMar10.csv", stringsAsFactors=FALSE)
colnames(AccMar10)<-gsub("Oct08", "Mar10", namesOct08)
AccMar10$id<-idMaker(AccMar10)
##Remove "All Agencies"
AccMar10<-AccMar10[-(nrow(AccMar10)),]
###########################Apr10################################
AccApr10<-read.csv("AccessionsApr10.csv", stringsAsFactors=FALSE)
colnames(AccApr10)<-gsub("Oct08", "Apr10", namesOct08)
AccApr10$id<-idMaker(AccApr10)
##Remove "All Agencies"
AccApr10<-AccApr10[-(nrow(AccApr10)),]
###########################May10################################
AccMay10<-read.csv("AccessionsMay10.csv", stringsAsFactors=FALSE)
colnames(AccMay10)<-gsub("Oct08", "May10", namesOct08)
AccMay10$id<-idMaker(AccMay10)
##Remove "All Agencies"
AccMay10<-AccMay10[-(nrow(AccMay10)),]
###########################Jun10################################
AccJun10<-read.csv("AccessionsJun10.csv", stringsAsFactors=FALSE)
colnames(AccJun10)<-gsub("Oct08", "Jun10", namesOct08)
AccJun10$id<-idMaker(AccJun10)
##Remove "All Agencies"
AccJun10<-AccJun10[-(nrow(AccJun10)),]
###########################Jul10################################
AccJul10<-read.csv("AccessionsJul10.csv", stringsAsFactors=FALSE)
colnames(AccJul10)<-gsub("Oct08", "Jul10", namesOct08)
AccJul10$id<-idMaker(AccJul10)
##Remove "All Agencies"
AccJul10<-AccJul10[-(nrow(AccJul10)),]
###########################Aug10################################
AccAug10<-read.csv("AccessionsAug10.csv", stringsAsFactors=FALSE)
colnames(AccAug10)<-gsub("Oct08", "Aug10", namesOct08)
AccAug10$id<-idMaker(AccAug10)
##Remove "All Agencies"
AccAug10<-AccAug10[-(nrow(AccAug10)),]
###########################Sept10################################
AccSept10<-read.csv("AccessionsSept10.csv", stringsAsFactors=FALSE)
colnames(AccSept10)<-gsub("Oct08", "Sept10", namesOct08)
AccSept10$id<-idMaker(AccSept10)
##Remove "All Agencies"
AccSept10<-AccSept10[-(nrow(AccSept10)),]
###########################Oct10################################
AccOct10<-read.csv("AccessionsOct10.csv", stringsAsFactors=FALSE)
colnames(AccOct10)<-gsub("Oct08", "Oct10", namesOct08)
AccOct10$id<-idMaker(AccOct10)
##Remove "All Agencies"
AccOct10<-AccOct10[-(nrow(AccOct10)),]
###########################Nov10################################
AccNov10<-read.csv("AccessionsNov10.csv", stringsAsFactors=FALSE)
colnames(AccNov10)<-gsub("Oct08", "Nov10", namesOct08)
AccNov10$id<-idMaker(AccNov10)
##Remove "All Agencies"
AccNov10<-AccNov10[-(nrow(AccNov10)),]
###########################Dec10################################
AccDec10<-read.csv("AccessionsDec10.csv", stringsAsFactors=FALSE)
colnames(AccDec10)<-gsub("Oct08", "Dec10", namesOct08)
AccDec10$id<-idMaker(AccDec10)
##Remove "All Agencies"
AccDec10<-AccDec10[-(nrow(AccDec10)),]

###########################Jan11################################
AccJan11<-read.csv("AccessionsJan11.csv", stringsAsFactors=FALSE)
colnames(AccJan11)<-gsub("Oct08", "Jan11", namesOct08)
AccJan11$id<-idMaker(AccJan11)
##Remove "All Agencies"
AccJan11<-AccJan11[-(nrow(AccJan11)),]
###########################Feb11################################
AccFeb11<-read.csv("AccessionsFeb11.csv", stringsAsFactors=FALSE)
colnames(AccFeb11)<-gsub("Oct08", "Feb11", namesOct08)
AccFeb11$id<-idMaker(AccFeb11)
##Remove "All Agencies"
AccFeb11<-AccFeb11[-(nrow(AccFeb11)),]
###########################Mar11################################
AccMar11<-read.csv("AccessionsMar11.csv", stringsAsFactors=FALSE)
colnames(AccMar11)<-gsub("Oct08", "Mar11", namesOct08)
AccMar11$id<-idMaker(AccMar11)
##Remove "All Agencies"
AccMar11<-AccMar11[-(nrow(AccMar11)),]
###########################Apr11################################
AccApr11<-read.csv("AccessionsApr11.csv", stringsAsFactors=FALSE)
colnames(AccApr11)<-gsub("Oct08", "Apr11", namesOct08)
AccApr11$id<-idMaker(AccApr11)
##Remove "All Agencies"
AccApr11<-AccApr11[-(nrow(AccApr11)),]
###########################May11################################
AccMay11<-read.csv("AccessionsMay11.csv", stringsAsFactors=FALSE)
colnames(AccMay11)<-gsub("Oct08", "May11", namesOct08)
AccMay11$id<-idMaker(AccMay11)
##Remove "All Agencies"
AccMay11<-AccMay11[-(nrow(AccMay11)),]
###########################Jun11################################
AccJun11<-read.csv("AccessionsJun11.csv", stringsAsFactors=FALSE)
colnames(AccJun11)<-gsub("Oct08", "Jun11", namesOct08)
AccJun11$id<-idMaker(AccJun11)
##Remove "All Agencies"
AccJun11<-AccJun11[-(nrow(AccJun11)),]
###########################Jul11################################
AccJul11<-read.csv("AccessionsJul11.csv", stringsAsFactors=FALSE)
colnames(AccJul11)<-gsub("Oct08", "Jul11", namesOct08)
AccJul11$id<-idMaker(AccJul11)
##Remove "All Agencies"
AccJul11<-AccJul11[-(nrow(AccJul11)),]
###########################Aug11################################
AccAug11<-read.csv("AccessionsAug11.csv", stringsAsFactors=FALSE)
colnames(AccAug11)<-gsub("Oct08", "Aug11", namesOct08)
AccAug11$id<-idMaker(AccAug11)
##Remove "All Agencies"
AccAug11<-AccAug11[-(nrow(AccAug11)),]
###########################Sept11################################
AccSept11<-read.csv("AccessionsSept11.csv", stringsAsFactors=FALSE)
colnames(AccSept11)<-gsub("Oct08", "Sept11", namesOct08)
AccSept11$id<-idMaker(AccSept11)
##Remove "All Agencies"
AccSept11<-AccSept11[-(nrow(AccSept11)),]
###########################Oct11################################
AccOct11<-read.csv("AccessionsOct11.csv", stringsAsFactors=FALSE)
colnames(AccOct11)<-gsub("Oct08", "Oct11", namesOct08)
AccOct11$id<-idMaker(AccOct11)
##Remove "All Agencies"
AccOct11<-AccOct11[-(nrow(AccOct11)),]
###########################Nov11################################
AccNov11<-read.csv("AccessionsNov11.csv", stringsAsFactors=FALSE)
colnames(AccNov11)<-gsub("Oct08", "Nov11", namesOct08)
AccNov11$id<-idMaker(AccNov11)
##Remove "All Agencies"
AccNov11<-AccNov11[-(nrow(AccNov11)),]
###########################Dec11################################
AccDec11<-read.csv("AccessionsDec11.csv", stringsAsFactors=FALSE)
colnames(AccDec11)<-gsub("Oct08", "Dec11", namesOct08)
AccDec11$id<-idMaker(AccDec11)
##Remove "All Agencies"
AccDec11<-AccDec11[-(nrow(AccDec11)),]


###########################Jan12################################
AccJan12<-read.csv("AccessionsJan12.csv", stringsAsFactors=FALSE)
colnames(AccJan12)<-gsub("Oct08", "Jan12", namesOct08)
AccJan12$id<-idMaker(AccJan12)
##Remove "All Agencies"
AccJan12<-AccJan12[-(nrow(AccJan12)),]
###########################Feb12################################
AccFeb12<-read.csv("AccessionsFeb12.csv", stringsAsFactors=FALSE)
colnames(AccFeb12)<-gsub("Oct08", "Feb12", namesOct08)
AccFeb12$id<-idMaker(AccFeb12)
##Remove "All Agencies"
AccFeb12<-AccFeb12[-(nrow(AccFeb12)),]
###########################Mar12################################
AccMar12<-read.csv("AccessionsMar12.csv", stringsAsFactors=FALSE)
colnames(AccMar12)<-gsub("Oct08", "Mar12", namesOct08)
AccMar12$id<-idMaker(AccMar12)
##Remove "All Agencies"
AccMar12<-AccMar12[-(nrow(AccMar12)),]
###########################Apr12################################
AccApr12<-read.csv("AccessionsApr12.csv", stringsAsFactors=FALSE)
colnames(AccApr12)<-gsub("Oct08", "Apr12", namesOct08)
AccApr12$id<-idMaker(AccApr12)
##Remove "All Agencies"
AccApr12<-AccApr12[-(nrow(AccApr12)),]
###########################May12################################
AccMay12<-read.csv("AccessionsMay12.csv", stringsAsFactors=FALSE)
colnames(AccMay12)<-gsub("Oct08", "May12", namesOct08)
AccMay12$id<-idMaker(AccMay12)
##Remove "All Agencies"
AccMay12<-AccMay12[-(nrow(AccMay12)),]
###########################Jun12################################
AccJun12<-read.csv("AccessionsJun12.csv", stringsAsFactors=FALSE)
colnames(AccJun12)<-gsub("Oct08", "Jun12", namesOct08)
AccJun12$id<-idMaker(AccJun12)
##Remove "All Agencies"
AccJun12<-AccJun12[-(nrow(AccJun12)),]
###########################Jul12################################
AccJul12<-read.csv("AccessionsJul12.csv", stringsAsFactors=FALSE)
colnames(AccJul12)<-gsub("Oct08", "Jul12", namesOct08)
AccJul12$id<-idMaker(AccJul12)
##Remove "All Agencies"
AccJul12<-AccJul12[-(nrow(AccJul12)),]
###########################Aug12################################
AccAug12<-read.csv("AccessionsAug12.csv", stringsAsFactors=FALSE)
colnames(AccAug12)<-gsub("Oct08", "Aug12", namesOct08)
AccAug12$id<-idMaker(AccAug12)
##Remove "All Agencies"
AccAug12<-AccAug12[-(nrow(AccAug12)),]
###########################Sept12################################
AccSept12<-read.csv("AccessionsSept12.csv", stringsAsFactors=FALSE)
colnames(AccSept12)<-gsub("Oct08", "Sept12", namesOct08)
AccSept12$id<-idMaker(AccSept12)
##Remove "All Agencies"
AccSept12<-AccSept12[-(nrow(AccSept12)),]
###########################Oct12################################
AccOct12<-read.csv("AccessionsOct12.csv", stringsAsFactors=FALSE)
colnames(AccOct12)<-gsub("Oct08", "Oct12", namesOct08)
AccOct12$id<-idMaker(AccOct12)
##Remove "All Agencies"
AccOct12<-AccOct12[-(nrow(AccOct12)),]
###########################Nov12################################
AccNov12<-read.csv("AccessionsNov12.csv", stringsAsFactors=FALSE)
colnames(AccNov12)<-gsub("Oct08", "Nov12", namesOct08)
AccNov12$id<-idMaker(AccNov12)
##Remove "All Agencies"
AccNov12<-AccNov12[-(nrow(AccNov12)),]
###########################Dec12################################
AccDec12<-read.csv("AccessionsDec12.csv", stringsAsFactors=FALSE)
colnames(AccDec12)<-gsub("Oct08", "Dec12", namesOct08)
AccDec12$id<-idMaker(AccDec12)
##Remove "All Agencies"
AccDec12<-AccDec12[-(nrow(AccDec12)),]
###########################Jan13################################
AccJan13<-read.csv("AccessionsJan13.csv", stringsAsFactors=FALSE)
colnames(AccJan13)<-gsub("Oct08", "Jan13", namesOct08)
AccJan13$id<-idMaker(AccJan13)
##Remove "All Agencies"
AccJan13<-AccJan13[-(nrow(AccJan13)),]
###########################Feb13################################
AccFeb13<-read.csv("AccessionsFeb13.csv", stringsAsFactors=FALSE)
colnames(AccFeb13)<-gsub("Oct08", "Feb13", namesOct08)
AccFeb13$id<-idMaker(AccFeb13)
##Remove "All Agencies"
AccFeb13<-AccFeb13[-(nrow(AccFeb13)),]
###########################Mar13################################
AccMar13<-read.csv("AccessionsMar13.csv", stringsAsFactors=FALSE)
colnames(AccMar13)<-gsub("Oct08", "Mar13", namesOct08)
AccMar13$id<-idMaker(AccMar13)
##Remove "All Agencies"
AccMar13<-AccMar13[-(nrow(AccMar13)),]
###########################Apr13################################
AccApr13<-read.csv("AccessionsApr13.csv", stringsAsFactors=FALSE)
colnames(AccApr13)<-gsub("Oct08", "Apr13", namesOct08)
AccApr13$id<-idMaker(AccApr13)
##Remove "All Agencies"
AccApr13<-AccApr13[-(nrow(AccApr13)),]
###########################May13################################
AccMay13<-read.csv("AccessionsMay13.csv", stringsAsFactors=FALSE)
colnames(AccMay13)<-gsub("Oct08", "May13", namesOct08)
AccMay13$id<-idMaker(AccMay13)
##Remove "All Agencies"
AccMay13<-AccMay13[-(nrow(AccMay13)),]
###########################Jun13################################
AccJun13<-read.csv("AccessionsJun13.csv", stringsAsFactors=FALSE)
colnames(AccJun13)<-gsub("Oct08", "Jun13", namesOct08)
AccJun13$id<-idMaker(AccJun13)
##Remove "All Agencies"
AccJun13<-AccJun13[-(nrow(AccJun13)),]
###########################Jul13################################
AccJul13<-read.csv("AccessionsJul13.csv", stringsAsFactors=FALSE)
colnames(AccJul13)<-gsub("Oct08", "Jul13", namesOct08)
AccJul13$id<-idMaker(AccJul13)
##Remove "All Agencies"
AccJul13<-AccJul13[-(nrow(AccJul13)),]
###########################Aug13################################
AccAug13<-read.csv("AccessionsAug13.csv", stringsAsFactors=FALSE)
colnames(AccAug13)<-gsub("Oct08", "Aug13", namesOct08)
AccAug13$id<-idMaker(AccAug13)
##Remove "All Agencies"
AccAug13<-AccAug13[-(nrow(AccAug13)),]
###########################Sept13################################
AccSept13<-read.csv("AccessionsSept13.csv", stringsAsFactors=FALSE)
colnames(AccSept13)<-gsub("Oct08", "Sept13", namesOct08)
AccSept13$id<-idMaker(AccSept13)
##Remove "All Agencies"
AccSept13<-AccSept13[-(nrow(AccSept13)),]
###########################Oct13################################
AccOct13<-read.csv("AccessionsOct13.csv", stringsAsFactors=FALSE)
colnames(AccOct13)<-gsub("Oct08", "Oct13", namesOct08)
AccOct13$id<-idMaker(AccOct13)
##Remove "All Agencies"
AccOct13<-AccOct13[-(nrow(AccOct13)),]
###########################Nov13################################
AccNov13<-read.csv("AccessionsNov13.csv", stringsAsFactors=FALSE)
colnames(AccNov13)<-gsub("Oct08", "Nov13", namesOct08)
AccNov13$id<-idMaker(AccNov13)
##Remove "All Agencies"
AccNov13<-AccNov13[-(nrow(AccNov13)),]
###########################Dec13################################
AccDec13<-read.csv("AccessionsDec13.csv", stringsAsFactors=FALSE)
colnames(AccDec13)<-gsub("Oct08", "Dec13", namesOct08)
AccDec13$id<-idMaker(AccDec13)
##Remove "All Agencies"
AccDec13<-AccDec13[-(nrow(AccDec13)),]

###########################Jan14################################
AccJan14<-read.csv("AccessionsJan14.csv", stringsAsFactors=FALSE)
colnames(AccJan14)<-gsub("Oct08", "Jan14", namesOct08)
AccJan14$id<-idMaker(AccJan14)
##Remove "All Agencies"
AccJan14<-AccJan14[-(nrow(AccJan14)),]
###########################Feb14################################
AccFeb14<-read.csv("AccessionsFeb14.csv", stringsAsFactors=FALSE)
colnames(AccFeb14)<-gsub("Oct08", "Feb14", namesOct08)
AccFeb14$id<-idMaker(AccFeb14)
##Remove "All Agencies"
AccFeb14<-AccFeb14[-(nrow(AccFeb14)),]
###########################Mar14################################
AccMar14<-read.csv("AccessionsMar14.csv", stringsAsFactors=FALSE)
colnames(AccMar14)<-gsub("Oct08", "Mar14", namesOct08)
AccMar14$id<-idMaker(AccMar14)
##Remove "All Agencies"
AccMar14<-AccMar14[-(nrow(AccMar14)),]

#####################Merging###################
Acc1<-merge(AccOct04, AccNov04, by="id", all.x=TRUE, all.y=TRUE)
Acc2<-merge(AccDec04, AccJan05, by="id", all.x=TRUE, all.y=TRUE)
Acc3<-merge(AccFeb05, AccMar05, by="id", all.x=TRUE, all.y=TRUE)
Acc4<-merge(AccApr05, AccMay05, by="id", all.x=TRUE, all.y=TRUE)
Acc5<-merge(AccJun05, AccJul05, by="id", all.x=TRUE, all.y=TRUE)
Acc6<-merge(AccAug05, AccSept05, by="id", all.x=TRUE, all.y=TRUE)
Acc7<-merge(AccOct05, AccNov05, by="id", all.x=TRUE, all.y=TRUE)
Acc8<-merge(AccDec05, AccJan06, by="id", all.x=TRUE, all.y=TRUE)
Acc9<-merge(AccFeb06, AccMar06, by="id", all.x=TRUE, all.y=TRUE)
Acc10<-merge(AccApr06, AccMay06, by="id", all.x=TRUE, all.y=TRUE)
Acc11<-merge(AccJun06, AccJul06, by="id", all.x=TRUE, all.y=TRUE)
Acc12<-merge(AccAug06, AccSept06, by="id", all.x=TRUE, all.y=TRUE)
Acc13<-merge(AccOct06, AccNov06, by="id", all.x=TRUE, all.y=TRUE)
Acc14<-merge(AccDec06, AccJan07, by="id", all.x=TRUE, all.y=TRUE)
Acc15<-merge(AccFeb07, AccMar07, by="id", all.x=TRUE, all.y=TRUE)
Acc16<-merge(AccApr07, AccMay07, by="id", all.x=TRUE, all.y=TRUE)
Acc17<-merge(AccJun07, AccJul07, by="id", all.x=TRUE, all.y=TRUE)
Acc18<-merge(AccAug07, AccSept07, by="id", all.x=TRUE, all.y=TRUE)
Acc19<-merge(AccOct07, AccNov07, by="id", all.x=TRUE, all.y=TRUE)
Acc20<-merge(AccDec07, AccJan08, by="id", all.x=TRUE, all.y=TRUE)
Acc21<-merge(AccFeb08, AccMar08, by="id", all.x=TRUE, all.y=TRUE)
Acc22<-merge(AccApr08, AccMay08, by="id", all.x=TRUE, all.y=TRUE)
Acc23<-merge(AccJun08, AccJul08, by="id", all.x=TRUE, all.y=TRUE)
Acc24<-merge(AccAug08, AccSept08, by="id", all.x=TRUE, all.y=TRUE)
Acc25<-merge(AccOct08, AccNov08, by="id", all.x=TRUE, all.y=TRUE)
Acc26<-merge(AccDec08, AccJan09, by="id", all.x=TRUE, all.y=TRUE)
Acc27<-merge(AccFeb09, AccMar09, by="id", all.x=TRUE, all.y=TRUE)
Acc28<-merge(AccApr09, AccMay09, by="id", all.x=TRUE, all.y=TRUE)
Acc29<-merge(AccJun09, AccJul09, by="id", all.x=TRUE, all.y=TRUE)
Acc30<-merge(AccAug09, AccSept09, by="id", all.x=TRUE, all.y=TRUE)
Acc31<-merge(AccOct09, AccNov09, by="id", all.x=TRUE, all.y=TRUE)
Acc32<-merge(AccDec09, AccJan10, by="id", all.x=TRUE, all.y=TRUE)
Acc33<-merge(AccFeb10, AccMar10, by="id", all.x=TRUE, all.y=TRUE)
Acc34<-merge(AccApr10, AccMay10, by="id", all.x=TRUE, all.y=TRUE)
Acc35<-merge(AccJun10, AccJul10, by="id", all.x=TRUE, all.y=TRUE)
Acc36<-merge(AccAug10, AccSept10, by="id", all.x=TRUE, all.y=TRUE)
Acc37<-merge(AccOct10, AccNov10, by="id", all.x=TRUE, all.y=TRUE)
Acc38<-merge(AccDec10, AccJan11, by="id", all.x=TRUE, all.y=TRUE)
Acc39<-merge(AccFeb11, AccMar11, by="id", all.x=TRUE, all.y=TRUE)
Acc40<-merge(AccApr11, AccMay11, by="id", all.x=TRUE, all.y=TRUE)
Acc41<-merge(AccJun11, AccJul11, by="id", all.x=TRUE, all.y=TRUE)
Acc42<-merge(AccAug11, AccSept11, by="id", all.x=TRUE, all.y=TRUE)
Acc43<-merge(AccOct11, AccNov11, by="id", all.x=TRUE, all.y=TRUE)
Acc44<-merge(AccDec11, AccJan12, by="id", all.x=TRUE, all.y=TRUE)
Acc45<-merge(AccFeb12, AccMar12, by="id", all.x=TRUE, all.y=TRUE)
Acc46<-merge(AccApr12, AccMay12, by="id", all.x=TRUE, all.y=TRUE)
Acc47<-merge(AccJun12, AccJul12, by="id", all.x=TRUE, all.y=TRUE)
Acc48<-merge(AccAug12, AccSept12, by="id", all.x=TRUE, all.y=TRUE)
Acc49<-merge(AccOct12, AccNov12, by="id", all.x=TRUE, all.y=TRUE)
Acc50<-merge(AccDec12, AccJan13, by="id", all.x=TRUE, all.y=TRUE)
Acc51<-merge(AccFeb13, AccMar13, by="id", all.x=TRUE, all.y=TRUE)
Acc52<-merge(AccApr13, AccMay13, by="id", all.x=TRUE, all.y=TRUE)
Acc53<-merge(AccJun13, AccJul13, by="id", all.x=TRUE, all.y=TRUE)
Acc54<-merge(AccAug13, AccSept13, by="id", all.x=TRUE, all.y=TRUE)
Acc55<-merge(AccOct13, AccNov13, by="id", all.x=TRUE, all.y=TRUE)
Acc56<-merge(AccDec13, AccJan14, by="id", all.x=TRUE, all.y=TRUE)
Acc57<-merge(AccFeb14, AccMar14, by="id", all.x=TRUE, all.y=TRUE)

Acc58<-merge(Acc1, Acc2, by="id", all.x=TRUE, all.y=TRUE)
Acc59<-merge(Acc3, Acc4, by="id", all.x=TRUE, all.y=TRUE)
Acc60<-merge(Acc5, Acc6, by="id", all.x=TRUE, all.y=TRUE)
Acc61<-merge(Acc7, Acc8, by="id", all.x=TRUE, all.y=TRUE)
Acc62<-merge(Acc9, Acc10, by="id", all.x=TRUE, all.y=TRUE)
Acc63<-merge(Acc11, Acc12, by="id", all.x=TRUE, all.y=TRUE)
Acc64<-merge(Acc13, Acc14, by="id", all.x=TRUE, all.y=TRUE)
Acc65<-merge(Acc15, Acc16, by="id", all.x=TRUE, all.y=TRUE)
Acc66<-merge(Acc17, Acc18, by="id", all.x=TRUE, all.y=TRUE)
Acc67<-merge(Acc19, Acc20, by="id", all.x=TRUE, all.y=TRUE)
Acc68<-merge(Acc21, Acc22, by="id", all.x=TRUE, all.y=TRUE)
Acc69<-merge(Acc23, Acc24, by="id", all.x=TRUE, all.y=TRUE)
Acc70<-merge(Acc25, Acc26, by="id", all.x=TRUE, all.y=TRUE)
Acc71<-merge(Acc27, Acc28, by="id", all.x=TRUE, all.y=TRUE)
Acc72<-merge(Acc29, Acc30, by="id", all.x=TRUE, all.y=TRUE)
Acc73<-merge(Acc31, Acc32, by="id", all.x=TRUE, all.y=TRUE)
Acc74<-merge(Acc33, Acc34, by="id", all.x=TRUE, all.y=TRUE)
Acc75<-merge(Acc35, Acc36, by="id", all.x=TRUE, all.y=TRUE)
Acc76<-merge(Acc37, Acc38, by="id", all.x=TRUE, all.y=TRUE)
Acc77<-merge(Acc39, Acc40, by="id", all.x=TRUE, all.y=TRUE)
Acc78<-merge(Acc41, Acc42, by="id", all.x=TRUE, all.y=TRUE)
Acc79<-merge(Acc43, Acc44, by="id", all.x=TRUE, all.y=TRUE)
Acc80<-merge(Acc45, Acc46, by="id", all.x=TRUE, all.y=TRUE)
Acc81<-merge(Acc47, Acc48, by="id", all.x=TRUE, all.y=TRUE)
Acc82<-merge(Acc49, Acc50, by="id", all.x=TRUE, all.y=TRUE)
Acc83<-merge(Acc51, Acc52, by="id", all.x=TRUE, all.y=TRUE)
Acc84<-merge(Acc53, Acc54, by="id", all.x=TRUE, all.y=TRUE)
Acc85<-merge(Acc55, Acc56, by="id", all.x=TRUE, all.y=TRUE)


Acc87<-merge(Acc58, Acc59, by="id", all.x=TRUE, all.y=TRUE)
Acc88<-merge(Acc60, Acc61, by="id", all.x=TRUE, all.y=TRUE)
Acc89<-merge(Acc62, Acc63, by="id", all.x=TRUE, all.y=TRUE)
Acc90<-merge(Acc64, Acc65, by="id", all.x=TRUE, all.y=TRUE)
Acc91<-merge(Acc66, Acc67, by="id", all.x=TRUE, all.y=TRUE)
Acc92<-merge(Acc68, Acc69, by="id", all.x=TRUE, all.y=TRUE)
Acc93<-merge(Acc70, Acc71, by="id", all.x=TRUE, all.y=TRUE)
Acc94<-merge(Acc72, Acc73, by="id", all.x=TRUE, all.y=TRUE)
Acc95<-merge(Acc74, Acc75, by="id", all.x=TRUE, all.y=TRUE)
Acc96<-merge(Acc76, Acc77, by="id", all.x=TRUE, all.y=TRUE)
Acc97<-merge(Acc78, Acc79, by="id", all.x=TRUE, all.y=TRUE)
Acc98<-merge(Acc80, Acc81, by="id", all.x=TRUE, all.y=TRUE)
Acc99<-merge(Acc82, Acc83, by="id", all.x=TRUE, all.y=TRUE)
Acc100<-merge(Acc84, Acc85, by="id", all.x=TRUE, all.y=TRUE)

colnames(Acc93)
Acc102<-merge(Acc87, Acc88, by="id", all.x=TRUE, all.y=TRUE)
Acc103<-merge(Acc89, Acc90, by="id", all.x=TRUE, all.y=TRUE)
Acc104<-merge(Acc91, Acc92, by="id", all.x=TRUE, all.y=TRUE)
Acc105<-merge(Acc93, Acc94, by="id", all.x=TRUE, all.y=TRUE)
Acc106<-merge(Acc95, Acc96, by="id", all.x=TRUE, all.y=TRUE)
Acc107<-merge(Acc97, Acc98, by="id", all.x=TRUE, all.y=TRUE)
Acc108<-merge(Acc99, Acc100, by="id", all.x=TRUE, all.y=TRUE)


Acc109<-merge(Acc102, Acc103, by="id", all.x=TRUE, all.y=TRUE)
Acc110<-merge(Acc104, Acc105, by="id", all.x=TRUE, all.y=TRUE)
Acc111<-merge(Acc106, Acc107, by="id", all.x=TRUE, all.y=TRUE)
Acc112<-merge(Acc108, Acc57, by="id", all.x=TRUE, all.y=TRUE)

Acc113<-merge(Acc109, Acc110, by="id", all.x=TRUE, all.y=TRUE)
Acc114<-merge(Acc111, Acc112, by="id", all.x=TRUE, all.y=TRUE)

Accessions<-merge(Acc113, Acc114, by="id", all.x=TRUE, all.y=TRUE)

#write.csv(Accessions, "Accessions05to14.csv")

##############################Analysis#################
total.Index<-grep("Total.Accessions",colnames(Accessions))

Total.Accessions<-apply(Accessions[,total.Index], 2, sum, na.rm=TRUE)

plot(Total.Accessions,x=1:114,pch=20, type="o")

names(Total.Accessions)
ByFiscalYear<-c(sum(Total.Accessions[1:12]),sum(Total.Accessions[13:24]),sum(Total.Accessions[25:36]),
  sum(Total.Accessions[37:48]), sum(Total.Accessions[49:60]), sum(Total.Accessions[61:72]),
  sum(Total.Accessions[73:84]), sum(Total.Accessions[85:96]), sum(Total.Accessions[97:108]),
  sum(Total.Accessions[109:114]))

plot(ByFiscalYear/1000,x=2005:2014, pch=20, type="o", xlim=c(2005, 2014), 
     xaxp=c(2005, 2014, 9), ylim=c(0, 350))


SCC<-grep("SCC",colnames(Accessions))

SCC.Acc<-apply(Accessions[,SCC],2,sum,na.rm=TRUE)

##Odds are Transfers, Evens are New Hires
SCC.TransfersPlusHires<-SCC.Acc[seq(1,228, by=2)]+SCC.Acc[seq(2,228, by=2)]

SCC.ByFiscalYear<-c(sum(SCC.TransfersPlusHires[1:12]),sum(SCC.TransfersPlusHires[13:24]),
                    sum(SCC.TransfersPlusHires[25:36]),sum(SCC.TransfersPlusHires[37:48]), 
                    sum(SCC.TransfersPlusHires[49:60]), sum(SCC.TransfersPlusHires[61:72]),
                    sum(SCC.TransfersPlusHires[73:84]), sum(SCC.TransfersPlusHires[85:96]), 
                    sum(SCC.TransfersPlusHires[97:108]),
                    sum(SCC.TransfersPlusHires[109:114]))

plot(SCC.TransfersPlusHires,x=1:114, pch=20, type="o", ylim=c(0, 250))

par(mfrow=c(1,1), mar=c(3,5,4,2))
plot(y=TotalSCOverTime,x=c(1998:2013), xlim=c(1998,2014), xlab="", 
          ylab="Appointments (In Thousands)", xaxp=c(1998,2014, 16),
          pch=20, type='o', ylim=c(0,2000),
          col="black", lwd=2, 
          main="Schedule C Appointments Over Time")
abline(v=2008.5, col="blue")
abline(v=2000.5, col="red")

lines(SCC.ByFiscalYear,x=2005:2014, pch=20, type="o", lwd=2, main="Total.Accessions",
      col="purple")
legend(x=2000.5,y=2100.1, legend=c("Total Number of Appointments", "Total New Hires and Transfers"), 
       lty=c(1,1), col=c("black", "purple"), bty="n", lwd=3, y.intersp=0.7, seg.len=1)
text(x=1999, y=0.1, labels="Clinton")
text(x=2004.5, y=0.1, labels="Bush")
text(x=2011.5, y=0.1, labels="Obama")

plot(SCC.TransfersPlusHires,x=seq(2004.75,2014.25, length.out=114), 
     xaxp=c(2004.75, 2014.25, 38),
     pch=20, type="o",cex.axis=0.6,
      main="Total.Accessions",
      col="purple")

Apts[grep("^AF", Apts[,2]),2]

grep("Agency", colnames(Apts))

SCC.TransfersPlusHires
SCC.ByFiscalYear
TotalSCOverTime[8:16]

SCC.ByFiscalYear/TotalSCOverTime[8:16]

SCC.ByFiscalYear[5]/TotalSCOverTime[12]

TotalSCOverTime

##########################Looking at SCC+SES+XS:Exec############

GroupIncluded<-c("ES.Exec", "SCC")

##Loop through all the options for Accessions
IncludedIndex<-list()
for(i in 1:4){
  IncludedIndex[[i]]<-grep(GroupIncluded[i], colnames(Accessions))
}

##Sort and unlist them
IncludedIndex<-sort(unlist(IncludedIndex))

##Just checking
colnames(Accessions)[IncludedIndex]

Accessions.fun<-function(start){
  res<-Accessions[,IncludedIndex][,start:(start+71)]
  TotalAccessionsIncludedForYear<-apply(res, 1, sum, na.rm=TRUE)
  return(TotalAccessionsIncludedForYear)
}

#colnames(Accessions[,IncludedIndex])[576:578]

##This gets all of the totals by year and agency
library(plyr)
TotalAccessionsIncludedByYearandAgency<-t(laply(c(1,73, 145, 217, 289, 361, 433, 505, 577),
                                                Accessions.fun))

colnames(TotalAccessionsIncludedByYearandAgency)<-c("ES.05", "ES.06",
                                          "ES.07", "ES.08", "ES.09",
                                          "ES.10", "ES.11", "ES.12",
                                          "ES.13")

TotalAccessionsIncludedByYear<-apply(TotalAccessionsIncludedByYearandAgency, 2, sum, na.rm=TRUE)

TotalAccessionsIncludedByYear
##Plots
plot(y=TotalAccessionsIncludedByYear/1000,x=c(2005:2013), xlim=c(2005,2013), xlab="Year", 
     ylab="Appointments (In Thousands)", xaxp=c(2005,2013, 8),
     pch=20, type='o', ylim=c(0, 2),
     col="black", lwd=2, 
     main="XS Exec and SCC Accessions Over Time")
abline(v=2008.5, col="blue")

par(mar=c(5,4,4,2))
plot(y=TotalIncludedByYear/1000,x=c(1998:2013), xlim=c(1998,2013), xlab="Year", 
     ylab="Appointments (In Thousands)", xaxp=c(1998,2013, 15),
     pch=20, type='o', ylim=c(0,3.3),
     col="black", lwd=2, 
     main="Excepted Service Executive and Schedule C Appointments Over Time")
abline(v=2000.5, col="red")
abline(v=2008.5, col="blue")

lines(y=TotalAccessionsIncludedByYear/1000,x=c(2005:2013), type="o",pch=20, col="purple")

legend(x=2000,y=3.6, legend=c("Total Number of Appointments", "Total Accessions"), 
       lty=c(1,1), col=c("black", "purple"), bty="n", lwd=3, y.intersp=0.7, seg.len=1)

TotalAccessionsIncludedByYear/TotalIncludedByYear[8:16]

##THIS IS FOR TOTAL ACCESSIONS OF ALL TYPES
TotalsIndex<-grep("Total.Accessions",colnames(Accessions))

Total.Accessions.fun<-function(start){
  dat<-Accessions[,TotalsIndex][,start:(start+11)]
  return(apply(dat,1, sum, na.rm=TRUE))
}

library(plyr)
TotalAccessionsByYearandAgency<-t(laply(c(1,13,25, 37, 49, 61, 73, 85, 97),Total.Accessions.fun))
colnames(TotalAccessionsByYearandAgency)<-c("FY05", "FY06", "FY07", "FY08", "FY09", "FY10", 
                                            "FY11", "FY12", "FY13")

##Included ES/SES accessions/Total accessions

RelativeAttention05<-TotalAccessionsIncludedByYearandAgency[,1]/TotalAccessionsIncludedByYear[1]
names(RelativeAttention05)<-Accessions[,1]
RelativeAttention05<-sort(round(RelativeAttention05,4))

RelativeAttention09<-TotalAccessionsIncludedByYearandAgency[,5]/TotalAccessionsIncludedByYear[5]
names(RelativeAttention09)<-Accessions[,1]
RelativeAttention09<-sort(round(RelativeAttention09,4))

grep("AGFA",names(RelativeAttention05))

RelativeAttention05
RelativeAttention09


#Attention<-TotalAccessionsIncludedByYearandAgency/TotalAccessionsIncludedByYear
#rownames(Attention)<-Accessions[,1]

#colnames(Accessions)[2]

#Attention10<-round(sort(Attention[,6]),3)
#sum(Attention10>0)
#length(Attention10)


