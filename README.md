# Software Engineering Education Research
## Survey Analysis

The **Combined Survey.csv** cotains the columns from the student survey collected for the Software Engineering class from undergraduates and graduate students. It consists of pre-semester and post-semster data for the classes CSCI430(undergraduate) and CSCI630(graduate). The column with the prefix Pre consists of pre-semester data whereas the column with prefix Post consists of post-semester data. 

The following is the list of all the column names and the explanation for it:

* **Semester:** The semester and Year of the survey data. Eg. FALL14

* **Class:** The class for the survey data. Eg. CSCI430

* **AgeOver18:** States whether the age is over 18 or not. Eg. TRUE or FALSE

* **Age:** The Age of the student. Eg. 22

* **Consent:** The students consent to use the survey response for research purposes. Eg. TRUE or FALSE

* **Name:** The name of the student.

* **Category:** The category under which the student software engineering project lies. Eg. LFOSS

* **Section:** The activity section the student is enrolled. Eg. 1:00 - 1:50

* **(All)SectionAbleToAttend:** The activity section(s) student is able to attend. 

### Pre-semester data

* **PreProgrammingAbility:** Programming Ability of the student on a scale of 1-5 where 1 is beginner and 5 is advanced.

* **PreProfessionalExpericence:** Months of co-op, internship or other professional experience. Eg. 7

* **PreUsefulnessOfComputing:** Appreciation of usefulness of computing by working on the project on a scale of 1-5.

* **PreBenefitSociety:** Working on the project helps to benefit the society.

* **PreHelpPeople:** Working on the project helps people.

* **PreHelpOthers:** Working on the project helps others.

* **PreMotivate:** Working on the project motivates to help people.

* **PreDiverseCommunity:** Working on the project helps to participate in diverse community of developers.

* **PreIncreaseInterest:** Working on the project helps to increase the students interest in computing.

* **PreConfidenceComputing:** Working on the project helps to increase the students confidence in computing.

* **PreComfortableComputing:** Working on the project helps the students to be comfortable with computing.

* **PrePriorSoftEnggProject:** Participation in a prior software engineering project.

* **PrePlanAndDevelop:** Comfortable to Plan and Develop real-world software engineering project.

* **PreListSteps:** Listing the steps for the project.

* **PreUseProcess:** Using a process for developing software engineering project.

* **PreConfidenceDiversity:** Gain confidence collaborating with professionals from a variety of location and culture.

* **PreImpactComplexity:** Describing the complexity on the approaches used for software development.

* **PreImpactSize:** Describing the impact of project size on the approaches used for software development.

* **PreMaintainProject:** Confidence in maintaining project.

* **PreDescribeDrawbackBenefits:** Describing the drawback and benefits of the software.

* **PreDescribeToolTechniques:** Using all the tools and techniques required for the project.

* **PreTeamInteractions:** Participation in software engineering development teams interaction.

* **PreBehaveProfessional:** Participation is project helps in profeesional behavior.

* **PreAutomatedSoftwareTests:** Writing automated software tests.

* **PreDevOps:** Setting up and managing development operation tools.

* **PreUseDesignPatterns:** Identifying and using the software design patterns appropriately.

* **PreStrengthAndWeakness:** Evaluating the design of large software projects for strength and weakness.

* **PreConfidentWorkProfessional:** Confident about working with work professionals.

* **PreExcitedWorkProfessional:** Excited about working with work professionals.

* **PreReinforceMajor:** Participation in the project helps to reinforce the decision of making computing the major.

* **PreQuestionMajor:** Participation in project helps to question the decision of making computing the major.

* **PreConsiderFurtherCourses:** Participation in project helps to consider taking further computing courses.

* **PreSatisfactionProject:** Expect to be satisfied with the learning in the project.

* **PreExpectLearningProject:** Expect to learn in the project.

* **PreMobDevelopment:** Interested in mobile development.

* **PreWebDevelopment:** Interested in web development.

* **PreDevelopingTools:** Interested in developing tools.

* **PreCommercialProduct:** Interested in developing a commercial product.

* **PreServeSchool:** Interested in serving a school.

* **PreServeLocal:** Interested in serving a local community.

* **PreServeInternational:** Interested in serving a national/international communities.

* **PreMobDevExp:** Confident and Experienced in Mobile Development.

* **PreWebDevExp:** Confident and Experienced in Web Development.

* **PreEmbSystemsExp:** Confident and Experienced in Desktop or Embedded Systems Development.

* **PreCSInnovate:** Computer Science and Software Engineering are fields that further innovate in science and technology.

* **PreCSHelpPeople:** Computer Science and Software Engineering are fields that help people.

* **PreCSPositiveImpact:** Computer Science and Software Engineering are fields that has made a positive impact on the world.

* **PreInterestUse:** Project Preference motivated by product being used by many people. 

* **PreKnownLanguage:** Project Preference motivated by familiar technologies.

* **PreLearnLanguage:** Project Preference motivated by learning new technologies.

* **PreMakeMoney:** Project Preference motivated by potential of product making money.

* **PreProfessionalNetworking:** Project Preference motivated by opportunities of professional/career networking.

* **PreIntersestWellKnown:** Project Preference motivated by product becoming well known to people.

* **PreProductProblem:** Project Preference motivated by the problem the product adresses.

* **PreMotivationComments:** Comments on what make a project appealing.

* **FirstChoice:** Project that is first choice. Eg. Akka

* **SecondChoice:** Project that is second choice. Eg. FOSS

* **ThirdChoice:** Project that is third choice. Eg. MouseTrap

* **PreChoiceComments:** Additional Comments on provided choices.

### Post-semester data

* **PostProject:** The project(name) on which the student worked.

* **Race/Origin:** The race/origin of the student.

* **Gender:** The gender of the student.

* **FirstMajor:** The first major of the student. Eg. Computer Science

* **SecondMajor:** The second major(if any) of the student.

* **ContinueMajor:** The students plan to continue the major. Eg. Yes

* **CommentsChangeMajor:** Comments if the student wants to change major.

* **PostProgrammingAbility:** Programming Ability of the student on a scale of 1-5 where 1 is beginner and 5 is advanced.

* **HoursPerWeek:** Estimate of hours per week spent on the project, outside lecture and lab. Eg. 10

* **ContinueAfterSemester:** Plan on continuing to contribute to my team project after this semester is over. Eg. True/False

* **ClientGaveFeedback:** Team project had a specific customer/client who gave us feedback on what we built. Eg. True/False

* **PostTechnicalLeader:**  My team project had a specific technical leaders (other than the instructor or students in class) who advised the development team. E.g True/False

* **MentorGuidance:** Team project had mentor(s) (other than the instructor or students in class) to help provide guidance or 
	              review our work.

* **OtherProgrammersWillUse:** After the end of the semester, I expect other programmers (besides my team and instructor) to use 
 			       my project'scode.

* **PostCommercialProduct:** After the end of the semester, I expect my project to become a commercial (for sale) product.

* **PostServeSchool:** I believe my project can help serve my school (and/or affiliated groups).

* **PostServeLocal:** I believe my project can help serve the local community.

* **PostServeInternational:** I believe my project can help serve national or international communities.

* **PostAppreciateUsefulness:** Working on an FOSS project gives me a better appreciation for the usefulness of computing.

* **PostBenefitSociety:** I have a greater awareness of the potential for computing to benefit society due to working on an FOSS project.

* **PostWantedToHelpPeople:** I wanted to work on an FOSS project because I want to help the people who would benefit from the software.

* **PostInspireSkillsHelpOthers:** Participating in a FOSS project inspires me to use my computing skills to help others.

* **PostDoMyBestHelpOthers:** Knowing that my project will help people motivates me to do my best on the FOSS project.

* **PostHelpDoMyBest:** Working with a FOSS community to develop a project has increased my interest in computing.

* **PostDiverseCommunity:** I enjoyed working on a FOSS project because it allowed me participate in a diverse community 
	                    of FOSS developers.

* **PostIncreaseInterestComputing:** Working on an FOSS project has increased my interest in computing.

* **PostIncreaseConfidenceComputing:** Working on an FOSS project increased my confidence in my computing ability.

* **PostIncreaseComfortComputing:** Participating in a FOSS project made me more comfortable with computing.

* **PostWelcomingHelpful:** People that I interacted with in the FOSS project were welcoming and helpful.

* **PostContinueContributingFOSS:** I plan to continue contributing to a FOSS project after this course has ended.

* **PostPlanAndDevelop:** I am comfortable that I could participate in the planning and development of a real­world software project.

* **PostListSteps:** I can list the steps in the software process we used in the FOSS project.

* **PostUseProcess:** I can use a software process to develop an FOSS project

* **PostParticipateFOSS:** I am sure that I can actively  participate in an FOSS community to develop a software project.

* **PostConfidenceDiversity:** I have gained some confidence in collaborating with professionals from a variety of locations and cultures.

* **PostImpactComplexity:** I can describe the impact of project complexity on the approaches used to develop software. 

* **PostImpactSize:** I can describe the impact of project size on the approaches used to develop software. 

* **PostMaintainFOSS:** I am confident that I can maintain an FOSS project.

* **PostDescribeDrawbackBenefits:** I can describe the drawbacks and benefits of FOSS to society.

* **PostDescribeToolTechniques:** I can use all tools and techniques employed in my FOSS project.

* **PostTeamInteractions:** I can participate in a FOSS development team’ s interactions.

* **PostBehaveProfessional:** Participation in a FOSS project has improved my understanding of how to behave like a computing professional.

* **PostSoftwareTests:** I can write automated software tests to verify that the software reliably behaves as was intended. Eg. 1-5

* **PostDevOps:** I can set up and manage a development environment and development operations (DevOps) tools for collaborating on a software development team. Eg 1-5

* **PostUseDesignPattern:** I can identify and use software design patterns appropriately. E.g 1-5

* **PostAnalyzeDesign:** I can analyze and evaluate the design of large software projects for strengths and weaknesses. E.g 1-5

* **PostConfidentialWorkProfessionals:** I am confident about working with computing professionals.

* **PostExcitedWorkProfessionals:** I am excited about working with computing professionals.

* **PostConsiderMajor:** Participation in a FOSS project has caused me to consider computing as a major or minor.

* **PostReinforceMajor:** Participation in a FOSS project has positively reinforced my decision to make computing my major.

* **PostQuestionMajor:** Participating in an HFOSS project has caused me to question my decision to make computing my major.

* **PostConsiderFurtherCourses:** Participation in a FOSS project has caused me to consider taking further computing courses.

* **PostHighlyRevelant:** The subject matter of this FOSS project is highly relevant to my future career plans.

* **PostExperiencedSubjectMajor:** I have a high level of experience in the FOSS subject matter.

* **PostSatisfactionProject:** Overall, I am very satisfied with my learning in the FOSS project.

* **PostPredominantContact:** My predominant contact with my mentor/customer was. Eg. In person.

* **Communicated:** I directly communicated with the customer or mentor. Eg. Each week.

* **PostClientFaceToFace:** How often did you personally communicate with your mentor/client FACE-TO-FACE? E.g 1-5

* **PostClientSynchronous:** How often did you personally communicate with your mentor/client REMOTELY AT THE SAME TIME (e.g. phone, video calling, instant messaging concurrently, etc)

* **PostClientAsynchronous:** How often did you personally communicate with your mentor/client REMOTELY AT DIFFERENT TIMES (e.g. email, message boards, instant messaging at different times, etc

* **PostPromptReply:** My mentor/customer was prompt in replying to me.

* **PostCommunicationHelpful:** My mentor/customer's communication was helpful to my progress on the software development project.

* **PostClientTechnical:** My client(s) (and other members of the team, outside of the class) provided feedback with technical expertise. E.g 1-5

* **PostClientBusiness:** My client(s) (and other members of the team, outside of the class) provided feedback with business expertise. E.g 1-5 

* **PostAccountable:** My mentor/customer held me accountable to completing my work well and on time.

* **PostNetworking:** Interacting with my mentor/customer was valuable for my professional networking.

* **PostHelpfulClients:** Explain what was most helpful about working with your client(s) (and other members of the team, outside of the class). E.g Free response

* **PostDifficultClients:** Explain what was most difficult about working with your client(s) (and other members of the team, outside of the class) E.g Free response

* **PostCSInnovate:** I believe Computer Science and Software Engineering are fields that further innovation in science and technology.

* **PostCSHelpPeople:** Computer Science and Software Engineering are fields that help people.

* **PostCSPositiveImpact:** Computer Science and Software Engineering are fields that has made a positive impact on the world.

* **ProfessionalExperience:** How many months, if any , of co-­op, internship or other professional experience you have had?

* **PostCommentInvolvement:** Describe the type of involvement you had with the FOSS project

* **PostCommentInteraction:** Describe the interactions you had with the FOSS community

* **PostCommentParticipating:** Describe any other aspect of participating in an FOSS project that you would like us to know about.











