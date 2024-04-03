= Requirements Analysis <ra>

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This chapter follows the Requirements Analysis Document Template in <bruegge2004object>. Important: Make sure that the whole chapter is independent of the chosen technology and development platform. The idea is that you illustrate concepts, taxonomies and relationships of the application domain independent of the solution domain! Cite <bruegge2004object> several times in this chapter.

]

This chapter documents the results of requirements elicitation according to the _Requirements Analysis Document_ template
#cite(<bruegge2004OOSE>). // 152
We describe the current system in the section @ra-current-system, which we will augment with the proposed system in the section @ra-proposed-system.

== Overview <ra-overview>

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Provide a short overview about the purpose, scope, objectives and success criteria of the system that you like to develop.
]

We consider the current system a "Free Stand-alone App"
#footnote("https://developer.apple.com/app-store/review/guidelines/#free-stand-alone-apps").
The iOS app provides the capability to write messages, too.
We plan to extend the participation features of the app.
Scope are exercises and the communication feature.

The objectives of this thesis are to:

- provide students participate in exercise through the iOS app.
- provide students with the infrastructure to communicate through the iOS app and navigate to interesting content.
- provide instructors with the infrastructure to efficiently let students sign their attendance at an exam.

We deem the proposed system successful if users are satisfied with our improvements to usability.

== Current System <ra-current-system>

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


The Artemis - Learning app is a companion to Artemis on the web, through which a user can view the details of their courses.
A user can see their courses if they are logged in.
If a user registers for a course, they can view the course's exercises, lectures, and messages
#cite(<andabaka2023app>).
A user can submit attempts for modeling exercises
#cite(<goertzen2024uml>),
but cannot submit attempt for other kinds of exercises, i.e., programming, quiz, text, and file upload exercises.
Messages are only visible if the instructor enabled it for the course.
In the messages tab, a user can see conversations for course-wide channels, exercises, lectures, exams, group chats, and direct messages.
They can navigate to a thread, i.e., a branch of messages, which has its root in one message in the conversation.

// A user can view their course details, e.g., exercises, lectures, and communications through the Artemis - Learning app.
// A user can manipulate courses, conversations, messages, and threads.
// A user can navigate to a single course and see its exercises, lectures, and messages.

=== Storyboard

We describe the current system in terms of a storyboard, i.e., a sequence of screens in the order, in which a user can navigate the application.

== Proposed System <ra-proposed-system>

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

#set enum(numbering: n => [FR #n])
+ Configure a Code of Conduct: An instructor can adapt a template Code of Conduct at the creation of a course and edit it later.
+ Accept Code of Conduct: A user can use the communication feature if they accept the Code of Conduct
+ Report misconduct: A user can report misconduct to a course's responsible contact.
+ Mute individual conversations: A user can mute a conversation independent of other conversations.
+ Mention an exercise: A user can mention an exercise in a message.
+ Mention a lecture: A user can mention a lecture in a message.
+ Mention a conversation member: A user can mention a member of the conversation in a message.
+ Mention a conversation: A user can mention another conversation in a message.
+ Load earlier messages: A user can load earlier messages of a conversation.
+ Draft and restore a message: A user can draft a message and restore it at a later time.
+ Retry a message: A user can retry a message if it fails to send.
+ Participate in text exercises: A user can submit attempts for text exercises.
+ Participate in quiz exercises: A user can submit attempts for quiz exercises.

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

#set enum(numbering: n => [NFR #n])
+ Usability:
  #set enum(numbering: "1.")
  1. Visibility of System Status: Queue sending a message
  // - Match Between the System and the Real World
  // - User Control & Freedom
  4. Consistency and Standards: Internal, within the app, and external, among Artemis clients and iOS apps
  // - Error Prevention: Severe damage; save failed message
  6. Recognition Rather Than Recall: Recommend mentions
  // - Flexibility and Efficiency of Use
  8. Aesthetics and Minimalistic Design: Primary goals; message cell
  9. Help Users Recognize, Diagnose and Recover from Errors: Red text; retry message
    - Inform users when an error has occured
    - Tell users what went wrong
    - Offer users a solution
  // - Help & Documentation
+ Robustness: Networking needs/constraints
+ Supportability: Maintainability
+ Implementation requirements: Develop the Artemis - Learning app for iOS and use the Swift programming language.
+ Interface requirements: The Artemis - Learning app should interface with the Artemis server.
// + Operations requirements:
+ Packaging requirements: Distribute the Artemis - Learning app through the Apple App Store.
+ Legal requirements: App Store Review Guidelines for user-generated content: Developers submit apps to the App Store and App Review checks the submission. Submissions must cohere with the App Store Review Guidelines.

== System Models <ra-system-models>

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

// A scenario is an encapsulated description of - an individual user, using a specific set of computer facilities, to achieve a specific outcome, under specific circumstances, over a certain time interval.
// nielsen1993UE, 100

Alice, Bob, and Charlie are students at the Technical University of Munich.
They registered themselves in the course Introduction to the Swift Programming Language (ISPL).
They travel regularly from the Munich city center to Garching-Forschungszentrum (GFZ) and back by train.
Alice and Bob are students, and Charlie is an instructor in the course.
All of them installed the iOS application Artemis - Learning (Artemis app) on their iPhones.
Charlie installed the iPadOS application Artemis - Exam Supervision (Exam app) on their iPad.

==== Visionary Scenarios

Alice missed their usual train and is now late for the start of the lecture.
Charlie, the instructor, starts every lecture with a quiz exercise in the first 10 minutes.
The train is scheduled every 10 minutes, thus Alice arrives in the lecture hall after the quiz begins.
While Alice is still riding the train, they navigate to the course ISPL, and the Exercises tab in the Artemis app.
Alice starts the quiz exercise and can finish it by the time they arrive in the lecture hall.

==== Demo Scenarios

Alice and Bob sit in the lecture hall and listen to ISPL.
They registered for push notifications in the Artemis app.
Other students do not concentrate on the content as much as Alice and Bob and write a lot of messages in the _\#general_ course-wide channel.
Alice and Bob receive a notification for every message that the other students send.
They have not turned off course-wide notifications because other courses are not as spammy and they still want to see how many messages were sent.
They did not hide it either.

Bob sometimes solves their assignments at the last minute.
They are a member of the _\#tech-support_ course-wide channel.
Other students like to ask questions and instructors inform students about infrastructure problems in this channel.
Bob does not need to know about the other's problems immediately and receive a notification, but they like to see if the others have a problem and see if it applies to themselves at a later time/the latest time.
Therefore, Bob mutes the _\#tech-support_ course-wide channel.

Alice travels to GFZ before the lecture starts.
They prefer to use the iOS app when they travel and want to connect with Bob to discuss a lecture topic.
In the Artemis app, they navigate to the course ISPL, and the Messages tab.
They create a new conversation with Bob.
Alice and Bob wish each other a good morning.
Alice's iPhone disconnects from the network, inside the train station, when they want to ask Bob about the upcoming lecture content.

=== Use Case Model

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This subsection should contain a UML Use Case Diagram including roles and their use cases. You can use colors to indicate priorities. Think about splitting the diagram into multiple ones if you have more than 10 use cases. *Important:* Make sure to describe the most important use cases using the use case table template (./tex/use-case-table.tex). Also describe the rationale of the use case model, i.e. why you modeled it like you show it in the diagram.

]

All users use messages.
An instructor manages the code of conduct.
A student participates in exercises.
@ra-use-case-model depicts the relation between actors and use cases.

We split the use case model into three parts.
The first part concerns all users, i.e., an instructor, a tutor, and a student.
The second part concerns instructors and students, individually.

#figure(
  image("use-case-model.png"), 
  caption: [
    The use case model depicts actors that use the system in various ways, i.e., use cases.
  ]
) <ra-use-case-model>

=== Analysis Object Model

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This subsection should contain a UML Class Diagram showing the most important objects, attributes, methods and relations of your application domain including taxonomies using specification inheritance (see <bruegge2004object>). Do not insert objects, attributes or methods of the solution domain. *Important:* Make sure to describe the analysis object model thoroughly in the text so that readers are able to understand the diagram. Also write about the rationale how and why you modeled the concepts like this.

]

We focus on the messages domain and model it from the point of view of a single user.
A course comprises members, exercises, lectures, and conversations.
A code of conduct is specific to a course and only available if a constructor enables information sharing.
A subset of course members and many messages make a conversation.
A message can be the first one of a thread of messages and we call the other messages answers.
A message or answer can connect to a notification.
We show the relationships between the objects in @ra-analysis-object-model.

#figure(
  image("analysis-object-model.png"),
  caption: [
    The analysis object model depicts the high-level objects in the problem domain.
  ]
) <ra-analysis-object-model>

=== Dynamic Model

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This subsection should contain dynamic UML diagrams. These can be a UML state diagrams, UML communication diagrams or UML activity diagrams.*Important:* Make sure to describe the diagram and its rationale in the text. *Do not use UML sequence diagrams.*
]

// Avoid using sequence diagrams, instead consider using activity or communication diagrams.

We put the spotlight on messages.
A message can be in three different states: Compose, sending, and failed.
When a user starts to write a message, it is in the compose state.
When a user sends a message, it is in the sending state until that server acknowledges the message.
If the server does not acknowledge the message until after a timeout interval, then it failed to send.

A user sends a message and that can cause notifications for other users.
We show the way of a notification in @ra-dynamic-model.
A user can generally disable all notifications for a specific kind, e.g., all notifications for new messages in a conversations.
If they enable notifications for conversations, then they can mute individual conversations.
If the user mutes a conversation, they do not receive messages.

#figure(
  image("dynamic-model.png"),
  caption: [
    The activity diagram shows how user settings influence a notification.
  ]
) <ra-dynamic-model>

=== User Interface

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Show mockups of the user interface of the software you develop and their connections / transitions. You can also create a storyboard. *Important:* Describe the mockups and their rationale in the text.
]

The storyboard shows the login, dashboard, exercises, lectures, messages, and conversation screens.
A user can navigate between the screens, whenever there is an edge.
A user can switch tabs in a course and arrive at the exercises, lectures, or messages screens.

#figure(
  image("storyboard.png"),
  caption: [
    The storyboard depicts how a user can navigate between different screens of the application.
  ]
) <ra-storyboard>

A user crosses the course screen to get to the conversations screen in the messages tab.
We improve both, the course and conversations screens, with small refinements.

@ra-courses shows that the button for course enrollment is not in the center and that a course, where progress is impossible, is green.
Additionally, the list rows do not follow the automatic behavior that if a user pushes down on a row, the system highlights it.

#figure(
  pad(
    x: 1em,
    grid(
      columns: (auto, auto, auto),
      gutter: 1em,
      image("courses/1.png"),
      image("courses/2.png"),
      image("courses/3.png")
    )
  ),
  caption: [
    The left screenshot shows the list of courses before the UI improvements.
    The right pair of screenshots shows the list of courses after the UI improvements.
  ]
) <ra-courses>

@ra-conversations shows that the notification badge of a conversation is a circle that grows in height when the number grows in digits.
Additionally, the round notification badge pushes the conversation bubble away from its usual place if a user collapses the disclosure group.

#figure(
  pad(
    x: 1em,
    grid(
      columns: (auto, auto, auto, auto),
      gutter: 1em,
      image("conversations/1.png"),
      image("conversations/2.png"),
      image("conversations/3.png"),
      image("conversations/4.png")
    )
  ),
  caption: [
    The left pair of screenshots shows the messages tab before the UI improvements.
    The right pair of screenshots shows the messages tab after the UI improvements.
  ]
) <ra-conversations>

A user can exhibit unavailable content in many places of the iOS app.
We consider an empty set of contents also as unavailable, as well as if an error occurs.
@ra-unavailable shows that screens that recognize unavailable content, e.g., the notifications and conversation screens, only show a bare text.
Other screens, such as the mention-lecture screen, are empty, analog to the mention-exercise screen.
Errors cause unavailable content, too, but they do not necessarily cause data loss.
We should reserve the color red, as in the courses screen, for actions that cause data loss.

#figure(
  pad(
    x: 1em,
    grid(
      columns: (auto, auto, auto, auto),
      rows: (auto, auto),
      gutter: 1em,
      image("unavailable/a1.png"),
      image("unavailable/a2.png"),
      image("unavailable/a3.png"),
      image("unavailable/a4.png"),
      image("unavailable/b1.png"),
      image("unavailable/b2.png"),
      image("unavailable/b3.png"),
      image("unavailable/b4.png"),
    )
  ),
  caption: [
    The top row shows screenshots of the notifications, mention-lecture, courses, and conversation screens before the UI improvements.
    The bottom row shows screenshots of the notifications, mention-lecture, courses, and conversation screens after the UI improvements.
  ]
) <ra-unavailable>

@ra-conversation shows that a text field is visible between two possibly growing lists of users.
A user adds the top list of users to the conversation if they create it.
The bottom list of users are search results to the users query in the text field.

#figure(
  pad(
    x: 1em,
    grid(
      columns: (auto, auto),
      gutter: 1em,
      image("conversation/1.png"),
      image("conversation/2.png")
    )
  ),
  caption: [
    The left screenshot shows the screen for creating a conversation before the UI improvements.
    The right screenshot shows the screen for creating a conversation after the UI improvements.
  ]
) <ra-conversation>
