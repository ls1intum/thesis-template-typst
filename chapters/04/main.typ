= Requirements Analysis <ra>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: This chapter follows the Requirements Analysis Document Template in <bruegge2004object>. Important: Make sure that the whole chapter is independent of the chosen technology and development platform. The idea is that you illustrate concepts, taxonomies and relationships of the application domain independent of the solution domain! Cite <bruegge2004object> several times in this chapter.

// ]
This chapter documents the results of requirements elicitation according to the _Requirements Analysis Document_ template
#cite(<bruegge2004OOSE>). // 152
We describe the current system in @ra-current-system, which we will augment with the proposed system in @ra-proposed-system.

== Overview <ra-overview>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Provide a short overview about the purpose, scope, objectives and success criteria of the system that you like to develop.
// ]
The iOS app is a companion to Artemis on the web, through which a user can view the details of their courses.
Users can read exercises, lectures, and messages through the iOS app.
In the special case of modeling exercises, users can even submit attempts.

Messages are only visible if the instructor enabled it for the course.
In the messages tab, a user can see conversations for course-wide channels, exercises, lectures, exams, group chats, and direct messages.
They can navigate to a thread, i.e., a branch of messages, which has its root in one message in the conversation.

This thesis plans to extend the participation features.
We scope the proposed system to the communication feature.
The objectives are to:
- provide users with usability improvements up to and including the communication feature
- provide users with the infrastructure to communicate through the iOS app
- let users navigate to interesting content from messages
- let users control how they are notified by enabling muting of conversations

We deem the proposed system successful if users are satisfied with our improvements to its usability.

== Current System <ra-current-system>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: This section is only required if the proposed system (i.e. the system that you develop in the thesis) should replace an existing system.
// ]
=== User Interface

The storyboard in @ra-storyboard shows the dashboard, messages, create-conversation, and conversation screens.
A user crosses the course screen to get to the conversations screen in the messages tab.
All screens exhibit several usability deficiencies.
Describing the deficiencies in detail in @ra-user-interface, the section also proposes improved screens side-by-side.

#figure(
  image("storyboard.jpg"),
  caption: [
    The storyboard depicts how a user can navigate between different screens of the application.
    A user can navigate between the screens, whenever there is an edge.
  ]
) <ra-storyboard>

=== Dynamic Model

Artemis provides notification settings for web app and email push notifications in the web client.
Users can access the notification settings for the Android and iOS apps in the native clients, respectively.
If a user disables push notifications for a category, e.g., new messages in conversations, all conversations do not notify the user of new messages, as shown in @ra-notifications-current.

#figure(
  pad(
    x: 20%,
    image("notifications/current.jpg")
  ),
  caption: [
    An activity diagram depicting how user settings influence a notification in the current system.
  ]
) <ra-notifications-current>

== Proposed System <ra-proposed-system>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: If you leave out the section “Current system”, you can rename this section into “Requirements”.
// ]
// Copy of bachelor's thesis, p.15
Requirements elicitation is one activity of requirements engineering.
This activity aims to understand the users' requirements of the system.
The requirements can be elicited by observing or interviewing the user
@bruegge2004OOSE.
This section encompasses the elicitation of functional and nonfunctional requirements in the subsections @ra-functional-requirements, @ra-nonfunctional-requirements, respectively.

=== Functional Requirements <ra-functional-requirements>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: List and describe all functional requirements of your system. Also mention requirements that you were not able to realize. The short title should be in the form “verb objective”

//   - FR1 Short Title: Short Description. 
//   - FR2 Short Title: Short Description. 
//   - FR3 Short Title: Short Description.
// ]
#set enum(numbering: n => [*FR #n*], number-align: start + top)
+ *Configure a Code of Conduct*: An instructor can adapt a template code of conduct at the creation of a course and edit it later
+ *Accept the Code of Conduct*: A user can use the communication feature if they accept the code of conduct
+ *Report Misconduct*: A user can report misconduct to a course's responsible contact
+ *Mute Individual Conversations*: A user can mute a conversation independent of other conversations
+ *Converse with Users*: Users can converse with each other including examining their conversation history
+ *Restore a Message Draft*: A user can draft a message and restore it at a later time after they exit and enter a conversation again
+ *Retry Failed Messages*: A user can retry messages if they fail to send due to loss of connectivity
+ *Mention Course Contents*: A user can mention an exercise, a lecture, another conversation member, and a conversion in a message

=== Nonfunctional Requirements <ra-nonfunctional-requirements>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: List and describe all nonfunctional requirements of your system. Also mention requirements that you were not able to realize. Categorize them using the FURPS+ model described in <bruegge2004object> without the category functionality that was already covered with the functional requirements.

//   - NFR1 Category: Short Description. 
//   - NFR2 Category: Short Description. 
//   - NFR3 Category: Short Description.

// ]
// Copy of bachelor's thesis, p.15
Nonfunctional requirements describe aspects of the system that are unrelated with its functionality.
We divide our nonfunctional requirements into the URPS model and pseudo-requirements.
The URPS model comprises requirements that fall into the categories of usability, reliability, performance, or supportability.
Pseudo-requirements cover constraints that are concerned with the implementation, interfaces, operations, packaging, or legalities
@bruegge2004OOSE.

==== URPS

#set enum(numbering: n => [*NFR #n*], number-align: start + top)
+ *Reliability*: The iOS app should keep on performing under constrained networking constraints, i.e., let users resume under more relaxed conditions
+ *Performance*: The iOS app should request the Artemis server as few as possible considering the number of students that attend a lecture simultaneously
+ *Supportability*: Developers work on the iOS app and its dependencies open-source. Keep dependencies maintainable and independent of each other

==== URPS - Usability

In the attempt to improve user satisfaction, the following requirements divide the non-functional requirement of usability further.
#set enum(numbering: n => [*NFR #n*], start: 4, number-align: start + top)
+ *Visibility of System Status*: Give clear feedback about what the system is doing to users
// + Match Between the System and the Real World
// + User Control & Freedom
+ *Consistency and Standards*: Keep internal consistency, within the app, and external consistency, among Artemis clients and other iOS apps that adhere to well-known user-interface pattern
// + Error Prevention: Severe damage; save failed message
+ *Recognition Rather Than Recall*: Give users options to choose from based on information they know instead of leaving them to memorize content
// + Flexibility and Efficiency of Use
+ *Aesthetics and Minimalistic Design*: Display only appropriate information at any given time
+ *Help Users Recognize, Diagnose and Recover from Errors*: Inform users when an error occurs, tell them what went wrong, and offer a solution
// + Help & Documentation

==== Pseudo Requirements

#set enum(numbering: n => [*NFR #n*], start: 9, number-align: start + top)
+ *Implementation requirements*: Develop the iOS app with the Swift programming language
+ *Interface requirements*: The iOS app should interface with the Artemis server and use the HTTP and WebSocket APIs
// + Operations requirements:
+ *Packaging requirements*: Distribute the iOS app through Test Flight
+ *Legal requirements*: App Store Review Guidelines for user-generated content -- App Review checks that each developer's submission to the App Store coheres with the App Store Review Guidelines

== System Models <ra-system-models>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: This section includes important system models for the requirements analysis.
// ]
System models formalize the functional and non-functional requirements and let developers validate, clarify, and correct them
@bruegge2004OOSE.

=== Scenarios

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: If you do not distinguish between visionary and demo scenarios, you can remove the two subsubsections below and list all scenarios here.

//   *Visionary Scenarios*

//   Note: Describe 1-2 visionary scenario here, i.e. a scenario that would perfectly solve your problem, even if it might not be realizable. Use free text description.

//   *Demo Scenarios*

//   Note: Describe 1-2 demo scenario here, i.e. a scenario that you can implement and demonstrate until the end of your thesis. Use free text description.
// ]
// A scenario is an encapsulated description of - an individual user, using a specific set of computer facilities, to achieve a specific outcome, under specific circumstances, over a certain time interval.
// nielsen1993UE, 100
// Copy of bachelor's thesis, p. 23
Scenarios are detailed descriptions of the system in use
@bruegge2004OOSE.
Here, Alice, Bob, and Charlie are students at the Technical University of Munich.
They registered themselves in the course Introduction to the Swift Programming Language (ISPL).
They travel regularly from the Munich city center to Garching-Forschungszentrum (GFZ) and back by train.
Alice and Bob are students and Charlie is an instructor in the course.
All of them installed the iOS app on their iPhones.

==== Participate in a Quiz Exercise (Visionary Scenario)

Alice missed their usual train and is now late for the start of the lecture.
Charlie, the instructor, starts every lecture with a quiz exercise in the first 10 minutes.
The train is scheduled every 10 minutes, thus Alice arrives in the lecture hall after the quiz begins.
While Alice is still riding the train, they navigate to the course ISPL and the exercises tab in the iOS app.
Alice starts the quiz exercise and can finish it by the time they arrive in the lecture hall.

==== Mute _\#tech-support_ (Demo Scenario)

Bob sometimes solves their assignments at the last minute.
They are a member of the _\#tech-support_ course-wide channel.
Other students like to ask questions and instructors inform students about infrastructure problems in this channel.
Bob does not need to know about the other's problems immediately and receive a notification, but they like to see if the others have a problem and see if it applies to themselves at a later time/the latest time.
Therefore, Bob mutes _\#tech-support_.

==== Retry Failed Message (Demo Scenario)

Alice travels to GFZ before the lecture starts.
They prefer to use the iOS app when they travel and want to connect with Bob to discuss a lecture topic.
In the iOS app, they navigate to the course ISPL and the messages tab.
They create a new conversation with Bob.
Alice and Bob wish each other a good morning.
Alice's iPhone disconnects from the network, inside the train station, when they want to ask Bob about the upcoming lecture content.
Alice puts away their iPhone and Alice's message is not lost.
The message is automatically sent when Alice's phone reconnects.

=== Use Case Model

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: This subsection should contain a UML Use Case Diagram including roles and their use cases. You can use colors to indicate priorities. Think about splitting the diagram into multiple ones if you have more than 10 use cases. *Important:* Make sure to describe the most important use cases using the use case table template (./tex/use-case-table.tex). Also describe the rationale of the use case model, i.e. why you modeled it like you show it in the diagram.

// ]
All users, including students, tutors, and instructors, use messages.
Only an instructor manages a course's code of conduct.
@ra-use-case-model depicts the relation between actors and use cases.
In particular, the gray background comprises the use cases related to the code of conduct.
The blue background comprises the use cases that are available if the communication feature is enabled for the course and the code of conduct is accepted.

#figure(
  image("use-case-model.jpg"), 
  caption: [
    A use case diagram depicting two actors, any user and an instructor, that have different capabilities in the system.
  ]
) <ra-use-case-model>

=== Analysis Object Model

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: This subsection should contain a UML Class Diagram showing the most important objects, attributes, methods and relations of your application domain including taxonomies using specification inheritance (see <bruegge2004object>). Do not insert objects, attributes or methods of the solution domain. *Important:* Make sure to describe the analysis object model thoroughly in the text so that readers are able to understand the diagram. Also write about the rationale how and why you modeled the concepts like this.

// ]
We focus on the messages domain and model it within the context of a single course.
A course comprises users, exercises, lectures, and conversations.
Lectures can contain attachments, which themselves contain slides that are grouped into units.
A code of conduct is specific to a course and only available if a constructor enables information sharing.
A subset of course members and many messages make a conversation.
A message can be the first one of a thread of messages and we call the other messages answers.
We show the relationships between the objects in @ra-analysis-object-model.

A central part of this analysis object model is the _Content_ class.
Content is anything that a user can mention in a message or navigate to from a message.
The identifier of content can take many forms.
The identifier of a user is their username, whereas the identifier of exercises or lectures is numerical.

The green highlights in @ra-analysis-object-model depict additions to the current system, whereas the blue highlights depict changes to the current system.
The code of conduct is entirely new and enables a user to report another user, if necessary.
Muting a conversation changes how a user gets push notifications.
Furthermore, how a user mentions and opens content, changes in the iOS app.
Users of the iOS app can restore and retry sending a message if an error occurs.

#figure(
  image("analysis-object-model.jpg"),
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
We show the way of a notification in @ra-notifications-vision.
A user can generally disable all notifications for a specific kind, e.g., all notifications for new messages in a conversations.
If they enable notifications for conversations, then they can mute individual conversations.
If the user mutes a conversation, they do not receive messages.

#figure(
  pad(
    x: 20%,
    image("notifications/vision.jpg")
  ),
  caption: [
    The activity diagram shows how user settings influence a notification.
  ]
) <ra-notifications-vision>

=== User Interface <ra-user-interface>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Show mockups of the user interface of the software you develop and their connections / transitions. You can also create a storyboard. *Important:* Describe the mockups and their rationale in the text.
// ]
==== Course Overview

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

==== Messages Tab

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

==== Conversation Creation

@ra-conversation shows that a text field is visible between two possibly growing lists of users.
A user adds the top list of users to the conversation if they create it.
The bottom list of users displays search results according to the user's query in the text field.

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

==== Content Unavailable

A user can exhibit unavailable content in many places of the iOS app.
We consider an empty set of contents also as unavailable, as well as if an error occurs.
@ra-unavailable shows that screens that recognize unavailable content, e.g., the notifications and conversation screens, only show bare text.
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
