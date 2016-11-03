
# read.csv() reads csv file into the data frame that it creates called studentSurvey.
# Input: File path, header=TRUE specifies that data contains a header row and sep="," specifies that data #is separated by commas.
# Output: N/A
studentSurvey<-read.csv(file="C:/Study/693/CombinedSurvey.csv", header=T, sep=",")

#install.packages("psych")
library(psych)

#1. PreMobDevelopment: Interested in mobile development.
describeBy(studentSurvey$PreMobDevelopment, studentSurvey$Gender)

#2. PreWebDevelopment: Interested in web development.
describeBy(studentSurvey$PreWebDevelopment, studentSurvey$Gender)

#3. PreDevelopingTools: Interested in developing tools.
describeBy(studentSurvey$PreDevelopingTools, studentSurvey$Gender)

#4. PreCommercialProduct: Interested in developing a commercial product.
describeBy(studentSurvey$PreCommercialProduct, studentSurvey$Gender)

#5. PreServeSchool: Interested in serving a school.
describeBy(studentSurvey$PreServeSchool, studentSurvey$Gender)

#6. PreServeLocal: Interested in serving a local community.
describeBy(studentSurvey$PreServeLocal, studentSurvey$Gender)

#7. PreServeIntenational: Interested in serving a national/international communities.
describeBy(studentSurvey$PreServeIntenational, studentSurvey$Gender)

#8. PreMobDevExp: Confident and Experienced in Mobile Development.
describeBy(studentSurvey$PreMobDevExp, studentSurvey$Gender)

#9. PreWebDevExp: Confident and Experienced in Web Development.
describeBy(studentSurvey$PreWebDevExp, studentSurvey$Gender)

#10. PreEmbSystemsExp: Confident and Experienced in Desktop or Embedded Systems Development.
describeBy(studentSurvey$PreEmbSystemsExp, studentSurvey$Gender)

#11. PreCSInnovate: Computer Science and Software Engineering are fields that further
#    innovate in science and technology.
describeBy(studentSurvey$PreCSInnovate, studentSurvey$Gender)

#12. PreCSHelpPeople: Computer Science and Software Engineering are fields that help people.
describeBy(studentSurvey$PreCSHelpPeople, studentSurvey$Gender)

#13. PreInterestUse: Project Prefernce motivated by product being used by many people.
describeBy(studentSurvey$PreInterestUse, studentSurvey$Gender)

#14. PreInterestWellKnown: Project Prefernce motivated by product becoming well known to
#people.
describeBy(studentSurvey$PreInterestWellKnown, studentSurvey$Gender)

#15. Get total count of female and male
table(studentSurvey$Gender)

#16. Get total count of different project categories selected by students as their first choice.
table(studentSurvey$CategoryForFirstChoice)








