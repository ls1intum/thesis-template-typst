#import "thesis_template.typ": *
#import "common/cover.typ": *
#import "common/titlepage.typ": *
#import "thesis_typ/disclaimer.typ": *
#import "thesis_typ/acknowledgement.typ": *
#import "thesis_typ/abstract_en.typ": *
#import "thesis_typ/abstract_de.typ": *
#import "common/metadata.typ": *


#cover(
  title: titleEnglish,
  degree: degree,
  program: program,
  author: author,
)

#titlepage(
  title: titleEnglish,
  titleGerman: titleGerman,
  degree: degree,
  program: program,
  supervisor: supervisor,
  advisors: advisors,
  author: author,
  startDate: startDate,
  submissionDate: submissionDate
)

#disclaimer(
  title: titleEnglish,
  degree: degree,
  author: author,
  submissionDate: submissionDate
)

#acknowledgement()

#abstract_en()

#abstract_de()

#show: project.with(
  title: titleEnglish,
  titleGerman: titleGerman,
  degree: degree,
  program: program,
  supervisor: supervisor,
  advisors: advisors,
  author: author,
  startDate: startDate,
  submissionDate: submissionDate
)

= Introduction

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Introduce the topic of your thesis, e.g. with a little historical overview.
]

Artemis is a teaching platform that allows instructors and tutors to publish exercises to students, e.g., programming exercises.
Students create solutions by iteratively applying techniques of version control and continuous integration
#cite(<krusche2018artemis>).
Artemis not only supports programming exercises, but modeling-, quiz-, text-, and file upload exercises, as well as, an exam mode.
The exercises help students learn the teaching material hands-on and keep them involved in the lecture.
Interactive learning is a teaching philosophy, where students are at the center of a repeated cycle.
In one iteration, the students follow five steps: Theory, example, practice, feedback, and reflection
#cite(<krusche2021IL>).

Mobile applications enable students to practice interactive learning, alongside laptops and tablets
#cite(<krusche2018artemis>).
Until recently, Artemis revolved around the Artemis application, namely a server program and a web client.
The Artemis project gained two native mobile applications, one Android client and one iOS client
#footnote[https://github.com/ls1intum/Artemis/blob/develop/docs/user/mobile-applications.rst].
The mobile applications do not support the same features and they do not support all the web client's features.

== Problem

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe the problem that you like to address in your thesis to show the importance of your work. Focus on the negative symptoms of the currently available solution.
]

Several university courses, where Bachelor's and Master's students enroll alike, use Artemis
#cite(<krusche2021IL>).
Hence, the development of Artemis must take into account learners who are novice or advanced users of learning management systems.
The Artemis client's usability might deter novice users from using it, if it is unsatisfactory.
Similarly, advanced users might not want to use it either, if they cannot rely on the Artemis client to do common tasks, i.e., participating in exercises.
We discuss the problems of participation and usability in the following subsections.

== Participation

In its current state, the iOS application enables users to view their courses, communicate with peers, and receive notifications.
However, it is lacking the functionality to participate in any exercises.
The iOS application does not support participating in "programming, text-, quiz-, file upload-, [and] modeling exercises"
#cite(<andabaka2023app>).
As a consequence, users need to navigate to the same exercise with a suitable client to work on it,
if they receive the corresponding notification on their smartphone. 
At best, they do not need to switch to another device and open Artemis in the browser on their smartphone,
but the usability depends on the exercise's type.
Quiz and modeling exercises are more difficult to complete on a small screen because of drag-and-drop.
At worst, they need to switch to a device with a larger screen and the appropriate input methods, e.g., a laptop.
Users need to find the exercise that they have received a notification for and complete it on the second device.

The need to use multiple clients and devices makes the task of participating in exercises more complex.
The ability to complete a task in the same environment, where the user receives a notification, a single device and a single client, makes the task simpler.

== Usability

The Artemis web client adapts its layout for smartphone screen sizes in some view components, but not all.
For instance, the design of the modeling editor and drag-and-drop quiz questions demands a keyboard and mouse
#cite(<ortel2023app>).
So far, the iOS application enables navigating exercises, lectures, and messages in a layout that is more suitable for smartphone screens.
However, the iOS application lacks user satisfaction.
Satisfaction is one component of Nielsen's
#cite(<nielsen1993UE>)
definition of usability.
@messages shows that comparable functionality, i.e., that of messaging, is more satisfactory in other iOS applications.

@exercises shows that the same functionality's layout appears different in the iOS application from the web client, even if the web client adapts to smartphone screen sizes.
These dissimilarities put a burden on the user of both the iOS application and the web client to navigate the same content but with two different presentations.

#figure(
  stack(
    dir: ltr,
    spacing: 1em,
    image("figures/proposal/messages_artemis.jpg", height: 60%),
    image("figures/proposal/messages_slack.jpg", height: 60%)
  ),
  caption: [
    The left screenshot shows the Messages tab in the Artemis iOS application.
    The right screenshot shows the Home tab in the Slack iOS application.
    Slack's layout appears more visually refined than that of Artemis.
  ]
) <messages>

#figure(
  stack(
    dir: ltr,
    spacing: 1em,
    image("figures/proposal/exercises_native_a.jpg", height: 40%),
    image("figures/proposal/exercises_native_b.jpg", height: 40%),
    image("figures/proposal/exercises_web.png", height: 40%)
  ),
  caption: [
    The left screenshot shows the list of groups of exercises with an associated date.
    The middle screenshot shows the list of a course's exercises in the iOS application.
    The right screenshot shows the list of a course's exercises in the web client.
    The layout in the iOS application is different from the web client.
  ]
) <exercises>

== Motivation

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Motivate scientifically why solving this problem is necessary. What kind of benefits do we have by solving the problem?
]

About 94% of young persons own and use a smartphone, as of 2021
#footnote[https://de.statista.com/statistik/daten/studie/459963/umfrage/anteil-der-smartphone-nutzer-in-deutschland-nach-altersgruppe/].
On the other hand, the young persons' share that owns a PC or laptop is, at about three quarters, lower, as of 2022
#footnote[https://de.statista.com/statistik/daten/studie/29432/umfrage/anteil-der-jugendlichen-der-einen-computer-oder-laptop-besitzt/].
Therefore, we reckon that almost every student has a smartphone available during the lecture and one-quarter of students would need to rely on a mobile operating system, such as Android or iOS/iPadOS, to solve an exercise during a lecture.
Although nearly every student uses their smartphone every day, technical barriers may limit smartphone usage for academic purposes.
Still, students' willingness suggests that there is more potential to participate in an academic context using a smartphone
#cite(<al2018smartphone>).
Consequently, the Artemis iOS application can enable more students to participate in an interactive lecture environment, if it provides the necessary functionality.

Students learn meaningfully when they manage the teaching material consciously
#cite(<moreno2007interactive>),
e.g., they integrate new information within exercises.
However, humans can only bear so much cognitive load.
Students might exceed their processing capacity when learning in an interactive environment
#cite(<moreno2007interactive>).
Artemis makes participating in exercises more streamlined through one system.
However, Artemis requires users to maneuver multiple clients, i.e., receiving notifications through the iOS application and completing an exercise in the web client.
Handling multiple clients might strain the users of Artemis.

Furthermore, mobile learning applications can bring measurable benefits to learners due to their ability to blend into users' daily lives.
One such example is Duolingo, the number one free app on the iOS App Store in the Education category, as of 2023
#footnote[https://apps.apple.com/us/app/duolingo-language-lessons/id570060128].
Research at Duolingo shows that an intelligent algorithm to send timely notifications has a positive impact on their users' retention
#cite(<yancey2020sleeping>).
Similarly, the Artemis iOS client's further development to improve usability and extend the functionality should have a positive impact on students.

== Objectives

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe the research goals and/or research questions and how you address them by summarizing what you want to achieve in your thesis, e.g. developing a system and then evaluating it.
]

This thesis aims to evolve the Artemis iOS application in two areas.
We discuss the topics of evolving the communication feature and enabling participation in exercises in the subsections below.

=== Evolve the Communication Feature

We iterate the communication feature's user interface to provide a more satisfactory experience for students.
The user interface's appearance is only one of several difficulties in the communication feature.
We cannot assume that all students only post constructive and friendly messages to lecture-, exercise-, or private channels.
We add a reporting mechanism to the iOS application and the Artemis server.
Furthermore, the App Store Review Guidelines determine: "A mechanism to report offensive content and timely responses to concerns"
#footnote[https://developer.apple.com/app-store/review/guidelines/#user-generated-content]
must exist in the app anyway.

Moreover, users can enable notifications for the communication feature.
That is, this setting enables notifications for every lecture or no lecture.
The option to mute notifications for one lecture independent of the other lectures does not exist.
We add a mechanism to set notification settings for communication channels in a more granular way.
//The communication feature's sound state allows us to recommend the iOS application to the web client's users if they are visiting it on a capable device.

=== Enable Participation in Exercises

We enable participating in exercises through the iOS application.
Quiz exercises, text exercises, and modeling exercises require new user interface components, which we create leveraging the native components of iOS.

SwiftUI's TextEditor lets users create input for text exercises
#footnote[https://developer.apple.com/documentation/swiftui/texteditor].
We use SwiftUI's drag-and-drop capabilities for filling out quiz exercises
#footnote[https://developer.apple.com/documentation/swiftui/drag-and-drop].

The editor for modeling exercises poses the biggest challenge.
The Themis app for Artemis is incorporating rendering UML diagrams for assessment by a tutor
#footnote[https://github.com/ls1intum/Themis/pull/163].
We do not plan to repeat the Themis team's development efforts but work with them to enable viewing diagrams in the iOS application.
Therefore, working on modeling exercises through the iOS application is not in the scope of this thesis.

The development will affect the server and client components as shown in @participation.
Fortunately, the existing implementations for the Android application and web client will give guidance on how the functionality will manifest itself in the iOS application.

#figure(
  image("figures/export/deployment_diagram.jpg"),
  caption: [
    The diagram depicts the deployment of an Artemis server instance and clients for the web, iOS, and Android.
    The exercise services communicate via the HTTPS protocol.
  ]
) <participation>

== Outline
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe the outline of your thesis
]

= Background
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe each proven technology / concept shortly that is important to understand your thesis. Point out why it is interesting for your thesis. Make sure to incorporate references to important literature here.
]

== e.g. User Feedback
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section would summarize the concept User Feedback using definitions, historical overviews and pointing out the most important aspects of User Feedback.
]

== e.g. Representational State Transfer
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section would summarize the architectural style Representational State Transfer (REST) using definitions, historical overviews and pointing out the most important aspects of the architecture.
]

== e.g. Scrum
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section would summarize the agile method Scrum using definitions, historical overviews and pointing out the most important aspects of Scrum.
]

= Related Work
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe related work regarding your topic and emphasize your (scientific) contribution in contrast to existing approaches / concepts / workflows. Related work is usually current research by others and you defend yourself against the statement: “Why is your thesis relevant? The problem was al- ready solved by XYZ.” If you have multiple related works, use subsections to separate them.
]

= Requirements Analysis
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This chapter follows the Requirements Analysis Document Template in <bruegge2004object>. Important: Make sure that the whole chapter is independent of the chosen technology and development platform. The idea is that you illustrate concepts, taxonomies and relationships of the application domain independent of the solution domain! Cite <bruegge2004object> several times in this chapter.

]

== Overview
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Provide a short overview about the purpose, scope, objectives and success criteria of the system that you like to develop.
]

== Current System
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section is only required if the proposed system (i.e. the system that you develop in the thesis) should replace an existing system.
]

== Proposed System
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: If you leave out the section “Current system”, you can rename this section into “Requirements”.
]

=== Functional Requirements
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: List and describe all functional requirements of your system. Also mention requirements that you were not able to realize. The short title should be in the form “verb objective”

  - FR1 Short Title: Short Description. 
  - FR2 Short Title: Short Description. 
  - FR3 Short Title: Short Description.
]

=== Nonfunctional Requirements
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: List and describe all nonfunctional requirements of your system. Also mention requirements that you were not able to realize. Categorize them using the FURPS+ model described in <bruegge2004object> without the category functionality that was already covered with the functional requirements.

  - NFR1 Category: Short Description. 
  - NFR2 Category: Short Description. 
  - NFR3 Category: Short Description.

]

== System Models
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section includes important system models for the requirements analysis.
]

=== Scenarios
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: If you do not distinguish between visionary and demo scenarios, you can remove the two subsubsections below and list all scenarios here.

  *Visionary Scenarios*

  Note: Describe 1-2 visionary scenario here, i.e. a scenario that would perfectly solve your problem, even if it might not be realizable. Use free text description.

  *Demo Scenarios*

  Note: Describe 1-2 demo scenario here, i.e. a scenario that you can implement and demonstrate until the end of your thesis. Use free text description.
]

=== Use Case Model
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This subsection should contain a UML Use Case Diagram including roles and their use cases. You can use colors to indicate priorities. Think about splitting the diagram into multiple ones if you have more than 10 use cases. *Important:* Make sure to describe the most important use cases using the use case table template (./tex/use-case-table.tex). Also describe the rationale of the use case model, i.e. why you modeled it like you show it in the diagram.

]

=== Analysis Object Model
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This subsection should contain a UML Class Diagram showing the most important objects, attributes, methods and relations of your application domain including taxonomies using specification inheritance (see <bruegge2004object>). Do not insert objects, attributes or methods of the solution domain. *Important:* Make sure to describe the analysis object model thoroughly in the text so that readers are able to understand the diagram. Also write about the rationale how and why you modeled the concepts like this.

]

=== Dynamic Model
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This subsection should contain dynamic UML diagrams. These can be a UML state diagrams, UML communication diagrams or UML activity diagrams.*Important:* Make sure to describe the diagram and its rationale in the text. *Do not use UML sequence diagrams.*
]

=== User Interface
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Show mockups of the user interface of the software you develop and their connections / transitions. You can also create a storyboard. *Important:* Describe the mockups and their rationale in the text.
]

= System Design
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This chapter follows the System Design Document Template in <bruegge2004object>. You describe in this chapter how you map the concepts of the application domain to the solution domain. Some sections are optional, if they do not apply to your problem. Cite <bruegge2004object> several times in this chapter.
]

== Overview
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Provide a brief overview of the software architecture and references to other chapters (e.g. requirements analysis), references to existing systems, constraints impacting the software architecture..
]

== Design Goals
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Derive design goals from your nonfunctional requirements, prioritize them (as they might conflict with each other) and describe the rationale of your prioritization. Any trade-offs between design goals (e.g., build vs. buy, memory space vs. response time), and the rationale behind the specific solution should be described in this section
]

== Subsytem Decomposition
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe the architecture of your system by decomposing it into subsys- tems and the services provided by each subsystem. Use UML class diagrams including packages / components for each subsystem.
]

== Hardware Software Mapping
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section describes how the subsystems are mapped onto existing hardware and software components. The description is accompanied by a UML deployment diagram. The existing components are often off-the-shelf components. If the components are distributed on different nodes, the network infrastructure and the protocols are also described.
]

== Persistent Data Management
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Optional section that describes how data is saved over the lifetime of the system and which data. Usually this is either done by saving data in structured files or in databases. If this is applicable for the thesis, describe the approach for persisting data here and show a UML class diagram how the entity objects are mapped to persistent storage. It contains a rationale of the selected storage scheme, file system or database, a description of the selected database and database administration issues.
]

== Access Control
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Optional section describing the access control and security issues based on the nonfunctional requirements in the requirements analysis. It also de- scribes the implementation of the access matrix based on capabilities or access control lists, the selection of authentication mechanisms and the use of en- cryption algorithms.
]

== Global Software Control
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Optional section describing the control flow of the system, in particular, whether a monolithic, event-driven control flow or concurrent processes have been selected, how requests are initiated and specific synchronization issues
]

== Boundry Conditions
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Optional section describing the use cases how to start up the separate components of the system, how to shut them down, and what to do if a component or the system fails.
]

= Case Study / Evaluation
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: If you did an evaluation / case study, describe it here.
]

== Design 
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe the design / methodology of the evaluation and why you did it like that. E.g. what kind of evaluation have you done (e.g. questionnaire, personal interviews, simulation, quantitative analysis of metrics, what kind of participants, what kind of questions, what was the procedure?
]

== Objectives
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Derive concrete objectives / hypotheses for this evaluation from the general ones in the introduction.
]

== Results
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Summarize the most interesting results of your evaluation (without interpretation). Additional results can be put into the appendix.
]

== Findings
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Interpret the results and conclude interesting findings
]

== Discussion
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Discuss the findings in more detail and also review possible disadvantages that you found
]

== Limitations
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe limitations and threats to validity of your evaluation, e.g. reliability, generalizability, selection bias, researcher bias
]

= Summary
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This chapter includes the status of your thesis, a conclusion and an outlook about future work.
]

== Status
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe honestly the achieved goals (e.g. the well implemented and tested use cases) and the open goals here. if you only have achieved goals, you did something wrong in your analysis.
]

=== Realized Goals
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Summarize the achieved goals by repeating the realized requirements or use cases stating how you realized them.
]

=== Open Goals
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Summarize the open goals by repeating the open requirements or use cases and explaining why you were not able to achieve them. Important: It might be suspicious, if you do not have open goals. This usually indicates that you did not thoroughly analyze your problems.
]

== Conclusion
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Recap shortly which problem you solved in your thesis and discuss your *contributions* here.
]

== Future Work
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Tell us the next steps (that you would do if you have more time). Be creative, visionary and open-minded here.
]