#Using the library Psych and plyr
library(psych)
library(plyr)
setwd("C:/Users/william/Desktop/SEER-SurveyAnalysis")
#Read in data and stored it in surveyDataSummer2017 and ignore DK
surveyDataSummer2017 <- read.csv(file="C:/Users/william/Desktop/SEER-SurveyAnalysis/TechStartupSummer2017.csv", header=T, sep=",")
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

#postPredominantContact we now have the columns
pairwise.t.test(surveyDataSummer2017$PostPredominantContact, surveyDataSummer2017$IsTechStartUp, p.adj = "bonferroni")
wilcox.test(IsTechStartup, data= surveyDataSummer2017)

#Communicated 
surveyDataSummer2017$Communicated <- revalue(surveyDataSummer2017$Communicated,c("I had a mentor or customer but only other team members directly communicated with them"="1", "Less than once a month"="2", "Each month"="3", "Each week"="4", "Each day"="5"))
pairwise.t.test(surveyDataSummer2017$Communicated, surveyDataSummer2017$IsTechStartUp, p.adj = "bonferroni")
wilcox.test(Communicated ~ IsTechStartup, data= surveyDataSummer2017)

#ConfidenceComputing
surveyDataSummer2017$DeltaConfidenceComputing <- surveyDataSummer2017$PostIncreaseConfidenceComputing - surveyDataSummer2017$PreConfidenceComputing
sink()
