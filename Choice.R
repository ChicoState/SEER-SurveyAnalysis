
# For Spring 16

#first choice - 32
#second choice - 2
#third choice - 0
#not from three choice - 2

# For Fall 15

#first choice - 47
#second choice - 5
#third choice - 2
#not from three choice - 0

#install.packages("psych")
library(psych)

#Descriptive Statistics.
#1. HoursPerWeek
describeBy(MyResearch$HoursPerWeek, MyResearch$Choice)

#2. ContinueAfterSemester
describeBy(MyResearch$ContinueAfterSemester, MyResearch$Choice, na.rm = TRUE)

#3. OtherProgrammersWillUse
describeBy(MyResearch$OtherProgrammersWillUse, MyResearch$Choice)

#4. PostServeSchool
describeBy(MyResearch$PostServeSchool, MyResearch$Choice)

#5. PostServeLocal
describeBy(MyResearch$PostServeLocal, MyResearch$Choice)

#6. PostServeInternational
describeBy(MyResearch$PostServeInternational, MyResearch$Choice)

#7. PostAppreciateUsefulness
describeBy(MyResearch$PostAppreciateUsefulness, MyResearch$Choice)

#8. PostBenefitSociety
describeBy(MyResearch$PostBenefitSociety, MyResearch$Choice)

#9. PostWantedToHelpPeople
describeBy(MyResearch$PostWantedToHelpPeople, MyResearch$Choice)

#10. PostInspireSkillsHelpOthers
describeBy(MyResearch$PostInspireSkillsHelpOthers, MyResearch$Choice)

#11. PostDoMyBestHelpOthers
describeBy(MyResearch$PostDoMyBestHelpOthers, MyResearch$Choice)

#12. PostHelpDoMyBest
describeBy(MyResearch$PostHelpDoMyBest, MyResearch$Choice)

#13. PostContinueContributingFOSS
describeBy(MyResearch$PostContinueContributingFOSS, MyResearch$Choice)

#14. PostPlanAndDevelop
describeBy(MyResearch$PostPlanAndDevelop, MyResearch$Choice)

#15. PostListSteps
describeBy(MyResearch$PostListSteps, MyResearch$Choice)

#16. PostUseProcess
describeBy(MyResearch$PostUseProcess, MyResearch$Choice)

#17. PostParticipateFOSS
describeBy(MyResearch$PostParticipateFOSS, MyResearch$Choice)

#18. PostConfidenceDiversity
describeBy(MyResearch$PostConfidenceDiversity, MyResearch$Choice)

#19. PostImpactComplexity
describeBy(MyResearch$PostImpactComplexity, MyResearch$Choice)

#20. PostImpactSize
describeBy(MyResearch$PostImpactSize, MyResearch$Choice)

#21. PostMaintainFOSS
describeBy(MyResearch$PostMaintainFOSS, MyResearch$Choice)

#22. PostDescribeDrawbackBenefits
describeBy(MyResearch$PostDescribeDrawbackBenefits, MyResearch$Choice)

#23. PostDescribeToolTechniques
describeBy(MyResearch$PostDescribeToolTechniques, MyResearch$Choice)

#24. PostTeamInteractions
describeBy(MyResearch$PostTeamInteractions, MyResearch$Choice)

#25. PostBehaveProfessional
describeBy(MyResearch$PostBehaveProfessional, MyResearch$Choice)

#26. PostConfidentialWorkProfessionals
describeBy(MyResearch$PostConfidentialWorkProfessionals, MyResearch$Choice)

#27. PostExcitedWorkProfessionals
describeBy(MyResearch$PostExcitedWorkProfessionals, MyResearch$Choice)
