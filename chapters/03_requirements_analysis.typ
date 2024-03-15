= Requirements Analysis
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This chapter follows the Requirements Analysis Document Template in <bruegge2004object>. Important: Make sure that the whole chapter is independent of the chosen technology and development platform. The idea is that you illustrate concepts, taxonomies and relationships of the application domain independent of the solution domain! Cite <bruegge2004object> several times in this chapter.

]

This chapter documents the results of requirements elicitation according to the Requirements Analysis Document template
#cite(<bruegge2004OOSE>). // 152
We describe the current system in 'Current System', which we plan to replace with the 'Proposed System'.

== Overview
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Provide a short overview about the purpose, scope, objectives and success criteria of the system that you like to develop.
]

The current system is mostly a "Reader" app
#footnote("https://developer.apple.com/app-store/review/guidelines/#reader-apps").
The iOS app provides the capability to write messages, too.
We plan to extend the participation features of the app.
Scope are exercises and the communication feature.

The objectives of this thesis are to:

- provide students participate in exercise through the iOS app.
- provide students with the infrastructure to communicate through the iOS app and navigate to interesting content.
- provide instructors with the infrastructure to efficiently let students sign their attendance at an exam.

We deem the proposed system successful if users are satisfied with our improvements to usability.

== Current System
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section is only required if the proposed system (i.e. the system that you develop in the thesis) should replace an existing system.
]

Alternatives:

- describe the current system and state of development from a user perspective in the first part. Describe the software architecture for the communication feature of Artemis in the second part.
- only describe the _notificaton_ system of Artemis, 'which we change and extend.'

=== Artemis - Learning

We describe the current system in terms of a storyboard,
i.e., a sequence of screens in the order,
in which a user can navigate the application.

A user can see their courses if they are logged in.
A user can navigate to a single course and see its exercises, lectures, and messages.
Messages are only visible if the instructor enabled it for the course.

In the messages tab, a user can see conversations for course-wide channels, exercises, lectures, exams, group chats, and direct messages.
They can navigate to a thread, i.e., a branch of messages, which has its root in one message in the conversation.

A user can manipulate courses, conversations, messages, and threads.

=== Artemis - Exam Supervision

An instructor can see (relevant) exams.
They can check all students, who are enrolled in an exam.

== Proposed System
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: If you leave out the section “Current system”, you can rename this section into “Requirements”.
]

=== Artemis - Learning

=== Artemis - Exam Supervision

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
