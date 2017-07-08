#Using the library Psych
library(psych)

#Read in data and stored it in surveyDataSummer2017.
surveyDataSummer2017 <- read.csv(file="C:/Users/william/Desktop/SEER-SurveyAnalysis/TechStartupSummer2017.csv", header=T, sep=",")

#Created a new column, ProjectType, which categorizes the projects.
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("BossyUI")]<- "LFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Hack N Slash", "TopJam","Big League Coders", "Smart Laser Tag", "DnD", "RadioSTAR", "GNOME Accessibility", "Ushahidi")]<- "Toy"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Better RQM", "Greatest RQM", "Automated User Tracking System")] <- "Industry"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Apache Spark", "KDevelop", "Mozilla", "RethinkDB", "Akka")]<- "FOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("MouseTrap")]<- "HFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Job Match", "Ballzy", "Wanderlust", "eSport Connect", "Pocket TA", "MESA Career Fair", "Mifos", "Bootstrap","Swift", "ReactJS", "Vault","Xenon","Mousetrap", "Grading App", "Rate My Rental", "Automated User Tracking System", "VR Public Speaking Simulator", "Loop", "Brow Pro", "CSU Deals")]<-"Startup"

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

#PostCSPositiveImpact
describeBy(surveyDataSummer2017$PostCSPositiveImpact, surveyDataSummer2017$PostProject)

#PostServeLocal
describeBy(surveyDataSummer2017$PostServeInternational, surveyDataSummer2017$PostProject)

#PostServeSchool
describeBy(surveyDataSummer2017$PostServeSchool, surveyDataSummer2017$PostProject, na.rm=TRUE)
