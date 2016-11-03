
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
shapiro.test(MyResearch$HoursPerWeek)

#2. ContinueAfterSemester
describeBy(MyResearch$ContinueAfterSemester, MyResearch$ChoiceOther, na.rm = TRUE)
shapiro.test(MyResearch$ContinueAfterSemester)

#3. OtherProgrammersWillUse
describeBy(MyResearch$OtherProgrammersWillUse, MyResearch$ChoiceOther)
shapiro.test(MyResearch$OtherProgrammersWillUse)

#4. PostServeSchool
describeBy(MyResearch$PostServeSchool, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostServeSchool)

#5. PostServeLocal
describeBy(MyResearch$PostServeLocal, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostServeLocal)

#6. PostServeInternational
describeBy(MyResearch$PostServeInternational, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostServeInternational)

#7. PostAppreciateUsefulness
describeBy(MyResearch$PostAppreciateUsefulness, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostAppreciateUsefulness)

#8. PostBenefitSociety
describeBy(MyResearch$PostBenefitSociety, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostBenefitSociety)

#9. PostWantedToHelpPeople
describeBy(MyResearch$PostWantedToHelpPeople, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostWantedToHelpPeople)

#10. PostInspireSkillsHelpOthers
describeBy(MyResearch$PostInspireSkillsHelpOthers, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostInspireSkillsHelpOthers)

#11. PostDoMyBestHelpOthers
describeBy(MyResearch$PostDoMyBestHelpOthers, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostDoMyBestHelpOthers)

#12. PostHelpDoMyBest
describeBy(MyResearch$PostHelpDoMyBest, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostHelpDoMyBest)

#13. PostContinueContributingFOSS
describeBy(MyResearch$PostContinueContributingFOSS, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostContinueContributingFOSS)

#14. PostPlanAndDevelop
describeBy(MyResearch$PostPlanAndDevelop, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostPlanAndDevelop)

#15. PostListSteps
describeBy(MyResearch$PostListSteps, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostListSteps)

#16. PostUseProcess
describeBy(MyResearch$PostUseProcess, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostUseProcess)

#17. PostParticipateFOSS
describeBy(MyResearch$PostParticipateFOSS, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostParticipateFOSS)

#18. PostConfidenceDiversity
describeBy(MyResearch$PostConfidenceDiversity, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostConfidenceDiversity)

#19. PostImpactComplexity
describeBy(MyResearch$PostImpactComplexity, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostImpactComplexity)

#20. PostImpactSize
describeBy(MyResearch$PostImpactSize, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostImpactSize)

#21. PostMaintainFOSS
describeBy(MyResearch$PostMaintainFOSS, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostMaintainFOSS)

#22. PostDescribeDrawbackBenefits
describeBy(MyResearch$PostDescribeDrawbackBenefits, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostDescribeDrawbackBenefits)

#23. PostDescribeToolTechniques
describeBy(MyResearch$PostDescribeToolTechniques, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostDescribeToolTechniques)

#24. PostTeamInteractions
describeBy(MyResearch$PostTeamInteractions, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostTeamInteractions)

#25. PostBehaveProfessional
describeBy(MyResearch$PostBehaveProfessional, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostBehaveProfessional)

#26. PostConfidentialWorkProfessionals
describeBy(MyResearch$PostConfidentialWorkProfessionals, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostConfidentialWorkProfessionals)

#27. PostExcitedWorkProfessionals
describeBy(MyResearch$PostExcitedWorkProfessionals, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostExcitedWorkProfessionals)
