
# For Spring 16

#first ChoiceOther - 32
#other than first ChoiceOther - 4

# For Fall 15

#first ChoiceOther - 47
#other than first ChoiceOther - 8

library(psych)

#Descriptive Statistics.
#1. HoursPerWeek
describeBy(MyResearch$HoursPerWeek, MyResearch$ChoiceOther)

#2. ContinueAfterSemester
describeBy(MyResearch$ContinueAfterSemester, MyResearch$ChoiceOther, na.rm = TRUE)

#3. OtherProgrammersWillUse
describeBy(MyResearch$OtherProgrammersWillUse, MyResearch$ChoiceOther)

#4. PostServeSchool
describeBy(MyResearch$PostServeSchool, MyResearch$ChoiceOther)

#5. PostServeLocal
describeBy(MyResearch$PostServeLocal, MyResearch$ChoiceOther)

#6. PostServeInternational
describeBy(MyResearch$PostServeInternational, MyResearch$ChoiceOther)

#7. PostAppreciateUsefulness
describeBy(MyResearch$PostAppreciateUsefulness, MyResearch$ChoiceOther)

#8. PostBenefitSociety
describeBy(MyResearch$PostBenefitSociety, MyResearch$ChoiceOther)

#9. PostWantedToHelpPeople
describeBy(MyResearch$PostWantedToHelpPeople, MyResearch$ChoiceOther)

#10. PostInspireSkillsHelpOthers
describeBy(MyResearch$PostInspireSkillsHelpOthers, MyResearch$ChoiceOther)

#11. PostDoMyBestHelpOthers
describeBy(MyResearch$PostDoMyBestHelpOthers, MyResearch$ChoiceOther)

#12. PostHelpDoMyBest
describeBy(MyResearch$PostHelpDoMyBest, MyResearch$ChoiceOther)

#13. PostContinueContributingFOSS
describeBy(MyResearch$PostContinueContributingFOSS, MyResearch$ChoiceOther)

#14. PostPlanAndDevelop
describeBy(MyResearch$PostPlanAndDevelop, MyResearch$ChoiceOther)

#15. PostListSteps
describeBy(MyResearch$PostListSteps, MyResearch$ChoiceOther)

#16. PostUseProcess
describeBy(MyResearch$PostUseProcess, MyResearch$ChoiceOther)

#17. PostParticipateFOSS
describeBy(MyResearch$PostParticipateFOSS, MyResearch$ChoiceOther)

#18. PostConfidenceDiversity
describeBy(MyResearch$PostConfidenceDiversity, MyResearch$ChoiceOther)

#19. PostImpactComplexity
describeBy(MyResearch$PostImpactComplexity, MyResearch$ChoiceOther)

#20. PostImpactSize
describeBy(MyResearch$PostImpactSize, MyResearch$ChoiceOther)

#21. PostMaintainFOSS
describeBy(MyResearch$PostMaintainFOSS, MyResearch$ChoiceOther)

#22. PostDescribeDrawbackBenefits
describeBy(MyResearch$PostDescribeDrawbackBenefits, MyResearch$ChoiceOther)

#23. PostDescribeToolTechniques
describeBy(MyResearch$PostDescribeToolTechniques, MyResearch$ChoiceOther)

#24. PostTeamInteractions
describeBy(MyResearch$PostTeamInteractions, MyResearch$ChoiceOther)

#25. PostBehaveProfessional
describeBy(MyResearch$PostBehaveProfessional, MyResearch$ChoiceOther)

#26. PostConfidentialWorkProfessionals
describeBy(MyResearch$PostConfidentialWorkProfessionals, MyResearch$ChoiceOther)

#27. PostExcitedWorkProfessionals
describeBy(MyResearch$PostExcitedWorkProfessionals, MyResearch$ChoiceOther)
