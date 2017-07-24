#Using the library Psych
library(psych)

#Read in data and stored it in surveyDataSummer2017 and ignore DK
surveyDataSummer2017 <- read.csv(file="C:/Users/william/Desktop/SEER-SurveyAnalysis/TechStartupSummer2017.csv", header=T, sep=",")
#ignoring DKgsub("DK", "", surveyDataSummer2017)
surveyDataSummer2017[surveyDataSummer2017 == "DK"] <- NA

#Created a new column, ProjectType, which categorizes the projects.
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("BossyUI", "BossyUI ")] <- "LFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Hack N Slash", "TopJam","Big League Coders", "Smart Laser Tag", "DnD", "GNOME Accessibility", "Ushahidi")]<- "Toy"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Better RQM", "Greatest RQM", "Automated User Tracking System")] <- "Industry"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Apache Spark", "KDevelop", "Mozilla", "RethinkDB", "Akka")]<- "FOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("MouseTrap")]<- "HFOSS"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("Job Match", "Ballzy", "Wanderlust", "eSport Connect", "Pocket TA","Mifos", "Bootstrap","Swift", "ReactJS", "Vault","Xenon","Mousetrap", "Grading App", "Rate My Rental", "Automated User Tracking System", "VR Public Speaking Simulator", "Loop", "Brow Pro", "CSU Deals")]<-"Startup"
surveyDataSummer2017$ProjectType[surveyDataSummer2017$PostProject%in% c("RadioSTAR", "MESA Career Fair")]<- "LOCALORG"

#Created another column that tells us whether or not the project was tech startup
surveyDataSummer2017$IsTechStartup[surveyDataSummer2017$ProjectType%in% c("Startup")]<- TRUE
surveyDataSummer2017$IsTechStartup[surveyDataSummer2017$ProjectType%in% c("HFOSS","LFOSS","Industry", "FOSS", "Toy", "LOCALORG")]<- FALSE

#Summary statistics of a variable by choice of project.

#PostBenefitSociety
suppressWarnings(describeBy(surveyDataSummer2017$PostBenefitSociety, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostBenefitSociety)

#PostAppreciateUsefulness
suppressWarnings(describeBy(surveyDataSummer2017$PostAppreciateUsefulness, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostAppreciateUsefulness)

#PostTeamInteractions
suppressWarnings(describeBy(surveyDataSummer2017$PostTeamInteractions, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostTeamInteractions)

#PostClientTechnical
suppressWarnings(describeBy(surveyDataSummer2017$PostClientTechnical, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostClientTechnical)

#PostClientBusiness
suppressWarnings(describeBy(surveyDataSummer2017$PostClientBusiness, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostClientBusiness)

#PostCSHelpeople
suppressWarnings(describeBy(surveyDataSummer2017$PostCSHelpPeople, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostCSHelpPeople)

#PostIncreaseComfortComputing
suppressWarnings(describeBy(surveyDataSummer2017$PostIncreaseComfortComputing, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostIncreaseComfortComputing)

#PostWelcomingHelpful
suppressWarnings(describeBy(surveyDataSummer2017$PostWelcomingHelpful, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostWelcomingHelpful)

#PostMaintainFOSS
suppressWarnings(describeBy(surveyDataSummer2017$PostMaintainFOSS, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostMaintainFOSS)

#PostBehaveProfessional
suppressWarnings(describeBy(surveyDataSummer2017$PostBehaveProfessional, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostBehaveProfessional)

#PostHighlyRelevant
suppressWarnings(describeBy(surveyDataSummer2017$PostHighlyRevelant, surveyDataSummer2017$PostProject))
shapiro.test(surveyDataSummer2017$PostHighlyRevelant)

#PostHelpfulNetworking
#suppressWarnings(describeBy(surveyDataSummer2017$PostHelpfulClients, surveyDataSummer2017$PostProject))
#shapiro.test(surveyDataSummer2017$PostHelpfulClients)

#PostCsPositiveImpact
#suppressWarnings(describeBy(surveyDataSummer2017$PostPositiveImpact, surveyDataSummer2017$PostProject))
#shapiro.test(surveyDataSummer2017$PostPositiveImpact)

#PostCommunicationHelpful
#suppressWarnings(describeBy(surveyDataSummer2017$PostCommunicationHelpful, surveyDataSummer2017$PostProject))
#shapiro.test(surveyDataSummer2017$PostCommunicationHelpful)

#PostCommunicated
#suppressWarnings(describeBy(surveyDataSummer2017$PostCommunicated, surveyDataSummer2017$PostProject))
#shapiro.test(surveyDataSummer2017$PostCommunicated)

#PostDescribeToolTechniques
#suppressWarnings(describeBy(surveyDataSummer2017$PostDescribeToolTechniques, surveyDataSummer2017$PostProject))
#shapiro.test(surveyDataSummer2017$PostDescribeToolTechniques)

#PostCSPositiveImpact
#suppressWarnings(describeBy(surveyDataSummer2017$PostCSPositiveImpact, surveyDataSummer2017$PostProject))
#shapiro.test(surveyDataSummer2017$PostCSPositiveImpact)

#PostWantedToHelpPeople
#suppressWarnings(describeBy(surveyDataSummer2017$PostWantedTohelpPeople, surveyDataSummer2017$PostProject))
#shapiro.test(surveyDataSummer2017$PostWantedToHelpPeople)

#PostServeLocal
#suppressWarnings(describeBy(surveyDataSummer2017$PostServeInternational, surveyDataSummer2017$PostProject))
#shapiro.test(surveyDataSummer2017$PostServeInternational)

#PostServeSchool
#describeBy(surveyDataSummer2017$PostServeSchool, surveyDataSummer2017$PostProject, na.rm=TRUE)
#shapiro.test(surveyDataSummer2017$PostServeSchool)
