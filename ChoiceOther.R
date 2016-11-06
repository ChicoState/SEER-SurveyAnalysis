
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
wilcox.test(HoursPerWeek ~ ChoiceOther, data=MyResearch)

#2. ContinueAfterSemester
describeBy(MyResearch$ContinueAfterSemester, MyResearch$ChoiceOther, na.rm = TRUE)
shapiro.test(MyResearch$ContinueAfterSemester)
wilcox.test(ContinueAfterSemester ~ ChoiceOther, data=MyResearch)

#3. OtherProgrammersWillUse
describeBy(MyResearch$OtherProgrammersWillUse, MyResearch$ChoiceOther)
shapiro.test(MyResearch$OtherProgrammersWillUse)
wilcox.test(OtherProgrammersWillUse ~ ChoiceOther, data=MyResearch)

#4. PostServeSchool
describeBy(MyResearch$PostServeSchool, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostServeSchool)
wilcox.test(PostServeSchool ~ ChoiceOther, data=MyResearch)

#5. PostServeLocal
describeBy(MyResearch$PostServeLocal, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostServeLocal)
wilcox.test(PostServeLocal ~ ChoiceOther, data=MyResearch)

#6. PostServeInternational
describeBy(MyResearch$PostServeInternational, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostServeInternational)
wilcox.test(PostServeInternational ~ ChoiceOther, data=MyResearch)

#7. PostAppreciateUsefulness
describeBy(MyResearch$PostAppreciateUsefulness, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostAppreciateUsefulness)
wilcox.test(PostAppreciateUsefulness ~ ChoiceOther, data=MyResearch)

#8. PostBenefitSociety
describeBy(MyResearch$PostBenefitSociety, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostBenefitSociety)
wilcox.test(PostBenefitSociety ~ ChoiceOther, data=MyResearch)

#9. PostWantedToHelpPeople
describeBy(MyResearch$PostWantedToHelpPeople, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostWantedToHelpPeople)
wilcox.test(PostWantedToHelpPeople ~ ChoiceOther, data=MyResearch)

#10. PostInspireSkillsHelpOthers
describeBy(MyResearch$PostInspireSkillsHelpOthers, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostInspireSkillsHelpOthers)
wilcox.test(PostInspireSkillsHelpOthers ~ ChoiceOther, data=MyResearch)

#11. PostDoMyBestHelpOthers
describeBy(MyResearch$PostDoMyBestHelpOthers, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostDoMyBestHelpOthers)
wilcox.test(PostDoMyBestHelpOthers ~ ChoiceOther, data=MyResearch)

#12. PostHelpDoMyBest
describeBy(MyResearch$PostHelpDoMyBest, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostHelpDoMyBest)
wilcox.test(PostHelpDoMyBest ~ ChoiceOther, data=MyResearch)

#13. PostContinueContributingFOSS
describeBy(MyResearch$PostContinueContributingFOSS, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostContinueContributingFOSS)
wilcox.test(PostContinueContributingFOSS ~ ChoiceOther, data=MyResearch)

#14. PostPlanAndDevelop
describeBy(MyResearch$PostPlanAndDevelop, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostPlanAndDevelop)
wilcox.test(PostPlanAndDevelop ~ ChoiceOther, data=MyResearch)

#15. PostListSteps
describeBy(MyResearch$PostListSteps, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostListSteps)
wilcox.test(PostListSteps ~ ChoiceOther, data=MyResearch)

#16. PostUseProcess
describeBy(MyResearch$PostUseProcess, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostUseProcess)
wilcox.test(PostUseProcess ~ ChoiceOther, data=MyResearch)

#17. PostParticipateFOSS
describeBy(MyResearch$PostParticipateFOSS, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostParticipateFOSS)
wilcox.test(PostParticipateFOSS ~ ChoiceOther, data=MyResearch)

#18. PostConfidenceDiversity
describeBy(MyResearch$PostConfidenceDiversity, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostConfidenceDiversity)
wilcox.test(PostConfidenceDiversity ~ ChoiceOther, data=MyResearch)

#19. PostImpactComplexity
describeBy(MyResearch$PostImpactComplexity, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostImpactComplexity)
wilcox.test(PostImpactComplexity ~ ChoiceOther, data=MyResearch)

#20. PostImpactSize
describeBy(MyResearch$PostImpactSize, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostImpactSize)
wilcox.test(PostImpactSize ~ ChoiceOther, data=MyResearch)

#21. PostMaintainFOSS
describeBy(MyResearch$PostMaintainFOSS, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostMaintainFOSS)
wilcox.test(PostMaintainFOSS ~ ChoiceOther, data=MyResearch)

#22. PostDescribeDrawbackBenefits
describeBy(MyResearch$PostDescribeDrawbackBenefits, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostDescribeDrawbackBenefits)
wilcox.test(PostDescribeDrawbackBenefits ~ ChoiceOther, data=MyResearch)

#23. PostDescribeToolTechniques
describeBy(MyResearch$PostDescribeToolTechniques, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostDescribeToolTechniques)
wilcox.test(PostDescribeToolTechniques ~ ChoiceOther, data=MyResearch)

#24. PostTeamInteractions
describeBy(MyResearch$PostTeamInteractions, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostTeamInteractions)
wilcox.test(PostTeamInteractions ~ ChoiceOther, data=MyResearch)

#25. PostBehaveProfessional
describeBy(MyResearch$PostBehaveProfessional, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostBehaveProfessional)
wilcox.test(PostBehaveProfessional ~ ChoiceOther, data=MyResearch)

#26. PostConfidentialWorkProfessionals
describeBy(MyResearch$PostConfidentialWorkProfessionals, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostConfidentialWorkProfessionals)
wilcox.test(PostConfidentialWorkProfessionals ~ ChoiceOther, data=MyResearch)

#27. PostExcitedWorkProfessionals
describeBy(MyResearch$PostExcitedWorkProfessionals, MyResearch$ChoiceOther)
shapiro.test(MyResearch$PostExcitedWorkProfessionals)
wilcox.test(PostExcitedWorkProfessionals ~ ChoiceOther, data=MyResearch)
