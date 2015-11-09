
BushIdeal<-0.437
ObamaIdeal<--.419
ClintonIdeal<--.433

AgencyPrefs<-read.csv("AgencyPref.csv", stringsAsFactors=FALSE)

UncombinedAgencies<-c("CC00", "KS00", "PU00", "SK00", "AN00", "EE00", "OS00", "EP00", "AP00", 
                      "AU00", "EQ00", "BD00", "IF00", "AM00", "FM00", "SZ00", "NM00", "NF00", 
                      "TB00", "NL00", "ST00", "RS00", "FY00", "RR00", "NQ00", "GG00", "MC00", 
                      "TS00", "CU00", "LF00", "NP00", "AA00", "HSCB", "FL00", "FT00", "RF00", 
                      "EC00", "OM00", "IB00", "FW00", "BG00", "EX00", "FC00", "DN00", "EW00", 
                      "BF00", "CE00", "FD00", "NU00", "TN00", "CT00", "SE00", "BO00", "TC00", 
                      "GB00", "EB00", "SB00", "NS00", "QQ00")

##From Analysis Script

Commerce<-TotalIncludedByYearandAgency[grep("^CM",rownames(TotalIncludedByYearandAgency)),]
CM00<-apply(Commerce,2,sum)

Labor<-TotalIncludedByYearandAgency[grep("^DL",rownames(TotalIncludedByYearandAgency)),]
DL00<-apply(Labor,2,sum)

HUD<-TotalIncludedByYearandAgency[grep("^HU",rownames(TotalIncludedByYearandAgency)),]
HU00<-apply(HUD,2,sum)

HHS<-TotalIncludedByYearandAgency[grep("^HE",rownames(TotalIncludedByYearandAgency)),]
(HE00<-apply(HHS,2,sum))

Education<-TotalIncludedByYearandAgency[grep("^ED",rownames(TotalIncludedByYearandAgency)),]
(ED00<-apply(Education,2,sum))

VA<-TotalIncludedByYearandAgency[grep("^VA",rownames(TotalIncludedByYearandAgency)),]
(VA00<-apply(VA,2,sum))

Interior<-TotalIncludedByYearandAgency[grep("^IN",rownames(TotalIncludedByYearandAgency)),]
(IN00<-apply(Interior,2,sum))

Army<-TotalIncludedByYearandAgency[grep("^AR",rownames(TotalIncludedByYearandAgency)),]
(AR00<-apply(Army,2,sum))

Navy<-TotalIncludedByYearandAgency[grep("^NV",rownames(TotalIncludedByYearandAgency)),]
(NV00<-apply(Navy,2,sum))

AirForce<-TotalIncludedByYearandAgency[grep("^AF",rownames(TotalIncludedByYearandAgency)),]
(AF00<-apply(AirForce,2,sum))

Justice<-TotalIncludedByYearandAgency[grep("^DJ",rownames(TotalIncludedByYearandAgency)),]
(DJ00<-apply(Justice,2,sum))

Transportation<-TotalIncludedByYearandAgency[grep("^TD",rownames(TotalIncludedByYearandAgency)),]
(TD00<-apply(Transportation,2,sum))

Treasury<-TotalIncludedByYearandAgency[grep("^TR",rownames(TotalIncludedByYearandAgency)),]
(TR00<-apply(Treasury,2,sum))

Agriculture<-TotalIncludedByYearandAgency[grep("^AG",rownames(TotalIncludedByYearandAgency)),]
(AG00<-apply(Agriculture,2,sum))

NASA<-TotalIncludedByYearandAgency[grep("^NN",rownames(TotalIncludedByYearandAgency)),]
(NN00<-apply(NASA,2,sum))

GSA<-TotalIncludedByYearandAgency[grep("^GS",rownames(TotalIncludedByYearandAgency)),]
(GS00<-apply(GSA,2,sum))

Arts<-TotalIncludedByYearandAgency[grep("^AH",rownames(TotalIncludedByYearandAgency)),]
(AH00<-apply(Arts,2,sum))

Defense<-TotalIncludedByYearandAgency[grep("^DD",rownames(TotalIncludedByYearandAgency)),]
(DD00<-apply(Defense,2,sum))

DHS<-TotalIncludedByYearandAgency[grep("^HS",rownames(TotalIncludedByYearandAgency)),]

##Take Out FEMA which is separate
DHS<-DHS[-13,]
(HS00<-apply(DHS,2,sum))

AgencySubset<-TotalIncludedByYearandAgency[UncombinedAgencies,]
AgencySubset<-as.data.frame(rbind(AgencySubset,CM00, DL00, HU00, HE00, ED00, VA00,IN00,AR00,NV00,AF00,DJ00,TD00,
      TR00,AG00,NN00,GS00,AH00,DD00,HS00))

##Add old FEMA numbers to new code
AgencySubset["HSCB",1:5]<-TotalIncludedByYearandAgency["EM00",1:5]

##Calculate New Totals Because Some Agencies Not in Clinton/Lewis
AgencySubsetTotal<-apply(AgencySubset,2,sum)

AttentionSubset<-as.data.frame(matrix(NA, nrow=78, ncol=16))

##Calculate Attention Only for agencies in Lewis/Clinton Dataset
for(i in 1:ncol(AttentionSubset)){
  AttentionSubset[,i]<-AgencySubset[,i]/AgencySubsetTotal[i]
}

##Set first 4 DHS to NA because it did not exist.
rownames(AttentionSubset)<-rownames(AgencySubset)
AttentionSubset["HS00",1:5]<-NA
AttentionSubset["AM00",1]<-NA  ##Did not exist in '98
AttentionSubset["FY00",12:16]<-NA ##Did not exist '09-'13
AttentionSubset["AA00",1:12]<-NA ##Did not exist '98-'09
AttentionSubset["EX00",7:16]<-NA ##Not in data after '03
AttentionSubset["GB00",1:2]<-NA ##Did not exist '98-'99
##Do same for agencysubset
AgencySubset["HS00",1:5]<-NA
AgencySubset["AM00",1]<-NA  ##Did not exist in '98
AgencySubset["FY00",12:16]<-NA ##Did not exist '09-'13
AgencySubset["AA00",1:12]<-NA ##Did not exist '98-'09
AgencySubset["EX00",7:16]<-NA ##Not in data after '03
AgencySubset["GB00",1:2]<-NA ##Did not exist '98-'99


#Get a second version of AttentionSubset
AttentionSubset2<-AttentionSubset
AttentionSubset2$Agency<-rownames(AgencySubset) ##So I have an agency name variable to merge on
##Merge with ideology variables
AgencyMinusPres98Thru00<-as.data.frame(cbind(Ideo98=AgencyPrefs$Mean-ClintonIdeal,
                                             Agency=AgencyPrefs$Agency), stringsAsFactors=FALSE)
Attn2<-merge(AttentionSubset2,AgencyMinusPres98Thru00)
AgencyMinusPres01Thru08<-as.data.frame(cbind(Ideo01=AgencyPrefs$Mean-BushIdeal,
                                             Agency=AgencyPrefs$Agency),stringsAsFactors=FALSE)
Attn3<-merge(Attn2,AgencyMinusPres01Thru08)
AgencyMinusPres09Thru13<-as.data.frame(cbind(Ideo09=AgencyPrefs$Mean-ObamaIdeal,
                                             Agency=AgencyPrefs$Agency),stringsAsFactors=FALSE)
Attn4<-merge(Attn3,AgencyMinusPres09Thru13)

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


##Make Attention into a vector
AllAttention<-unlist(AttentionSubset)
##Make agencysubset (count data) into a vector
AllCount<-unlist(AgencySubset)
##Remove names attribute for both
names(AllAttention)<-names(AllCount)<-NULL

##make data frame with year and agency name
AllAttention<-as.data.frame(cbind(Agency=rep(rownames(AgencySubset),16),AllAttention,
                                  year=rep(1998:2013,each=78)), stringsAsFactors=FALSE)

AllCount<-as.data.frame(cbind(Agency=rep(rownames(AgencySubset),16),AllCount,
                              year=rep(1998:2013,each=78)), stringsAsFactors=FALSE)



##Ideo Variable Added
AllAttention$Ideo<-numeric(nrow(AllAttention))
AllCount$Ideo<-numeric(nrow(AllCount))

##Sort by year and agency
AllAttention<-AllAttention[order(AllAttention$year,AllAttention$Agency),]
AllCount<-AllCount[order(AllCount$year,AllCount$Agency),]

##Attention matched with ideology
AllAttention[AllAttention$year<2001,"Ideo"]<-rep(Attn4$Ideo98,3)
AllAttention[AllAttention$year<2009 & AllAttention$year>2000,"Ideo"]<-rep(Attn4$Ideo01,8)
AllAttention[AllAttention$year>2008,"Ideo"]<-rep(Attn4$Ideo09,5)
AllAttentionNumeric<-as.data.frame(apply(AllAttention[2:4],2,as.numeric))
##Count Matched with ideology
AllCount[AllCount$year<2001,"Ideo"]<-rep(Attn40$Ideo98,3)
AllCount[AllCount$year<2009 & AllCount$year>2000,"Ideo"]<-rep(Attn40$Ideo01,8)
AllCount[AllCount$year>2008,"Ideo"]<-rep(Attn40$Ideo09,5)
AllCountNumeric<-as.data.frame(apply(AllCount[2:4],2,as.numeric))
##Add agency factored
Agencies<-as.factor(AllAttention$Agency)

##############Unified gov####################
AllAttentionNumeric$unified<-numeric(1248)
AllAttentionNumeric$unified<-
UnifiedYears<-AllAttentionNumeric$year==2001| AllAttentionNumeric$year==2002|
  AllAttentionNumeric$year==2003|AllAttentionNumeric$year==2004|AllAttentionNumeric$year==2005|
  AllAttentionNumeric$year==2006|AllAttentionNumeric$year==2009|AllAttentionNumeric$year==2010
  
AllAttentionNumeric$unified<-as.numeric(UnifiedYears)

##############Presidential Dummies##############
AllAttentionNumeric$Clinton<-AllAttentionNumeric$Bush<-AllAttentionNumeric$Obama<-numeric(nrow(AllAttentionNumeric))

AllAttentionNumeric$Clinton<-ifelse(AllAttentionNumeric$year<2001,1,0)
AllAttentionNumeric$Bush<-ifelse((AllAttentionNumeric$year>2000&AllAttentionNumeric$year<2009),1,0)
AllAttentionNumeric$Obama<-ifelse(AllAttentionNumeric$year>2008,1,0)

AllCountNumeric$Clinton<-AllCountNumeric$Bush<-AllCountNumeric$Obama<-numeric(nrow(AllCountNumeric))

AllCountNumeric$Clinton<-ifelse(AllCountNumeric$year<2001,1,0)
AllCountNumeric$Bush<-ifelse((AllCountNumeric$year>2000&AllCountNumeric$year<2009),1,0)
AllCountNumeric$Obama<-ifelse(AllCountNumeric$year>2008,1,0)



###OLS models
mod<-lm(AllAttention~abs(Ideo)+Agencies+Bush+Obama,data=AllAttentionNumeric)
mod2<-lm(AllAttention~abs(Ideo),data=AllAttentionNumeric[AllAttentionNumeric$Clinton==1,])

summary(mod2)


simpleMod<-lm(AllAttention~abs(Ideo)+Bush+Obama,data=AllAttentionNumeric)

summary(simpleMod)
summary(mod)
apsrtable(simpleMod,simpleMod)

(.000007+.00095*(0.82+0.64))-(.000007+.00095*(0.82))

##Negative Binomial
library(MASS)


countmod<-glm.nb(AllCount~abs(Ideo)+Bush+Obama+Agencies, 
                 data=AllCountNumeric)

countmod10<-glm.nb(AllCount~abs(Ideo)+Bush+Obama, 
                 data=AllCountNumeric)
stargazer(countmod,countmod10)

head(AllCountNumeric)
AllCountNumeric$Year
for (i in c(1998:2013)){
  countmod2<-glm.nb(AllCount~abs(Ideo), data=AllCountNumeric[AllCountNumeric$year==i,])
  
  print(coef(countmod2))
}


stargazer(countmod)

AllCountNumeric$Agency<-as.factor(AllCount$Agency)
countmodZero<-zeroinfl(AllCount~abs(Ideo)+Bush+Obama+as.factor(Agency)|abs(Ideo)+Bush+Obama, 
                       dist="negbin",
                       data=AllCountNumeric)

stargazer(countmodZero)



##plots
par(mfrow=c(1,1))
plot(y=AllAttentionNumeric$AllAttention, x=abs(AllAttentionNumeric$Ideo),pch=20,
     main="Simple Regression of Attention and Absolute Distance")
abline(mod,col="blue")

par(mar=c(3,2,4,2))
plot(x=coef(summary(countmod))[2:4,1],y=c(3,2,1), xlim=c(-.15,.15),ylim=c(0.75,3.25), 
     pch=20, yaxt="n", ylab="", xlab="",
     main="Regression Results")
abline(v=0, lty=2)
segments(x0=coef(summary(countmod))[2,1]+(1.96*coef(summary(countmod))[2,2]), x1=coef(summary(countmod))[2,1]-(1.96*coef(summary(countmod))[2,2]), y0=3,y1=3)
segments(x0=coef(summary(countmod))[3,1]+(1.96*coef(summary(countmod))[3,2]), x1=coef(summary(countmod))[3,1]-(1.96*coef(summary(countmod))[3,2]), y0=2, y1=2)
segments(x0=coef(summary(countmod))[4,1]+(1.96*coef(summary(countmod))[4,2]), x1=coef(summary(countmod))[4,1]-(1.96*coef(summary(countmod))[4,2]), y0=1, y1=1)

legend(x=-.18, y=3.25, legend= "Ideology", box.lty=0, cex=0.8)
legend(x=-.18, y=2.25, legend="Bush", box.lty=0, cex=0.8)
legend(x=-.18, y=1.25, legend="Obama", box.lty=0, cex=0.8)
box()

##coef
##se


