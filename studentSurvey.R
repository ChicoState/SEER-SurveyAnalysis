
# read.csv() reads csv file into the data frame that it creates called studentSurvey.
# Input: File path, header=TRUE specifies that data contains a header row and sep="," specifies that data #is separated by commas.
# Output: N/A
studentSurvey<-read.csv(file="C:/Study/693/CombinedSurvey.csv", header=T, sep=",")

# shapiro.test() takes numeeric vector as input, and performs Shapiro-Wilk Normality test.
# Input: desired column of dataframe.
# Output: w and p-value
shapiro.test(data.frame$desiredColumn)

#install.packages("psych")
library(psych)

#1. PreMobDevelopment: Interested in mobile development.
describeBy(studentSurvey$PreMobDevelopment, studentSurvey$Gender)
shapiro.test(studentSurvey$PreMobDevelopment)

#2. PreWebDevelopment: Interested in web development.
describeBy(studentSurvey$PreWebDevelopment, studentSurvey$Gender)
shapiro.test(studentSurvey$PreWebDevelopment)

#3. PreDevelopingTools: Interested in developing tools.
describeBy(studentSurvey$PreDevelopingTools, studentSurvey$Gender)
shapiro.test(studentSurvey$PreDevelopingTools)

#4. PreCommercialProduct: Interested in developing a commercial product.
describeBy(studentSurvey$PreCommercialProduct, studentSurvey$Gender)
shapiro.test(studentSurvey$PreCommercialProduct)

#5. PreServeSchool: Interested in serving a school.
describeBy(studentSurvey$PreServeSchool, studentSurvey$Gender)
shapiro.test(studentSurvey$PreServeSchool)

#6. PreServeLocal: Interested in serving a local community.
describeBy(studentSurvey$PreServeLocal, studentSurvey$Gender)
shapiro.test(studentSurvey$PreServeLocal)

#7. PreServeIntenational: Interested in serving a national/international communities.
describeBy(studentSurvey$PreServeIntenational, studentSurvey$Gender)
shapiro.test(studentSurvey$PreServeIntenational)

#8. PreMobDevExp: Confident and Experienced in Mobile Development.
describeBy(studentSurvey$PreMobDevExp, studentSurvey$Gender)
shapiro.test(studentSurvey$PreMobDevExp)

#9. PreWebDevExp: Confident and Experienced in Web Development.
describeBy(studentSurvey$PreWebDevExp, studentSurvey$Gender)
shapiro.test(studentSurvey$PreWebDevExp)

#10. PreEmbSystemsExp: Confident and Experienced in Desktop or Embedded Systems Development.
describeBy(studentSurvey$PreEmbSystemsExp, studentSurvey$Gender)
shapiro.test(studentSurvey$PreEmbSystemsExp)

#11. PreCSInnovate: Computer Science and Software Engineering are fields that further
#    innovate in science and technology.
describeBy(studentSurvey$PreCSInnovate, studentSurvey$Gender)
shapiro.test(studentSurvey$PreCSInnovate)

#12. PreCSHelpPeople: Computer Science and Software Engineering are fields that help people.
describeBy(studentSurvey$PreCSHelpPeople, studentSurvey$Gender)
shapiro.test(studentSurvey$PreCSHelpPeople)

#13. PreInterestUse: Project Prefernce motivated by product being used by many people.
describeBy(studentSurvey$PreInterestUse, studentSurvey$Gender)
shapiro.test(studentSurvey$PreInterestUse)

#14. PreInterestWellKnown: Project Prefernce motivated by product becoming well known to
#people.
describeBy(studentSurvey$PreInterestWellKnown, studentSurvey$Gender)
shapiro.test(studentSurvey$PreInterestWellKnown)

#15. Get total count of female and male
table(studentSurvey$Gender)

#16. Get total count of different project categories selected by students as their first choice.
table(studentSurvey$CategoryForFirstChoice)

# 17. Gender_MF: This new variable contains rows that don't have Male and Female values for gender.
studentSurvey$Gender_MF[studentSurvey$Gender %in% c("", "-", "Abstain")] <- NA
studentSurvey$Gender_MF<- droplevels(studentSurvey$Gender_MF)

#18. CategoryForFirstChoice: This variable contains project category based on student's first project preference.
studentSurvey$CategoryForFirstChoice[studentSurvey$FirstChoice%in% c("BossyUI")]<-"LFOSS"
studentSurvey$CategoryForFirstChoice[studentSurvey$FirstChoice%in% c("Top down hack and slash RPG", "TopJam", "Little League Stat Tracker", "Smart Laser Tag", "D&amp;D Character Creation and Party Maintenance", "Radio Station DJ", "GNOME Accessibility", "Ushahidi")]<-"ENTREPRENEURIAL"
studentSurvey$CategoryForFirstChoice[studentSurvey$FirstChoice%in% c("Release and Quality Management")]<-"INDUSTRY"
studentSurvey$CategoryForFirstChoice[studentSurvey$FirstChoice%in% c("Apache Spark", "KDevelop", "Mozilla", "RethinkDB", "Akka")]<-"FOSS"
studentSurvey$CategoryForFirstChoice[studentSurvey$FirstChoice%in% c("MouseTrap")]<-"HFOSS"








