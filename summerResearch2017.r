#Using the library Psych
library(psych)
setwd("C:/Users/william/Desktop/SEER-SurveyAnalysis")
#Read in data and stored it in surveyDataSummer2017 and ignore DK
surveyDataSummer2017 <- read.csv(file="C:/Users/william/Desktop/SEER-SurveyAnalysis/TechStartupSummer2017.csv", header=T, sep=",")
#ignoring DKgsub("DK", "", surveyDataSummer2017)
surveyDataSummer2017[surveyDataSummer2017 == "DK"] <- NA
sink('SummerResearch2017.txt')
#Created a new column, ProjectType, which categorizes the projects.
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("BossyUI", "BossyUI ")] <- "LFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Hack N Slash", "TopJam","Big League Coders", "Smart Laser Tag", "DnD", "GNOME Accessibility", "Ushahidi")]<- "Toy"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Better RQM", "Greatest RQM", "Automated User Tracking System", "AUTSNoon", "AUTSOne")] <- "Industry"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Apache Spark", "KDevelop", "Mozilla", "RethinkDB", "Akka", "Vault")]<- "FOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("MouseTrap")]<- "HFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Job Match", "Ballzy", "Wanderlust", "eSport Connect", "Pocket TA","Mifos", "Bootstrap","Swift", "ReactJS","Xenon","Mousetrap", "Grading App", "Rate My Rental", "Automated User Tracking System", "VR Public Speaking Simulator", "Loop", "Brow Pro", "CSU Deals", "VRPS", "")]<-"Startup"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("RadioSTAR", "MESA Career Fair")]<- "LOCALORG"

#Created another column that tells us whether or not the project was tech startup
surveyDataSummer2017$IsTechStartUp[surveyDataSummer2017$ProjectType%in% c("Startup")]<- TRUE
surveyDataSummer2017$IsTechStartUp[surveyDataSummer2017$ProjectType%in% c("HFOSS","LFOSS","Industry", "FOSS", "Toy", "LOCALORG")]<- FALSE

#Summary statistics of a variable by choice of project.

#PostBenefitSociety
describeBy(surveyDataSummer2017$PostBenefitSociety, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostBenefitSociety)
wilcox.test(PostBenefitSociety ~ IsTechStartUp, data=surveyDataSummer2017)

#PostAppreciateUsefulness
describeBy(surveyDataSummer2017$PostAppreciateUsefulness, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostAppreciateUsefulness)
wilcox.test(PostAppreciateUsefulness ~ IsTechStartUp, data=surveyDataSummer2017)

#PostTeamInteractions
describeBy(surveyDataSummer2017$PostTeamInteractions, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostTeamInteractions)
wilcox.test(PostTeamInteractions ~ IsTechStartUp, data=surveyDataSummer2017)

#PostClientTechnical
describeBy(surveyDataSummer2017$PostClientTechnical, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostClientTechnical)
wilcox.test(PostClientTechnical ~ IsTechStartUp, data=surveyDataSummer2017)

#PostClientBusiness
describeBy(surveyDataSummer2017$PostClientBusiness, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostClientBusiness)
wilcox.test(PostClientBusiness ~ IsTechStartUp, data=surveyDataSummer2017)

#PostCSHelpPeople
describeBy(surveyDataSummer2017$PostCSHelpPeople, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostCSHelpPeople)
wilcox.test(PostCSHelpPeople ~ IsTechStartUp, data=surveyDataSummer2017)

#PostIncreaseComfortComputing
describeBy(surveyDataSummer2017$PostIncreaseComfortComputing, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostIncreaseComfortComputing)
wilcox.test(PostIncreaseComfortComputing ~ IsTechStartUp, data=surveyDataSummer2017)

#PostWelcomingHelpful
describeBy(surveyDataSummer2017$PostWelcomingHelpful, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostWelcomingHelpful)
wilcox.test(PostWelcomingHelpful ~ IsTechStartUp, data=surveyDataSummer2017)

#PostMaintainFOSS
describeBy(surveyDataSummer2017$PostMaintainFOSS, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostMaintainFOSS)
wilcox.test(PostMaintainFOSS ~ IsTechStartUp, data=surveyDataSummer2017)

#PostBehaveProfessional
describeBy(surveyDataSummer2017$PostBehaveProfessional, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostBehaveProfessional)
wilcox.test(PostBehaveProfessional ~ IsTechStartUp, data=surveyDataSummer2017)

#PostHighlyRelevant
describeBy(surveyDataSummer2017$PostHighlyRelevant, surveyDataSummer2017$IsTechStartUp)
shapiro.test(surveyDataSummer2017$PostHighlyRelevant)
wilcox.test(PostHighlyRelevant ~ IsTechStartUp, data=surveyDataSummer2017)

#PostHelpfulClients
#suppressWarnings(describeBy(surveyDataSummer2017$PostHelpfulClients, surveyDataSummer2017$IsTechStartup))
#shapiro.test(surveyDataSummer2017$PostHelpfulClients)

#PostPositiveImpact
#suppressWarnings(describeBy(surveyDataSummer2017$PostCSPositiveImpact, surveyDataSummer2017$IsTechStartup))
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
sink()