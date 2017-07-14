#Using the library Psych
library(psych)

#Read in data and stored it in surveyDataSummer2017.
surveyDataSummer2017 <- read.csv(file="C:/Users/william/Desktop/SEER-SurveyAnalysis/TechStartupSummer2017.csv", header=T, sep=",")

#Created a new column, ProjectType, which categorizes the projects.
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("BossyUI")]<- "LFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Hack N Slash", "TopJam","Big League Coders", "Smart Laser Tag", "DnD", "GNOME Accessibility", "Ushahidi")]<- "Toy"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Better RQM", "Greatest RQM", "Automated User Tracking System")] <- "Industry"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Apache Spark", "KDevelop", "Mozilla", "RethinkDB", "Akka")]<- "FOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("MouseTrap")]<- "HFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Job Match", "Ballzy", "Wanderlust", "eSport Connect", "Pocket TA","Mifos", "Bootstrap","Swift", "ReactJS", "Vault","Xenon","Mousetrap", "Grading App", "Rate My Rental", "Automated User Tracking System", "VR Public Speaking Simulator", "Loop", "Brow Pro", "CSU Deals")]<-"Startup"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("RadioSTAR", "MESA Career Fair")]<- "LOCALORG"

#Summary statistics of a variable by choice of project.

#PostBenefitSociety
describeBy(surveyDataSummer2017$PostBenefitSociety, surveyDataSummer2017$PostProject)

#PostAppreciateUsefulness
describeBy(surveyDataSummer2017$PostAppreciateUsefulness, surveyDataSummer2017$PostProject)

#PostTeamInteractions
describeBy(surveyDataSummer2017$PostTeamInteractions, surveyDataSummer2017$PostProject)

#PostClientTechnical
describeBy(surveyDataSummer2017$PostClientTechnical, surveyDataSummer2017$PostProject)

#PostClientBusiness
describeBy(surveyDataSummer2017$PostClientBusiness, surveyDataSummer2017$PostProject)

#PostCSHelpeople
describeBy(surveyDataSummer2017$PostCSHelpPeople, surveyDataSummer2017$PostProject)

#PostIncreaseComfortComputing
describeBy(surveyDataSummer2017$PostIncreaseComfortComputing, surveyDataSummer2017$PostProject)

#PostWelcomingHelpful
describeBy(surveyDataSummer2017$PostWelcomingHelpful, surveyDataSummer2017$PostProject)

#PostMaintainFOSS
describeBy(surveyDataSummer2017$PostMaintainFOSS, surveyDataSummer2017$PostProject)

#PostBehaveProfessional
describeBy(surveyDataSummer2017$PostBehaveProfessional, surveyDataSummer2017$PostProject)

#PostHighlyRelevant
describeBy(surveyDataSummer2017$PostHighlyRevelant, surveyDataSummer2017$PostProject)

#PostHelpfulNetworking
describeBy(surveyDataSummer2017$PostHelpfulClients, surveyDataSummer2017$PostProject)

#PostCsPositiveImpact
describeBy(surveyDataSummer2017$PostPositiveImpact, surveyDataSummer2017$PostProject)

#PostCommunicationHelpful
describeBy(surveyDataSummer2017$PostCommunicationHelpful, surveyDataSummer2017$PostProject)

#PostCommunicated
describeBy(surveyDataSummer2017$PostCommunicated, surveyDataSummer2017$PostProject)

#PostDescribeToolTechniques
describeBy(surveyDataSummer2017$PostDescribeToolTechniques, surveyDataSummer2017$PostProject)

#PostCSPositiveImpact
describeBy(surveyDataSummer2017$PostCSPositiveImpact, surveyDataSummer2017$PostProject)

#PostWantedToHelpPeople
describeBy(surveyDataSummer2017$PostWantedTohelpPeople, surveyDataSummer2017$PostProject)

#PostServeLocal
describeBy(surveyDataSummer2017$PostServeInternational, surveyDataSummer2017$PostProject)

#PostServeSchool
describeBy(surveyDataSummer2017$PostServeSchool, surveyDataSummer2017$PostProject)

