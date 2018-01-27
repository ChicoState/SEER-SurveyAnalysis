#Using the library Psych and plyr
library(psych)
library(plyr)
library(dplyr)
#setwd("C:/Users/william/Desktop/SEER-SurveyAnalysis")
#Read in data and stored it in surveyDataSummer2017 and ignore DK
surveyDataSummer2017 <- read.csv(file="C:/Users/willi/Desktop/SEER-SurveyAnalysis/TechStartupSummer2017.csv", header=T, sep=",")
#ignoring DK
surveyDataSummer2017[surveyDataSummer2017 == "DK"] <- NA
sink('SummerResearch2017.txt')
#Created a new column, ProjectType, which categorizes the projects.
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("BossyUI", "BossyUI ")] <- "LFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Hack N Slash", "TopJam","Big League Coders", "Smart Laser Tag", "DnD", "GNOME Accessibility", "Ushahidi")]<- "Toy"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Better RQM", "Greatest RQM", "Automated User Tracking System", "AUTSNoon", "AUTSOne")] <- "Industry"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Apache Spark", "KDevelop", "Mozilla", "RethinkDB", "Akka", "Vault")]<- "FOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("MouseTrap")]<- "HFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Job Match", "Ballzy", "Wanderlust", "eSport Connect", "Pocket TA","Mifos", "Bootstrap","Swift", "ReactJS","Xenon","Mousetrap", "Grading App", "Rate My Rental", "Automated User Tracking System", "VR Public Speaking Simulator", "Loop", "Brow Pro", "CSU Deals", "VRPS")]<-"Startup"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("RadioSTAR", "MESA Career Fair")]<- "LOCALORG"

#Created another column that tells us whether or not the project was tech startup
surveyDataSummer2017$IsTechStartUp[surveyDataSummer2017$ProjectType%in% c("Startup")]<- TRUE
surveyDataSummer2017$IsTechStartUp[surveyDataSummer2017$ProjectType%in% c("HFOSS","LFOSS","Industry", "FOSS", "Toy", "LOCALORG")]<- FALSE

#Summary statistics of a variable by choice of project.

#PostBenefitSociety
surveyDataSummer2017$DeltaBenefitSociety <- surveyDataSummer2017$PostBenefitSociety - surveyDataSummer2017$PreBenefitSociety
describeBy(surveyDataSummer2017$DeltaBenefitSociety, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$DeltaBenefitSociety)
wilcox.test(DeltaBenefitSociety ~ IsTechStartUp, data=surveyDataSummer2017)

#PostAppreciateUsefulness
surveyDataSummer2017$DeltaAppreciateUsefulness <- surveyDataSummer2017$PostAppreciateUsefulness - surveyDataSummer2017$PreUsefulnessOfComputing
describeBy(surveyDataSummer2017$DeltaAppreciateUsefulness, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$DeltaAppreciateUsefulness)
wilcox.test(DeltaAppreciateUsefulness ~ IsTechStartUp, data=surveyDataSummer2017)

#PostTeamInteractions
surveyDataSummer2017$DeltaTeamInteractions <- surveyDataSummer2017$PostTeamInteractions - surveyDataSummer2017$PreTeamInteractions
describeBy(surveyDataSummer2017$DeltaTeamInteractions, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$DeltaTeamInteractions)
wilcox.test(DeltaTeamInteractions ~ IsTechStartUp, data=surveyDataSummer2017)

#PostClientTechnical
describeBy(surveyDataSummer2017$PostClientTechnical, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostClientTechnical)
wilcox.test(PostClientTechnical ~ IsTechStartUp, data=surveyDataSummer2017)

#PostClientBusiness
describeBy(surveyDataSummer2017$PostClientBusiness, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostClientBusiness)
wilcox.test(PostClientBusiness ~ IsTechStartUp, data=surveyDataSummer2017)

#PostCSHelpPeople
surveyDataSummer2017$DeltaCSHelpPeople <- surveyDataSummer2017$PostCSHelpPeople - surveyDataSummer2017$PreCSHelpPeople
describeBy(surveyDataSummer2017$DeltaCSHelpPeople, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$DeltaCSHelpPeople)
wilcox.test(DeltaCSHelpPeople ~ IsTechStartUp, data=surveyDataSummer2017)

#PostIncreaseComfortComputing
surveyDataSummer2017$DeltaComfortComputing <- surveyDataSummer2017$PostIncreaseComfortComputing - surveyDataSummer2017$PreComfortableComputing
describeBy(surveyDataSummer2017$DeltaComfortComputing, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$DeltaComfortComputing)
wilcox.test(DeltaComfortComputing ~ IsTechStartUp, data=surveyDataSummer2017)

#PostWelcomingHelpful
describeBy(surveyDataSummer2017$PostWelcomingHelpful, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostWelcomingHelpful)
wilcox.test(PostWelcomingHelpful ~ IsTechStartUp, data=surveyDataSummer2017)

#PostMaintainFOSS
surveyDataSummer2017$DeltaMaintainFOSS <- surveyDataSummer2017$PostMaintainFOSS - surveyDataSummer2017$PreMaintainProject
describeBy(surveyDataSummer2017$DeltaMaintainFOSS, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$DeltaMaintainFOSS)
wilcox.test(DeltaMaintainFOSS ~ IsTechStartUp, data=surveyDataSummer2017)

#PostBehaveProfessional
surveyDataSummer2017$DeltaBehaveProfessional <- surveyDataSummer2017$PostBehaveProfessional - surveyDataSummer2017$PreBehaveProfessional
describeBy(surveyDataSummer2017$DeltaBehaveProfessional, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$DeltaBehaveProfessional)
wilcox.test(DeltaBehaveProfessional ~ IsTechStartUp, data=surveyDataSummer2017)

#PostHighlyRelevant
describeBy(surveyDataSummer2017$PostHighlyRelevant, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostHighlyRelevant)
wilcox.test(PostHighlyRelevant ~ IsTechStartUp, data=surveyDataSummer2017)
# Commented variables are variables that are not numeric so cannot run tests on these yet

#PostHelpfulClients
#as.numeric(surveyDataSummer2017$PostHelpfulClients)
#describeBy(surveyDataSummer2017$PostHelpfulClients, surveyDataSummer2017$IsTechStartup)
#shapiro.test(surveyDataSummer2017$PostHelpfulClients)

#PostPositiveImpact
#describeBy(surveyDataSummer2017$PostCSPositiveImpact, surveyDataSummer2017$IsTechStartup)
#shapiro.test(surveyDataSummer2017$PostCSPositiveImpact)

#PostCommunicationHelpful
#suppressWarnings(describeBy(surveyDataSummer2017$PostCommunicationHelpful, surveyDataSummer2017$IsTechStartup, na.))
#shapiro.test(surveyDataSummer2017$PostCommunicationHelpful)

#PostCommunicated
#suppressWarnings(describeBy(surveyDataSummer2017$PostCommunicated, surveyDataSummer2017$IsTechStartup))
#shapiro.test(surveyDataSummer2017$PostCommunicated)

#PostDescribeToolTechniques
#suppressWarnings(describeBy(surveyDataSummer2017$PostDescribeToolTechniques, surveyDataSummer2017$IsTechStartup))
#shapiro.test(surveyDataSummer2017$PostDescribeToolTechniques)

#PostCSPositiveImpact
#suppressWarnings(describeBy(surveyDataSummer2017$PostCSPositiveImpact, surveyDataSummer2017$IsTechStartup))
#shapiro.test(surveyDataSummer2017$PostCSPositiveImpact)

#PostWantedToHelpPeople
#suppressWarnings(describeBy(surveyDataSummer2017$PostWantedTohelpPeople, surveyDataSummer2017$IsTechStartup))
#shapiro.test(surveyDataSummer2017$PostWantedToHelpPeople)

#PostServeLocal
#suppressWarnings(describeBy(surveyDataSummer2017$PostServeInternational, surveyDataSummer2017$IsTechStartup))
#shapiro.test(surveyDataSummer2017$PostServeInternational)

#PostServeSchool
#describeBy(surveyDataSummer2017$PostServeSchool, surveyDataSummer2017$IsTechStartup, na.rm=TRUE)
#shapiro.test(surveyDataSummer2017$PostServeSchool)

# Blank variables are still counted on here finding a way to ignore this variable
# on ClientFaceToFace variable first before applying to other ones.

#PostCLientFaceToFace
surveyDataSummer2017$PostClientFaceToFaceRanked <- surveyDataSummer2017$PostClientFaceToFace
#Did not put each day because there were none.
surveyDataSummer2017$PostClientFaceToFaceRanked <- revalue(surveyDataSummer2017$PostClientFaceToFaceRanked, c("Never"="1","Less than once a month"="2", "Each month"="3", "Each week"="4"))
surveyDataSummer2017$PostClientFaceToFaceRanked <- as.numeric(surveyDataSummer2017$PostClientFaceToFaceRanked)
describeBy(surveyDataSummer2017$PostClientFaceToFaceRanked, surveyDataSummer2017$Semester)
shapiro.test(surveyDataSummer2017$PostClientFaceToFaceRanked)

#PostCLientSynchronous
#surveyDataSummer2017$PostClientAsynchronousRanked <- surveyDataSummer2017$PostClientAsynchronous
#surveyDataSummer2017$AsynchronousRanked <- revalue(surveyDataSummer2017$PostClientAsynchronousRanked, c("Never"="1","Less than once a month"="2", "Each month"="3", "Each week"="4", "Each day"="5"))
#describeBy(surveyDataSummer2017$PostClientAsynchronousRanked, surveyDataSummer2017$Semester)

#PostCLientSynchronous
#surveyDataSummer2017$PostClientSynchronousRanked <- surveyDataSummer2017$PostClientSynchronous
#surveyDataSummer2017$PostClientSynchronousRanked <- revalue(surveyDataSummer2017$PostClientSynchronousRanked, c("Never"="1","Less than once a month"="2", "Each month"="3", "Each week"="4", "Each day"="5"))
#describeBy(surveyDataSummer2017$PostClientSynchronousRanked, surveyDataSummer2017$Semester)

#postPredominantContact
#surveyDataSummer2017$PostPredominantContactRanked <- surveyDataSummer2017$PostPredominantContact
#surveyDataSummer2017$PostPredominantContactRanked <- revalue(surveyDataSummer2017$PostPredominantContactRanked, c("Asynchronous communication (Email bulletin boards messaging at different times etc)"="1", "Synchronous communication (Phone video messaging instant messaging talking at the same time)"="2", "Synchronous communication (Phone video messaging instant messaging etc)"="2", "In person"="3"))
#wilcox.test(PostPredominantContact ~ IsTechStartup, data= surveyDataSummer2017)

#Communicated 
#surveyDataSummer2017$CommunicatedRanked <- surveyDataSummer2017$Communicated
#surveyDataSummer2017$CommunicatedRanked <- revalue(surveyDataSummer2017$CommunicatedRanked,c("I had a mentor or customer but only other team members directly communicated with them"="1", "Less than once a month"="2", "Each month"="3", "Each week"="4", "Each day"="5"))
#wilcox.test(CommunicatedRanked ~ IsTechStartup, data= surveyDataSummer2017)

#ConfidenceComputing
#surveyDataSummer2017$DeltaConfidenceComputing <- surveyDataSummer2017$PostIncreaseConfidenceComputing - surveyDataSummer2017$PreConfidenceComputing
sink()
