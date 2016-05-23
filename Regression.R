setwd("~/TYP")
library(MASS)

AgencyPrefs<-read.csv("AgencyPref.csv", stringsAsFactors=FALSE)

UncombinedAgencies<-c("CC00", "KS00", "PU00", "SK00", "AN00", "EE00", "OS00", "EP00", "AP00", 
                      "AU00", "EQ00", "BD00", "IF00", "AM00", "FM00", "SZ00", "NM00", "NF00", 
                      "TB00", "NL00", "ST00", "RS00", "FY00", "RR00", "NQ00", "GG00", "MC00", 
                      "TS00", "CU00", "LF00", "NP00", "AA00", "HSCB", "FL00", "FT00", "RF00", 
                      "EC00", "OM00", "IB00", "FW00", "BG00", "EX00", "FC00", "DN00", "EW00", 
                      "BF00", "CE00", "FD00", "NU00", "TN00", "CT00", "SE00", "BO00", "TC00", 
                      "GB00", "EB00", "SB00", "NS00", "QQ00")

##From Analysis Script

TotalByYear<-Apts[,totals] #defined in the analysis script.
TotalByYear<-rev(TotalByYear) ##reverse to be in the same order as others
rownames(TotalByYear)<-Apts[,1] #set the rownames to match the agency id

Commerce<-TotalIncludedByYearandAgency[grep("^CM",rownames(TotalIncludedByYearandAgency)),]
CM00<-apply(Commerce,2,sum)

##This is the total number of apts in the agency.
CommerceSize<-TotalByYear[grep("^CM",rownames(TotalByYear)),]
CM00Size<-apply(CommerceSize,2,sum, na.rm=TRUE)

Labor<-TotalIncludedByYearandAgency[grep("^DL",rownames(TotalIncludedByYearandAgency)),]
DL00<-apply(Labor,2,sum)

LaborSize<-TotalByYear[grep("^DL",rownames(TotalByYear)),]
DL00Size<-apply(LaborSize,2,sum, na.rm=TRUE)

HUD<-TotalIncludedByYearandAgency[grep("^HU",rownames(TotalIncludedByYearandAgency)),]
HU00<-apply(HUD,2,sum)

HUDSize<-TotalByYear[grep("^HU",rownames(TotalByYear)),]
HU00Size<-apply(HUDSize,2,sum, na.rm=TRUE)

HHS<-TotalIncludedByYearandAgency[grep("^HE",rownames(TotalIncludedByYearandAgency)),]
(HE00<-apply(HHS,2,sum))

HHSSize<-TotalByYear[grep("^HE",rownames(TotalByYear)),]
HE00Size<-apply(HHSSize,2,sum, na.rm=TRUE)

Education<-TotalIncludedByYearandAgency[grep("^ED",rownames(TotalIncludedByYearandAgency)),]
(ED00<-apply(Education,2,sum))

EducationSize<-TotalByYear[grep("^ED",rownames(TotalByYear)),]
ED00Size<-apply(EducationSize,2,sum, na.rm=TRUE)

VA<-TotalIncludedByYearandAgency[grep("^VA",rownames(TotalIncludedByYearandAgency)),]
(VA00<-apply(VA,2,sum))

VASize<-TotalByYear[grep("^VA",rownames(TotalByYear)),]
VA00Size<-apply(VASize,2,sum, na.rm=TRUE)

Interior<-TotalIncludedByYearandAgency[grep("^IN",rownames(TotalIncludedByYearandAgency)),]
(IN00<-apply(Interior,2,sum))

InteriorSize<-TotalByYear[grep("^IN",rownames(TotalByYear)),]
IN00Size<-apply(InteriorSize,2,sum, na.rm=TRUE)

Army<-TotalIncludedByYearandAgency[grep("^AR",rownames(TotalIncludedByYearandAgency)),]
(AR00<-apply(Army,2,sum))

ArmySize<-TotalByYear[grep("^AR",rownames(TotalByYear)),]
AR00Size<-apply(ArmySize,2,sum, na.rm=TRUE)

Navy<-TotalIncludedByYearandAgency[grep("^NV",rownames(TotalIncludedByYearandAgency)),]
(NV00<-apply(Navy,2,sum))

NavySize<-TotalByYear[grep("^NV",rownames(TotalByYear)),]
NV00Size<-apply(NavySize,2,sum, na.rm=TRUE)

AirForce<-TotalIncludedByYearandAgency[grep("^AF",rownames(TotalIncludedByYearandAgency)),]
(AF00<-apply(AirForce,2,sum))

AirForceSize<-TotalByYear[grep("^AF",rownames(TotalByYear)),]
AF00Size<-apply(AirForceSize,2,sum, na.rm=TRUE)

Justice<-TotalIncludedByYearandAgency[grep("^DJ",rownames(TotalIncludedByYearandAgency)),]
(DJ00<-apply(Justice,2,sum))

JusticeSize<-TotalByYear[grep("^DJ",rownames(TotalByYear)),]
DJ00Size<-apply(JusticeSize,2,sum, na.rm=TRUE)

Transportation<-TotalIncludedByYearandAgency[grep("^TD",rownames(TotalIncludedByYearandAgency)),]
(TD00<-apply(Transportation,2,sum))

TransportationSize<-TotalByYear[grep("^TD",rownames(TotalByYear)),]
TD00Size<-apply(TransportationSize,2,sum, na.rm=TRUE)

Treasury<-TotalIncludedByYearandAgency[grep("^TR",rownames(TotalIncludedByYearandAgency)),]
(TR00<-apply(Treasury,2,sum))

TreasurySize<-TotalByYear[grep("^TR",rownames(TotalByYear)),]
TR00Size<-apply(TreasurySize,2,sum, na.rm=TRUE)

Agriculture<-TotalIncludedByYearandAgency[grep("^AG",rownames(TotalIncludedByYearandAgency)),]
(AG00<-apply(Agriculture,2,sum))

AgricultureSize<-TotalByYear[grep("^AG",rownames(TotalByYear)),]
AG00Size<-apply(AgricultureSize,2,sum, na.rm=TRUE)

NASA<-TotalIncludedByYearandAgency[grep("^NN",rownames(TotalIncludedByYearandAgency)),]
(NN00<-apply(NASA,2,sum))

NASASize<-TotalByYear[grep("^NN",rownames(TotalByYear)),]
NN00Size<-apply(NASASize,2,sum, na.rm=TRUE)

GSA<-TotalIncludedByYearandAgency[grep("^GS",rownames(TotalIncludedByYearandAgency)),]
(GS00<-apply(GSA,2,sum))

GSASize<-TotalByYear[grep("^GS",rownames(TotalByYear)),]
GS00Size<-apply(GSASize,2,sum, na.rm=TRUE)

Arts<-TotalIncludedByYearandAgency[grep("^AH",rownames(TotalIncludedByYearandAgency)),]
(AH00<-apply(Arts,2,sum))

ArtsSize<-TotalByYear[grep("^AH",rownames(TotalByYear)),]
AH00Size<-apply(ArtsSize,2,sum, na.rm=TRUE)

Defense<-TotalIncludedByYearandAgency[grep("^DD",rownames(TotalIncludedByYearandAgency)),]
(DD00<-apply(Defense,2,sum))

DefenseSize<-TotalByYear[grep("^DD",rownames(TotalByYear)),]
DD00Size<-apply(DefenseSize,2,sum, na.rm=TRUE)

DHS<-TotalIncludedByYearandAgency[grep("^HS",rownames(TotalIncludedByYearandAgency)),]

DHSSize<-TotalByYear[grep("^HS",rownames(TotalByYear)),]

##Take Out FEMA which is separate
DHS<-DHS[-13,]
DHSSize<-DHSSize[-13,]
(HS00<-apply(DHS,2,sum))
HS00Size<-apply(DHSSize,2,sum,na.rm=TRUE)

AgencySubset<-TotalIncludedByYearandAgency[UncombinedAgencies,]
AgencySubset<-as.data.frame(rbind(AgencySubset,CM00, DL00, HU00, HE00, ED00, VA00,IN00,AR00,NV00,AF00,DJ00,TD00,
      TR00,AG00,NN00,GS00,AH00,DD00,HS00))

AgencySubsetSize<-TotalByYear[UncombinedAgencies,]
AgencySubsetSize<-as.data.frame(rbind(AgencySubsetSize,CM00Size, DL00Size, HU00Size, HE00Size, ED00Size, VA00Size,IN00Size,AR00Size,NV00Size,AF00Size,DJ00Size,TD00Size,
                                  TR00Size,AG00Size,NN00Size,GS00Size,AH00Size,DD00Size,HS00Size))
AgencySubsetSize<-AgencySubsetSize[-79,] #Delete superfluous row
rownames(AgencySubsetSize)[60:78]<-c("CM00", "DL00", "HU00", "HE00", "ED00", "VA00", "IN00", "AR00", "NV00", "AF00", "DJ00", "TD00", "TR00", "AG00", "NN00", "GS00", "AH00", "DD00", "HS00")

##Add old FEMA numbers to new code
AgencySubset["HSCB",1:5]<-TotalIncludedByYearandAgency["EM00",1:5]
AgencySubsetSize["HSCB",1:5]<-TotalByYear["EM00",1:5]

##Calculate New Totals Because Some Agencies Not in Clinton/Lewis
#AgencySubsetTotal<-apply(AgencySubset,2,sum)
#AgencySubsetTotalSize<-apply(AgencySubsetSize,2,sum, na.rm=TRUE)

#AttentionSubset<-as.data.frame(matrix(NA, nrow=78, ncol=16))
#AttentionSubsetSize<-as.data.frame(matrix(NA,nrow=78,ncol=16))

##Calculate Attention Only for agencies in Lewis/Clinton Dataset
#for(i in 1:ncol(AttentionSubset)){
  #AttentionSubset[,i]<-AgencySubset[,i]/AgencySubsetTotal[i]
#}
#AgencySubsetTotal

##Set first 4 DHS to NA because it did not exist.
#rownames(AttentionSubset)<-rownames(AgencySubset)
#AttentionSubset["HS00",1:5]<-NA
#AttentionSubset["AM00",1]<-NA  ##Did not exist in '98
#AttentionSubset["FY00",12:16]<-NA ##Did not exist '09-'13
#AttentionSubset["AA00",1:12]<-NA ##Did not exist '98-'09
#AttentionSubset["EX00",7:16]<-NA ##Not in data after '03
#AttentionSubset["GB00",1:2]<-NA ##Did not exist '98-'99
##Do same for agencysubset
AgencySubset["HS00",1:5]<-NA
AgencySubset["AM00",1]<-NA  ##Did not exist in '98
AgencySubset["FY00",12:16]<-NA ##Did not exist '09-'13
AgencySubset["AA00",1:12]<-NA ##Did not exist '98-'09
AgencySubset["EX00",7:16]<-NA ##Not in data after '03
AgencySubset["GB00",1:2]<-NA ##Did not exist '98-'99
AgencySubsetSize["HS00",1:5]<-NA
AgencySubsetSize["AM00",1]<-NA  ##Did not exist in '98
AgencySubsetSize["FY00",12:16]<-NA ##Did not exist '09-'13
AgencySubsetSize["AA00",1:12]<-NA ##Did not exist '98-'09
AgencySubsetSize["EX00",7:16]<-NA ##Not in data after '03
AgencySubsetSize["GB00",1:2]<-NA ##Did not exist '98-'99

#Get a second version of AttentionSubset
#AttentionSubset2<-AttentionSubset
#AttentionSubset2$Agency<-rownames(AgencySubset) ##So I have an agency name variable to merge on
##Merge with ideology variables
#AgencyMinusPres98Thru00<-as.data.frame(cbind(Ideo98=AgencyPrefs$Mean-ClintonIdeal,
                                             #Agency=AgencyPrefs$Agency), stringsAsFactors=FALSE)
#Attn2<-merge(AttentionSubset2,AgencyMinusPres98Thru00)
#AgencyMinusPres01Thru08<-as.data.frame(cbind(Ideo01=AgencyPrefs$Mean-BushIdeal,
                                             #Agency=AgencyPrefs$Agency),stringsAsFactors=FALSE)
#Attn3<-merge(Attn2,AgencyMinusPres01Thru08)
#AgencyMinusPres09Thru13<-as.data.frame(cbind(Ideo09=AgencyPrefs$Mean-ObamaIdeal,
                                             #Agency=AgencyPrefs$Agency),stringsAsFactors=FALSE)
#Attn4<-merge(Attn3,AgencyMinusPres09Thru13)

##Do same as section above with agencySubset (count data)
AgencySubset2<-AgencySubset
AgencySubset2$Agency<-rownames(AgencySubset) ##So I have an agency name variable to merge on
##Merge with ideology variables
AgencyMinusPres98Thru00<-as.data.frame(cbind(Ideo98=AgencyPrefs$Mean-ClintonIdeal,
                                             Agency=AgencyPrefs$Agency), stringsAsFactors=FALSE)
Attn20<-merge(AgencySubset2,AgencyMinusPres98Thru00)
AgencyMinusPres01Thru08<-as.data.frame(cbind(Ideo01=AgencyPrefs$Mean-BushIdeal,
                                             Agency=AgencyPrefs$Agency),stringsAsFactors=FALSE)
Attn30<-merge(Attn2,AgencyMinusPres01Thru08)
AgencyMinusPres09Thru13<-as.data.frame(cbind(Ideo09=AgencyPrefs$Mean-ObamaIdeal,
                                             Agency=AgencyPrefs$Agency),stringsAsFactors=FALSE)
Attn40<-merge(Attn3,AgencyMinusPres09Thru13)


AgencySubset2Size<-AgencySubsetSize
AgencySubset2Size$Agency<-rownames(AgencySubsetSize) ##So I have an agency name variable to merge on
##Merge with ideology variables for size
AgencyMinusPres98Thru00
AgencySubset2Size$Agency
Attn20Size<-merge(AgencySubset2Size,AgencyMinusPres98Thru00)
Attn30Size<-merge(Attn20Size,AgencyMinusPres01Thru08)
Attn40Size<-merge(Attn30Size,AgencyMinusPres09Thru13)

##Make Attention into a vector
#AllAttention<-unlist(AttentionSubset)
##Make agencysubset (count data) into a vector
AllCount<-unlist(AgencySubset)

AgencySize<-unlist(AgencySubsetSize)

##Remove names attribute for both
names(AllAttention)<-names(AllCount)<-names(AgencySize)<-NULL

##make data frame with year and agency name
#AllAttention<-as.data.frame(cbind(Agency=rep(rownames(AgencySubset),16),AllAttention,
#                                  year=rep(1998:2013,each=78)), stringsAsFactors=FALSE)

AllCount<-as.data.frame(cbind(Agency=rep(rownames(AgencySubset),16),AllCount,
                              year=rep(1998:2013,each=78)), stringsAsFactors=FALSE)

AllCountSize<-as.data.frame(cbind(Agency=rep(rownames(AgencySubsetSize),16),AgencySize,
                                  year=rep(1998:2013,each=78)), stringsAsFactors=FALSE)

##Ideo Variable Added
#AllAttention$Ideo<-numeric(nrow(AllAttention))
AllCount$Ideo<-numeric(nrow(AllCount))
AllCountSize$Ideo<-numeric(nrow(AllCountSize))

##Sort by year and agency
#AllAttention<-AllAttention[order(AllAttention$year,AllAttention$Agency),]
AllCount<-AllCount[order(AllCount$year,AllCount$Agency),]
AllCountSize<-AllCountSize[order(AllCountSize$year,AllCountSize$Agency),]

##Attention matched with ideology
#AllAttention[AllAttention$year<2001,"Ideo"]<-rep(Attn4$Ideo98,3)
#AllAttention[AllAttention$year<2009 & AllAttention$year>2000,"Ideo"]<-rep(Attn4$Ideo01,8)
#AllAttention[AllAttention$year>2008,"Ideo"]<-rep(Attn4$Ideo09,5)
#AllAttentionNumeric<-as.data.frame(apply(AllAttention[2:4],2,as.numeric))
##Count Matched with ideology
AllCount[AllCount$year<2001,"Ideo"]<-rep(Attn40$Ideo98,3)
AllCount[AllCount$year<2009 & AllCount$year>2000,"Ideo"]<-rep(Attn40$Ideo01,8)
AllCount[AllCount$year>2008,"Ideo"]<-rep(Attn40$Ideo09,5)
AllCountNumeric<-as.data.frame(apply(AllCount[2:4],2,as.numeric))
##Add agency factored
Agencies<-as.factor(AllAttention$Agency)


AllCountSize[AllCountSize$year<2001,"Ideo"]<-rep(as.numeric(Attn40Size$Ideo98),3)
AllCountSize[AllCountSize$year<2009 & AllCountSize$year>2000,"Ideo"]<-rep(Attn40Size$Ideo01,8)
AllCountSize[AllCountSize$year>2008,"Ideo"]<-rep(Attn40Size$Ideo09,5)
AllCountNumericSize<-as.data.frame(apply(AllCountSize[2:4],2,as.numeric))

##############Unified gov####################
AllAttentionNumeric$unified<-numeric(1248)
AllAttentionNumeric$unified<-
UnifiedYears<-AllAttentionNumeric$year==2001| AllAttentionNumeric$year==2002|
  AllAttentionNumeric$year==2003|AllAttentionNumeric$year==2004|AllAttentionNumeric$year==2005|
  AllAttentionNumeric$year==2006|AllAttentionNumeric$year==2009|AllAttentionNumeric$year==2010
  
AllAttentionNumeric$unified<-as.numeric(UnifiedYears)
AllCountNumericSize$divided<-(as.numeric(!UnifiedYears))

##############Presidential Dummies##############
AllAttentionNumeric$Clinton<-AllAttentionNumeric$Bush<-AllAttentionNumeric$Obama<-numeric(nrow(AllAttentionNumeric))

AllAttentionNumeric$Clinton<-ifelse(AllAttentionNumeric$year<2001,1,0)
AllAttentionNumeric$Bush<-ifelse((AllAttentionNumeric$year>2000&AllAttentionNumeric$year<2009),1,0)
AllAttentionNumeric$Obama<-ifelse(AllAttentionNumeric$year>2008,1,0)

AllCountNumeric$Clinton<-AllCountNumeric$Bush<-AllCountNumeric$Obama<-numeric(nrow(AllCountNumeric))

AllCountNumeric$Clinton<-ifelse(AllCountNumeric$year<2001,1,0)
AllCountNumeric$Bush<-ifelse((AllCountNumeric$year>2000&AllCountNumeric$year<2009),1,0)
AllCountNumeric$Obama<-ifelse(AllCountNumeric$year>2008,1,0)

AllCountNumericSize$Agency<-AllCountSize$Agency

AllCountWithSize<-merge(AllCountNumeric,AllCountNumericSize)

AllCountWithSize<-merge(AllCountWithSize, MergedCountData2)####Lost this before. Must reconstruct


ChenJohnsonScores<-read.csv("ChenJohnson.csv", stringsAsFactors=FALSE)

No00s<-(grep("00", ChenJohnsonScores$OPMcode, invert=TRUE))
for(i in 1:length(No00s)){
  ChenJohnsonScores$OPMcode[No00s][i]<-paste((ChenJohnsonScores$OPMcode[No00s][i]), "00", sep="")
}

ChenJohnsonScores98thru00<-ChenJohnsonScores01thru04<-ChenJohnsonScores05thru08<-ChenJohnsonScores09thru13<-ChenJohnsonScores

ChenJohnsonScores98thru00<-rbind(ChenJohnsonScores98thru00, ChenJohnsonScores98thru00, ChenJohnsonScores98thru00)
ChenJohnsonScores98thru00$year<-rep(c(1998,1999,2000),each=79)
ChenJohnsonScores98thru00<-ChenJohnsonScores98thru00[,-c(1,6,8,9,10)] ##remove irrelavant presidents
colnames(ChenJohnsonScores98thru00)[5]<-"CJIdeology"
ChenJohnsonScores98thru00$PresidentIdeal<-rep(-.452)

ChenJohnsonScores01thru04<-rbind(ChenJohnsonScores01thru04, ChenJohnsonScores01thru04, ChenJohnsonScores01thru04, ChenJohnsonScores01thru04)
ChenJohnsonScores01thru04$year<-rep(c(2001,2002,2003,2004),each=79)
ChenJohnsonScores01thru04<-ChenJohnsonScores01thru04[,-c(1,6,7,9,10)] ##remove irrelavant presidents
colnames(ChenJohnsonScores01thru04)[5]<-"CJIdeology"
ChenJohnsonScores01thru04$PresidentIdeal<-rep(0.578)

ChenJohnsonScores05thru08<-rbind(ChenJohnsonScores05thru08, ChenJohnsonScores05thru08, ChenJohnsonScores05thru08, ChenJohnsonScores05thru08)
ChenJohnsonScores05thru08$year<-rep(c(2005,2006,2007,2008),each=79)
ChenJohnsonScores05thru08<-ChenJohnsonScores05thru08[,-c(1,6,7,8,10)] ##remove irrelavant presidents
colnames(ChenJohnsonScores05thru08)[5]<-"CJIdeology"
ChenJohnsonScores05thru08$PresidentIdeal<-rep(0.578)

ChenJohnsonScores09thru13<-rbind(ChenJohnsonScores09thru13, ChenJohnsonScores09thru13, ChenJohnsonScores09thru13, ChenJohnsonScores09thru13, ChenJohnsonScores09thru13)
ChenJohnsonScores09thru13$year<-rep(c(2009,2010,2011,2012,2013),each=79)
ChenJohnsonScores09thru13<-ChenJohnsonScores09thru13[,-c(1,6,7,8,9)] ##remove irrelavant presidents
colnames(ChenJohnsonScores09thru13)[5]<-"CJIdeology"
ChenJohnsonScores09thru13$PresidentIdeal<-rep(-.368)

ChenJohnsonMerge<-rbind(ChenJohnsonScores98thru00,ChenJohnsonScores01thru04,ChenJohnsonScores05thru08,ChenJohnsonScores09thru13)

colnames(MergedCountData2)[1]<-"OPMcode"  ##to match Chen and Johnson
colnames(AllCountWithSize)[3]<-"OPMcode"

##Needed to rename some of these because of an error in the code
NotInCL<-unique(ChenJohnsonMerge$OPMcode)[!(unique(ChenJohnsonMerge$OPMcode)%in%unique(AllCountWithSize$OPMcode))]
NotInCL[6]<-"HSAC"
NotInCL[9]<-"JL02"
NotInCL[21]<-"ST02"
NotInCL[23]<-"WH03"
NonCLAgencies<-which(rownames(TotalIncludedByYearandAgency) %in% NotInCL)

##Putting cases back in that were not in CL data.
ExcludedCases<-data.frame(AllCount=as.vector(TotalIncludedByYearandAgency[NonCLAgencies,]), year=rep(c(1998:2013), each=8), OPMcode=rownames(TotalIncludedByYearandAgency[NonCLAgencies,]))

##Make the excluded cases match AllCount for easy merging with rbind
ExcludedCases$Ideo<-ExcludedCases$Mean<-rep(NA) #give these NAs for Ideo and Mean because not in CL
ExcludedCases$Obama<-ifelse(ExcludedCases$year>2008,1,0)
ExcludedCases$Clinton<-ifelse(ExcludedCases$year<2001,1,0)      
ExcludedCases$Bush<-ifelse((ExcludedCases$year>2000&ExcludedCases$year<2009),1,0)    
ExcludedCases$AgencySize<-unlist(TotalByYear[NonCLAgencies,])
ExcludedCases$president<-character(128)
ExcludedCases[ExcludedCases$Bush==1,]$president<-"Bush"
ExcludedCases[ExcludedCases$Obama==1,]$president<-"Obama"
ExcludedCases[ExcludedCases$Clinton==1,]$president<-"Clinton"
##merge with rbind
AllCountWithSize<-rbind(ExcludedCases[,colnames(AllCountWithSize[,-4])], AllCountWithSize[,-4])
tail(AllCountWithSize)

#read in the Senate Medians
SenateMedians<-read.table("SenateMedians.txt", header=TRUE, stringsAsFactors=FALSE, sep=",")

##add in distance between party medians
AllCountWithSize$DistancePartyMedians<-numeric(1376)
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year<1999]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==105]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==105])
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year==1999 |AllCountWithSize$year==2000]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==106]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==106])
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year==2001 |AllCountWithSize$year==2002]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==107]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==107])
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year==2003 |AllCountWithSize$year==2004]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==108]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==108])
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year==2005 |AllCountWithSize$year==2006]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==109]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==109])
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year==2007 |AllCountWithSize$year==2008]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==110]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==110])
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year==2009 |AllCountWithSize$year==2010]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==111]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==111])
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year==2011 |AllCountWithSize$year==2012]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==112]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==112])
AllCountWithSize$DistancePartyMedians[AllCountWithSize$year==2013]<-abs(SenateMedians$MajorityMedianFirst[SenateMedians$Congress==113]-SenateMedians$MinorityMedianFirst[SenateMedians$Congress==113])

UltimateMergedData<-merge(AllCountWithSize,ChenJohnsonMerge)

SenateMedians

##Loading up Common Space Scores
CommonSpaceScores<-read.csv("CommonSpaceScores.csv", header=TRUE)
SenateCommonSpace<-CommonSpaceScores[CommonSpaceScores$DistNum==0,]
Senate105to112<-SenateCommonSpace[SenateCommonSpace$Congress>104,]

Senate105<-Senate105to112[Senate105to112$Congress==105 & Senate105to112$State!="USA",]
Senate106<-Senate105to112[Senate105to112$Congress==106 & Senate105to112$State!="USA",]
Senate107<-Senate105to112[Senate105to112$Congress==107 & Senate105to112$State!="USA",]
Senate108<-Senate105to112[Senate105to112$Congress==108 & Senate105to112$State!="USA",]
Senate109<-Senate105to112[Senate105to112$Congress==109 & Senate105to112$State!="USA",]
Senate110<-Senate105to112[Senate105to112$Congress==110 & Senate105to112$State!="USA",]
Senate111<-Senate105to112[Senate105to112$Congress==111 & Senate105to112$State!="USA",]
Senate112<-Senate105to112[Senate105to112$Congress==112 & Senate105to112$State!="USA",]
Senate113<-Senate105to112[Senate105to112$Congress==113 & Senate105to112$State!="USA",]

Senate60thSenator105<-quantile(Senate105$FirstDim, .6)
Senate60thSenator106<-quantile(Senate106$FirstDim, .6)
Senate60thSenator107<-quantile(Senate107$FirstDim, .4)
Senate60thSenator108<-quantile(Senate108$FirstDim, .4)
Senate60thSenator109<-quantile(Senate109$FirstDim, .4)
Senate60thSenator110<-quantile(Senate110$FirstDim, .4)
Senate60thSenator111<-quantile(Senate111$FirstDim, .6)
Senate60thSenator112<-quantile(Senate112$FirstDim, .6) #obama
Senate60thSenator113<-quantile(Senate113$FirstDim, .6) 

UltimateMergedData$Senate60thSenator<-rep(NA)
UltimateMergedData$Senate60thSenator[UltimateMergedData$year<1999]<-Senate60thSenator105
UltimateMergedData$Senate60thSenator[UltimateMergedData$year==1999 |UltimateMergedData$year==2000]<-Senate60thSenator106
UltimateMergedData$Senate60thSenator[UltimateMergedData$year==2001 |UltimateMergedData$year==2002]<-Senate60thSenator107
UltimateMergedData$Senate60thSenator[UltimateMergedData$year==2003 |UltimateMergedData$year==2004]<-Senate60thSenator108
UltimateMergedData$Senate60thSenator[UltimateMergedData$year==2005 |UltimateMergedData$year==2006]<-Senate60thSenator109
UltimateMergedData$Senate60thSenator[UltimateMergedData$year==2007 |UltimateMergedData$year==2008]<-Senate60thSenator110
UltimateMergedData$Senate60thSenator[UltimateMergedData$year==2009 |UltimateMergedData$year==2010]<-Senate60thSenator111
UltimateMergedData$Senate60thSenator[UltimateMergedData$year==2011 |UltimateMergedData$year==2012]<-Senate60thSenator112
UltimateMergedData$Senate60thSenator[UltimateMergedData$year==2013]<-Senate60thSenator113

UltimateMergedData$DistanceFilibusterPresident<-abs(UltimateMergedData$Senate60thSenator-UltimateMergedData$PresidentIdeal)

UltimateMergedData$FirstYear<-ifelse(UltimateMergedData$year==2001 | UltimateMergedData$year==2009,1,0)
UltimateMergedData$LastYear<-ifelse(UltimateMergedData$year==2000|UltimateMergedData$year==2008,1,0)

UltimateMergedData$PresPartySize<-rep(NA)
UltimateMergedData$PresPartySize[UltimateMergedData$year<1999]<-45
UltimateMergedData$PresPartySize[UltimateMergedData$year==1999 |UltimateMergedData$year==2000]<-45
UltimateMergedData$PresPartySize[UltimateMergedData$year==2001 |UltimateMergedData$year==2002]<-50
UltimateMergedData$PresPartySize[UltimateMergedData$year==2003 |UltimateMergedData$year==2004]<-51
UltimateMergedData$PresPartySize[UltimateMergedData$year==2005 |UltimateMergedData$year==2006]<-55
UltimateMergedData$PresPartySize[UltimateMergedData$year==2007 |UltimateMergedData$year==2008]<-49
UltimateMergedData$PresPartySize[UltimateMergedData$year==2009 |UltimateMergedData$year==2010]<-59
UltimateMergedData$PresPartySize[UltimateMergedData$year==2011 |UltimateMergedData$year==2012]<-53
UltimateMergedData$PresPartySize[UltimateMergedData$year==2013]<-55

UltimateMergedData$PresSenateShareParty<-ifelse((UltimateMergedData$year>2002&UltimateMergedData$year<2007)|UltimateMergedData$year>2008, 1,0)
UltimateMergedData$PresSenateShareParty
##did not in 1998, 1999, 2000, 2001, 2002, 2007, 2008
##did in 2003, 2004, 2005, 2006, 2009, 2010, 2011, 2012, 2013

UltimateMergedData$divided<-ifelse((UltimateMergedData$year<2001)|(UltimateMergedData$year>2005&UltimateMergedData$year<2009)|UltimateMergedData$year>2011, 1,0)

UltimateMergedData$divided

UltimateMergedData$DHS<-ifelse(UltimateMergedData$OPMcode=="HS00",1,0)
UltimateMergedData$State<-ifelse(UltimateMergedData$OPMcode=="ST00",1,0)
UltimateMergedData$Defense<-ifelse(UltimateMergedData$OPMcode=="DD00",1,0)
UltimateMergedData$Ag<-ifelse(UltimateMergedData$OPMcode=="AG00",1,0)
UltimateMergedData$Ed<-ifelse(UltimateMergedData$OPMcode=="ED00",1,0)

UltimateMergedData$Department<-ifelse((UltimateMergedData$OPMcode=="DD00"|UltimateMergedData$OPMcode=="ST00"|UltimateMergedData$OPMcode=="HS00"|UltimateMergedData$OPMcode=="AG00"|UltimateMergedData$OPMcode=="ED00"|UltimateMergedData$OPMcode=="DN00"|UltimateMergedData$OPMcode=="VA00"|UltimateMergedData$OPMcode=="TR00"|UltimateMergedData$OPMcode=="DJ00"|UltimateMergedData$OPMcode=="IN00"|UltimateMergedData$OPMcode=="CM00"|UltimateMergedData$OPMcode=="HE00"|UltimateMergedData$OPMcode=="HU00"|UltimateMergedData$OPMcode=="TD00"|UltimateMergedData$OPMcode=="DL00"),1,0)

unique(UltimateMergedData$OPMcode)
unique(UltimateMergedData$OPMname)
#divided=1998-2000,2006-08,11-13
#unified=2000-2006,09-10
UltimateMergedData$OPMname[order(UltimateMergedData$AllCount, decreasing=TRUE)]

UltimateMergedData$DistanceAgencyPresident<-abs(UltimateMergedData$PresidentIdeal-UltimateMergedData$CJIdeology)

mean(UltimateMergedData$DistancePartyMedians, na.rm=TRUE)
mean(UltimateMergedData$DistancePartyMedians, na.rm=TRUE)+sd(UltimateMergedData$DistancePartyMedians, na.rm=TRUE)


#newdata10 <- data.frame(
#  DistanceAgencyPresident = mean(na.omit(UltimateMergedData$DistanceAgencyPresident)),
#  DistancePartyMedians=mean(na.omit(UltimateMergedData$DistancePartyMedians)),
#  DistanceFilibusterPresident=mean(na.omit(UltimateMergedData$DistanceFilibusterPresident)),
#  SizeInThousands=mean(na.omit(UltimateMergedData$SizeInThousands)),
#  FirstYear=0,
#  LastYear=0,
#  Obama=0,
#  Clinton=0
#)

#exp(predict(CJmodel2, newdata10, type="link"))

#21 to 44

#44 to 58 for a one sd increase in distance between party medians.

##need to see what won't merge to get back the others. ST02, WH03,JL02, HSAC

cor(na.omit(UltimateMergedData)$Mean,na.omit(UltimateMergedData)$CJIdeology) ##correlation between Clinton/Lewis and Chen and Johnson

library(MASS)
library(sandwich)
library(lmtest)
library(multiwayvcov)
##create apts in thousands variable
UltimateMergedData$SizeInThousands<-UltimateMergedData$AgencySize/1000
##first model
CJmodel<-glm.nb(AllCount~DistanceAgencyPresident+divided+SizeInThousands+FirstYear+LastYear+Obama+Clinton, data=na.omit(UltimateMergedData))

##looking at most and least appointments
trial<-UltimateMergedData[UltimateMergedData$year==2013,c(4,14)]

xtable(as.data.frame(rbind(head(na.omit(trial[order(trial, decreasing=TRUE),]),10),tail(na.omit(trial[order(trial, decreasing=TRUE),]),10))))

#colnames(Apts)
#trial<-na.omit(Apts[,c(17,343)])
#trial[order(trial),]
##agriculture, education, state, defense, commerce
##federal election commission, government printing office, national archives and records administration, smithsonian, trade deficit review comm.



colnames(UltimateMergedData)
CJmodel3<-zeroinfl(AllCount~DistanceAgencyPresident+Obama+Clinton+DistancePartyMedians+SizeInThousands|1, data=na.omit(UltimateMergedData))
CJmodel4<-glm.nb(AllCount~abs(PresidentIdeal-CJIdeology)*DistancePartyMedians+abs(Senate60thSenator-PresidentIdeal)+Obama+Clinton+SizeInThousands+FirstYear+LastYear, data=na.omit(UltimateMergedData))

##histogram of Agency Counts

unique(cbind(as.character(UltimateMergedData$OPMcode), UltimateMergedData$OPMname))

UltimateMergedData$OPMname[UltimateMergedData$OPMcode=="CU00"]

par(mfrow=c(1,1), mar=c(5,4,4,2))
hist(UltimateMergedData$AllCount, breaks=75,main="Histogram of Count of Schedule Cs", xlab="Count of Schedule Cs")
abline(v=mean(UltimateMergedData$AllCount, na.rm=TRUE), col="blue")
abline(v=median(UltimateMergedData$AllCount, na.rm=TRUE), col="red")

par(mfrow=c(3,2), mar=c(3,5,4,1))
plot(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="AG00"], x=1998:2013, ylim=c(0,250), pch=20, 
     main="Department of Agriculture", xlab="", ylab="Number of Schedule Cs", xaxp=c(1998,2013, 15))
lines(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="AG00"], x=1998:2013)

plot(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="ST00"], x=1998:2013, ylim=c(0,250),pch=20, main="Department of State", xlab="", ylab="Number of Schedule Cs", xaxp=c(1998,2013, 15))
lines(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="ST00"], x=1998:2013)

plot(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="EP00"], x=1998:2013, ylim=c(0,50),pch=20, main="Environmental Protection Agency", xlab="", ylab="Number of Schedule Cs", xaxp=c(1998,2013, 15))
lines(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="EP00"], x=1998:2013)

plot(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="SB00"], x=1998:2013, ylim=c(0,50),pch=20, main="Small Business Administration", xlab="", ylab="Number of Schedule Cs", xaxp=c(1998,2013, 15))
lines(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="SB00"], x=1998:2013)

min(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="SK00"])
max(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="SK00"])
mean(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="SK00"])

plot(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="OM00"], x=1998:2013, ylim=c(0,30),pch=20, main="Office of Personnel Management", xlab="", ylab="Number of Schedule Cs", xaxp=c(1998,2013, 15))
lines(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="OM00"], x=1998:2013)

plot(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="SK00"], x=1998:2013, ylim=c(0,30),pch=20, main="Consumer Product Safety Commission", xlab="", ylab="Number of Schedule Cs", xaxp=c(1998,2013, 15))
lines(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="SK00"], x=1998:2013)


length(UltimateMergedData$AllCount[UltimateMergedData$OPMcode=="HSCB"])

summary(CJmodel3)
coeftest(CJmodel, vcov=function(x) cluster.vcov(x, na.omit(UltimateMergedData)$OPMcode))

##the main model I'm using
CJmodel2<-glm.nb(AllCount~DistancePartyMedians+DistanceFilibusterPresident+DistanceAgencyPresident+SizeInThousands+FirstYear+LastYear+Obama+Clinton, data=na.omit(UltimateMergedData))
ClusterModel2<-coeftest(CJmodel2, vcov=function(x) cluster.vcov(x, na.omit(UltimateMergedData)$OPMcode))
ClusterModel2

CJmodel3<-glm.nb(AllCount~DistanceAgencyPresident+divided+DistanceFilibusterPresident+SizeInThousands+FirstYear+LastYear+Obama+Clinton, data=na.omit(UltimateMergedData))
ClusterModel3<-coeftest(CJmodel3, vcov=function(x) cluster.vcov(x, na.omit(UltimateMergedData)$OPMcode))
ClusterModel3

##run with year fixed effects
CJmodel4<-glm.nb(AllCount~DistanceAgencyPresident+DistancePartyMedians+DistanceFilibusterPresident+as.factor(year)+SizeInThousands+FirstYear+LastYear+Obama+Clinton, data=na.omit(UltimateMergedData))
ClusterModel4<-coeftest(CJmodel4, vcov=function(x) cluster.vcov(x, na.omit(UltimateMergedData)$OPMcode))
ClusterModel4

CJmodel4<-glm.nb(AllCount~DistanceAgencyPresident+DistancePartyMedians+DistanceFilibusterPresident+as.factor(year)+SizeInThousands+FirstYear+LastYear+Obama+Clinton, data=na.omit(UltimateMergedData))
ClusterModel4<-coeftest(CJmodel4, vcov=function(x) cluster.vcov(x, na.omit(UltimateMergedData)$OPMcode))
ClusterModel4

colnames(UltimateMergedData)

##Mean is the clinton lewis score.
head(UltimateMergedData$Mean)
CJmodel5<-glm.nb(AllCount~Mean+DistancePartyMedians+DistanceFilibusterPresident+SizeInThousands, data=na.omit(UltimateMergedData[UltimateMergedData$Bush==1,]))
ClusterModel5<-coeftest(CJmodel5, vcov=function(x) cluster.vcov(x, na.omit(UltimateMergedData[UltimateMergedData$Bush==1,])$OPMcode))
ClusterModel5

##Results for just first year of Bush and Obama
CJmodel6<-glm.nb(AllCount~DistanceAgencyPresident+SizeInThousands, data=na.omit(UltimateMergedData[UltimateMergedData$year==2001|UltimateMergedData$year==2009,]))
ClusterModel6<-coeftest(CJmodel6, vcov=function(x) cluster.vcov(x, na.omit(UltimateMergedData[UltimateMergedData$year==2001|UltimateMergedData$year==2009,])$OPMcode))
ClusterModel6

stargazer(ClusterModel6)


par(mar=c(5.5,10,4,2), las=1)
plot(x=ClusterModel2[,1][2:9],y=c(8,7,6,5,4,3,2,1), xlim=c(-5,5),ylim=c(0.5,8.25), 
     pch=20, yaxt="n", ylab="", xlab="",
     main="Regression Results")
abline(v=0, lty=2)
segments(x0=ClusterModel2[,1][2]+(1.96*ClusterModel2[,2][2]), x1=ClusterModel2[,1][2]-(1.96*ClusterModel2[,2][2]), y0=8,y1=8)
segments(x0=ClusterModel2[,1][3]+(1.96*ClusterModel2[,2][3]), x1=ClusterModel2[,1][3]-(1.96*ClusterModel2[,2][3]), y0=7,y1=7)
segments(x0=ClusterModel2[,1][4]+(1.96*ClusterModel2[,2][4]), x1=ClusterModel2[,1][4]-(1.96*ClusterModel2[,2][4]), y0=6,y1=6)
segments(x0=ClusterModel2[,1][5]+(1.96*ClusterModel2[,2][5]), x1=ClusterModel2[,1][5]-(1.96*ClusterModel2[,2][5]), y0=5,y1=5)
segments(x0=ClusterModel2[,1][6]+(1.96*ClusterModel2[,2][6]), x1=ClusterModel2[,1][6]-(1.96*ClusterModel2[,2][6]), y0=4,y1=4)
segments(x0=ClusterModel2[,1][7]+(1.96*ClusterModel2[,2][7]), x1=ClusterModel2[,1][7]-(1.96*ClusterModel2[,2][7]), y0=3,y1=3)
segments(x0=ClusterModel2[,1][8]+(1.96*ClusterModel2[,2][8]), x1=ClusterModel2[,1][8]-(1.96*ClusterModel2[,2][8]), y0=2,y1=2)
segments(x0=ClusterModel2[,1][9]+(1.96*ClusterModel2[,2][9]), x1=ClusterModel2[,1][9]-(1.96*ClusterModel2[,2][9]), y0=1,y1=1)
axis(2, tick=FALSE, at=c(8,7,6,5,4,3,2,1),cex.axis=0.6,labels=c("Distance Party Medians", "Distance Senate President", "Distance Agency President","Agency Size (Thousands)", "First Year Presidency", "Last Year Presidency", "Obama", "Clinton"))

#legend(x=-2, y=9, legend= "Distance Agency President", box.lty=0, cex=0.7)
#legend(x=-0, y=8, legend="Distance Party Medians", box.lty=0, cex=0.7)
#legend(x=0, y=7, legend="Distance Senate President", box.lty=0, cex=0.7)
#legend(x=0, y=6, legend= "Agency Size", box.lty=0, cex=0.7)
#legend(x=0, y=5, legend="First Year", box.lty=0, cex=0.7)
#legend(x=0, y=4, legend="Last Year", box.lty=0, cex=0.7)
#legend(x=0, y=3, legend= "Obama", box.lty=0, cex=0.7)
#legend(x=0, y=2, legend="Clinton", box.lty=0, cex=0.7)
#box()

stargazer(CJmodel2, ClusterModel2)
stargazer(CJmodel,coeftest(CJmodel, vcov=function(x) cluster.vcov(x, na.omit(UltimateMergedData)$OPMcode)))

mean(UltimateMergedData$AllCount, na.rm=TRUE)
sd(UltimateMergedData$AllCount, na.rm=TRUE)

summary(UltimateMergedData$AllCount)

colnames(UltimateMergedData)

attach(na.omit(UltimateMergedData))

library(gridExtra)
library(ggplot2)
##Making Effect of Ideological Distance Plot
##this function calculates the clustered covariance matrix for the model
getcov<-function(x) cluster.vcov(x, na.omit(UltimateMergedData)$OPMcode)

#sqrt(t(trialdat) %*% getcov(CJmodel) %*% trialdat)

##note: calls the getcov function and specifies model inside rather than taking it as an argument
se.pred<-function(newdata){
  se.pred<-numeric(100)
  for(i in 1:100){
    trialdat<-unlist(c(1,newdata[i,]))
    se.pred[i]<-sqrt(t(trialdat) %*% getcov(CJmodel2) %*% trialdat)
  }
  return(se.pred)
}

##make new data with which to predict
newdata2 <- data.frame(
  DistanceAgencyPresident = seq(from = min(DistanceAgencyPresident), to = max(DistanceAgencyPresident), length.out = 100),
  DistancePartyMedians=mean(DistancePartyMedians),
  DistanceFilibusterPresident=mean(DistanceFilibusterPresident),
  SizeInThousands=mean(SizeInThousands),
  FirstYear=0,
  LastYear=0,
  Obama=0,
  Clinton=0
  )

newdata3 <- data.frame(
  DistanceAgencyPresident = seq(from = min(DistanceAgencyPresident), to = max(DistanceAgencyPresident), length.out = 100),
  DistancePartyMedians=mean(DistancePartyMedians),
  DistanceFilibusterPresident=mean(DistanceFilibusterPresident),
  SizeInThousands=mean(SizeInThousands),
  FirstYear=0,
  LastYear=0,
  Obama=1,
  Clinton=0
)

newdata4 <- data.frame(
  DistanceAgencyPresident = seq(from = min(DistanceAgencyPresident), to = max(DistanceAgencyPresident), length.out = 100),
  DistancePartyMedians=mean(DistancePartyMedians),
  DistanceFilibusterPresident=mean(DistanceFilibusterPresident),
  SizeInThousands=mean(SizeInThousands),
  FirstYear=0,
  LastYear=0,
  Obama=0,
  Clinton=1
)

Pred<-predict(CJmodel2, newdata2, type="link") #this gives us the prediction part
Pred2<-predict(CJmodel2, newdata3, type="link")
Pred3<-predict(CJmodel2, newdata4, type="link")

summary(CJmodel2)

newdata2 <- cbind(newdata2, Pred, SE=se.pred(newdata2))
newdata2 <- within(newdata2, {
  AllCount <- exp(Pred)
  LL <- exp(Pred - 1.96 * SE)
  UL <- exp(Pred + 1.96 * SE)
})

newdata3 <- cbind(newdata3, Pred2, SE=se.pred(newdata3))
newdata3 <- within(newdata3, {
  AllCount <- exp(Pred2)
  LL2 <- exp(Pred2 - 1.96 * SE)
  UL2 <- exp(Pred2 + 1.96 * SE)
})

newdata4 <- cbind(newdata4, Pred3, SE=se.pred(newdata4))
newdata4 <- within(newdata4, {
  AllCount <- exp(Pred3)
  LL3 <- exp(Pred3 - 1.96 * SE)
  UL3 <- exp(Pred3 + 1.96 * SE)
})

plot1<-ggplot(newdata2, aes(DistanceAgencyPresident, AllCount)) +
  ylim(0,350)+
  geom_ribbon(aes(ymin = LL, ymax = UL),fill="rosybrown1", alpha=3/4) +
  geom_ribbon(data=newdata3, aes(ymin= LL2, ymax=UL2),fill="lightskyblue", alpha=1/2)+
  geom_ribbon(data=newdata4, aes(ymin=LL3, ymax=UL3), fill="deepskyblue", alpha=1/4)+
  geom_line(colour = "indianred2", size = 2) +
  geom_line(data=newdata3, colour="blue",size=2)+
  geom_line(data=newdata4, colour="deepskyblue4", size=2)+
  #scale_color_manual(values=c("blue","deepskyblue4", "indianred2"), labels=c("Obama", "Clinton", "Bush"))+
  labs(x = "Distance Between Agency and President", y = "Predicted Count of Schedule C")+
  theme(plot.title = element_text(size = rel(1.2)), plot.margin=unit(c(1,3,1,1), "lines"))+
  labs(title="Effect of Ideological Distance Between President and Agency on Count of Schedule Cs")
plot1

##effect of median distance plot
newdata2 <- data.frame(
  DistanceAgencyPresident = mean(DistanceAgencyPresident),
  DistancePartyMedians=seq(from = min(DistancePartyMedians), to = max(DistancePartyMedians), length.out = 100),
  DistanceFilibusterPresident=mean(DistanceFilibusterPresident),
  SizeInThousands=mean(SizeInThousands),
  FirstYear=0,
  LastYear=0,
  Obama=0,
  Clinton=0
)
newdata3 <- data.frame(
  DistanceAgencyPresident = mean(DistanceAgencyPresident),
  DistancePartyMedians=seq(from = min(DistancePartyMedians), to = max(DistancePartyMedians), length.out = 100),
  DistanceFilibusterPresident=mean(DistanceFilibusterPresident),
  SizeInThousands=mean(SizeInThousands),
  FirstYear=0,
  LastYear=0,
  Obama=1,
  Clinton=0
)

newdata4 <- data.frame(
  DistanceAgencyPresident = mean(DistanceAgencyPresident),
  DistancePartyMedians=seq(from = min(DistancePartyMedians), to = max(DistancePartyMedians), length.out = 100),
  DistanceFilibusterPresident=mean(DistanceFilibusterPresident),
  SizeInThousands=mean(SizeInThousands),
  FirstYear=0,
  LastYear=0,
  Obama=0,
  Clinton=1
)

Pred<-predict(CJmodel2, newdata2, type="link", se.fit=TRUE)
Pred2<-predict(CJmodel2, newdata3, type="link", se.fit=TRUE)
Pred3<-predict(CJmodel2, newdata4, type="link", se.fit=TRUE)

newdata2 <- cbind(newdata2, Pred$fit, SE=se.pred(newdata2))
newdata2 <- within(newdata2, {
  AllCount <- exp(Pred$fit)
  LL <- exp(Pred$fit - 1.96 * SE)
  UL <- exp(Pred$fit + 1.96 * SE)
})

newdata3 <- cbind(newdata3, Pred2$fit, SE=se.pred(newdata3))
newdata3 <- within(newdata3, {
  AllCount <- exp(Pred2$fit)
  LL2 <- exp(Pred2$fit - 1.96 * SE)
  UL2 <- exp(Pred2$fit + 1.96 * SE)
})

newdata4 <- cbind(newdata4, Pred3$fit, SE=se.pred(newdata4))
newdata4 <- within(newdata4, {
  AllCount <- exp(Pred3$fit)
  LL3 <- exp(Pred3$fit - 1.96 * SE)
  UL3 <- exp(Pred3$fit + 1.96 * SE)
})

plot2<-ggplot(newdata2, aes(DistancePartyMedians, AllCount)) +
  ylim(0,200)+ 
  geom_ribbon(aes(ymin = LL, ymax = UL),fill="rosybrown1", alpha=3/4) +
  geom_ribbon(data=newdata3, aes(ymin= LL2, ymax=UL2),fill="lightskyblue", alpha=1/2)+
  geom_ribbon(data=newdata4, aes(ymin=LL3, ymax=UL3), fill="deepskyblue", alpha=1/4)+
  geom_line(aes(colour = "indianred2"), size = 2) +
  geom_line(data=newdata3, aes(colour="blue"),size=2)+
  geom_line(data=newdata4, aes(colour="deepskyblue4"), size=2)+
  scale_color_manual(values=c("blue","deepskyblue4", "indianred2"), labels=c("Obama", "Clinton", "Bush"))+
  labs(x = "Distance Between Party Medians in the Senate", y = "Predicted Count of Schedule C")+
  theme(legend.title=element_blank(),axis.title.y=element_blank(),plot.title = element_text(size = rel(1.2)), plot.margin=unit(c(1,0,1,1), "lines"))+
  labs(title="Effect of Distance Between Party Medians on Count of Schedule Cs")

plotBushOnly<-ggplot(newdata2, aes(DistancePartyMedians, AllCount)) +
  ylim(0,200)+ 
  geom_ribbon(aes(ymin = LL, ymax = UL),fill="rosybrown1", alpha=3/4) +
  geom_line(aes(colour = "indianred2"), size = 2) +
  labs(x = "Distance Between Party Medians in the Senate", y = "Predicted Count of Schedule C")+
  theme(legend.position="none",legend.title=element_blank(),axis.title.y=element_blank(),plot.title = element_text(size = rel(1.2)), plot.margin=unit(c(1,1,1,1), "lines"))+
  labs(title="Effect of Distance Between Party Medians on Count of Schedule Cs")

plotBushOnly
grid.arrange(plot1,plot2, ncol=2)

summary(UltimateMergedData$DistancePartyMedians)

detach(na.omit(UltimateMergedData))

summary(UltimateMergedData$DistancePartyMedians)
sd(UltimateMergedData$DistancePartyMedians)

###OLS models
#mod<-lm(AllAttention~abs(Ideo)+Agencies+Bush+Obama,data=AllAttentionNumeric)
#mod2<-lm(AllAttention~abs(Ideo),data=AllAttentionNumeric[AllAttentionNumeric$Clinton==1,])

#summary(mod2)
#simpleMod<-lm(AllAttention~abs(Ideo)+Bush+Obama,data=AllAttentionNumeric)

#summary(simpleMod)
#summary(mod)
#apsrtable(simpleMod,simpleMod)

#(.000007+.00095*(0.82+0.64))-(.000007+.00095*(0.82))

##Negative Binomial

#Agencies2<-relevel(Agencies, "EP00")

#countmod<-glm.nb(AllCount~abs(Ideo)+Clinton+Obama+unified+factor(Agencies2), 
                 #data=AllCountNumeric)

#AllCountNumeric$unified=AllAttentionNumeric$unified

#head(AllAttentionNumeric)

#countmod10<-glm.nb(AllCount~abs(Ideo)+Clinton+Obama+unified, 
                 #data=AllCountNumeric)

#summary(countmod)
#stargazer(countmod,countmod10)

#head(AllCountNumeric)
#AllCountNumeric$Year
#for (i in c(1998:2013)){
#  countmod2<-glm.nb(AllCount~abs(Ideo), data=AllCountNumeric[AllCountNumeric$year==i,])
  
#  print(coef(countmod2))
#}


#stargazer(countmod)

#AllCountNumeric$Agency<-as.factor(AllCount$Agency)
#countmodZero<-zeroinfl(AllCount~abs(Ideo)+Bush+Obama+as.factor(Agency)|abs(Ideo)+Bush+Obama, 
#                       dist="negbin",
#                       data=AllCountNumeric)

#stargazer(countmodZero)

#####
#####Lost the code, need to rewrite the code to get the estimates for the Clinton, Bush, and Obama Mods. 
#####
summary(BushMod)

head(AllCountWithSize)
BushMod<-glm.nb(formula = AllCount ~ Mean + divided+AgencySize, data = na.omit(AllCountWithSize[AllCountWithSize$Bush==1, ]))
ObamaMod<-glm.nb(formula = AllCount ~ Mean + divided+AgencySize, data = na.omit(AllCountWithSize[AllCountWithSize$Obama==1, ]))
ClintonMod<-glm.nb(formula = AllCount ~ Mean +AgencySize, data = na.omit(AllCountWithSize[AllCountWithSize$Clinton ==1, ]))

summary(ClintonMod)

summary(ClintonMod)
stargazer(ClintonMod,BushMod,ObamaMod)

BUSHLM<-(lm(log(AllCount+1)~Mean+divided+AgencySize, data=na.omit(AllCountWithSize[AllCountWithSize$Bush==1, ])))
OBAMALM<-(lm(log(AllCount+1)~Mean+divided+AgencySize, data=na.omit(AllCountWithSize[AllCountWithSize$Obama==1, ])))
CLINTONLM<-(lm(log(AllCount+1)~Mean+AgencySize, data=na.omit(AllCountWithSize[AllCountWithSize$Clinton==1, ])))

#BUSHLM<-(lm(log(AllCount+1)~Mean+divided+AF00+AG00+AH00+AM00+AN00+AP00+AR00+AU00+BD00+BF00+BG00+BO00+CC00+CE00+
#CM00+CT00+CU00+DD00+DL00+DN00+EB00+EC00+ED00+EE00+EP00+
  #DJ00+AA00+VA00
  #EQ00+EW00+EX00+FC00+FD00+FL00+FM00+FT00+FW00+FY00+GB00+
#GG00+GS00+HE00+HS00+HSCB+HU00+IB00+IF00+IN00+KS00+LF00+MC00+NF00+NL00+NM00+NN00+NP00+NQ00+NS00+NU00+NV00+OM00+OS00+
#PU00+QQ00+RF00+RR00+RS00+SB00+SE00+SK00+ST00+SZ00+TB00+TC00+TD00+TN00+TR00+TS00, data=na.omit(MergedCountData2[MergedCountData2$Bush == 
                                                                                 #1, ])))
#summary(OBAMALM)
#summary(CLINTONLM)
#summary(BUSHLM)

##Create a dummy for each agency
#for(i in 1:length(unique(MergedCountData2$Agency))){
#  for(j in 1:length(MergedCountData2$Agency)){
#    MergedCountData2[j,(i+9)]<-ifelse(MergedCountData2$Agency[j]==unique(MergedCountData2$Agency)[i], 1, 0)
#  }
#}
#colnames(MergedCountData2)[c(10:87)]<-as.character(unique(MergedCountData2$Agency))

#write.csv(MergedCountData2, "MergedScheduleCCountData")

##plots
par(mfrow=c(1,1))
plot(y=AllAttentionNumeric$AllAttention, x=abs(AllAttentionNumeric$Ideo),pch=20,
     main="Simple Regression of Attention and Absolute Distance")
abline(mod,col="blue")

#par(mar=c(3,2,4,2))
#plot(x=coef(summary(countmod))[2:4,1],y=c(3,2,1), xlim=c(-.15,.15),ylim=c(0.75,3.25), 
#     pch=20, yaxt="n", ylab="", xlab="",
#     main="Regression Results")
#abline(v=0, lty=2)
#segments(x0=coef(summary(countmod))[2,1]+(1.96*coef(summary(countmod))[2,2]), x1=coef(summary(countmod))[2,1]-(1.96*coef(summary(countmod))[2,2]), y0=3,y1=3)
#segments(x0=coef(summary(countmod))[3,1]+(1.96*coef(summary(countmod))[3,2]), x1=coef(summary(countmod))[3,1]-(1.96*coef(summary(countmod))[3,2]), y0=2, y1=2)
#segments(x0=coef(summary(countmod))[4,1]+(1.96*coef(summary(countmod))[4,2]), x1=coef(summary(countmod))[4,1]-(1.96*coef(summary(countmod))[4,2]), y0=1, y1=1)

#legend(x=-.18, y=3.25, legend= "Ideology", box.lty=0, cex=0.8)
#legend(x=-.18, y=2.25, legend="Bush", box.lty=0, cex=0.8)
#legend(x=-.18, y=1.25, legend="Obama", box.lty=0, cex=0.8)
#box()

##coef
##se
##Seeing how to run a Negative Binomial Regression with lme4
AllCountWithSize$president=character(1248)
AllCountWithSize[AllCountWithSize$Bush==1,]$president<-"Bush"
AllCountWithSize[AllCountWithSize$Obama==1,]$president<-"Obama"
AllCountWithSize[AllCountWithSize$Clinton==1,]$president<-"Clinton"
AllCountWithSize
##multilevel model
Multilevel1<-(glmer.nb(AllCount~Mean+divided+(Mean|Agency)+(Mean|president), data=na.omit(AllCountWithSize)))
Multilevel2<-(glmer.nb(AllCount~Mean+divided+AgencySize+(Mean|president), data=(AllCountWithSize)))
ranef(Multilevel1)$president
VarCorr(Multilevel1)
summary(Multilevel1)
summary(Multilevel2)
class(MergedCountData2$Agency)


##Check found online to see if warning is a problem.
relgrad <- with(Multilevel1@optinfo$derivs,solve(Hessian,gradient))
max(abs(relgrad))
##

head(MergedCountData2, 30)
