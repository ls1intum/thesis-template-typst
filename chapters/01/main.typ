= Introduction <in>

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
Furthermore, students, tutors, and instructors can collaborate through the communication feature and discuss various contents of a course.
Interactive learning is a teaching philosophy, where students are at the center of a repeated cycle.
In one iteration, the students follow five steps: Theory, example, practice, feedback, and reflection
#cite(<krusche2021IL>).

Mobile applications enable students to practice interactive learning, alongside laptops and tablets
#cite(<krusche2018artemis>).
Until recently, Artemis revolved around the Artemis application, namely a server program and a web client.
The Artemis project gained two native mobile applications, one Android client and one iOS client
#footnote[https://github.com/ls1intum/Artemis/blob/develop/docs/user/mobile-applications.rst].
The mobile applications do not support the same features and they do not support all the web client's features.
We call the _Artemis - Learning_ iOS application _iOS app_ from here onward.

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
The iOS app's usability might deter novice users from using it, if it is unsatisfactory.
Similarly, advanced users might not want to use it either if they cannot rely on the iOS app to do helpful tasks, e.g., reference course contents.
We discuss the problems of participation and usability in the following subsections.

== Participation

In its current state, the iOS app enables users to view their courses, communicate with peers, and receive notifications.
However, it is lacking the functionality to participate in any exercises.
The iOS app does not support participating in "programming, text-, quiz-, file upload-, [and] modeling exercises"
#cite(<andabaka2023app>).
As a consequence, users need to navigate to the same exercise with a suitable client to work on it if they receive the corresponding notification on their smartphone. 
At best, they do not need to switch to another device and open Artemis in the browser on their smartphone, but the usability depends on the exercise's type.
Quiz and modeling exercises are more difficult to complete on a small screen because of drag-and-drop.
At worst, they need to switch to a device with a larger screen and the appropriate input methods, e.g., a laptop.
Users need to find the exercise that they have received a notification for and complete it on the second device.

The need to use multiple clients and devices makes the task of participating in exercises more complex.
The ability to complete a task in the same environment, where the user receives a notification, a single device and a single client, makes the task simpler.

== Usability

The Artemis web client adapts its layout for smartphone screen sizes in some view components, but not all.
For instance, the design of the modeling editor and drag-and-drop quiz questions demands a keyboard and mouse
#cite(<ortel2023app>).
So far, the iOS app enables navigating exercises, lectures, and messages in a layout that is more suitable for smartphone screens.
However, the iOS app lacks user satisfaction.
Satisfaction is one component of Nielsen's
#cite(<nielsen1993UE>)
definition of usability.
@messages shows that comparable functionality, i.e., that of messaging, is more satisfactory in other iOS apps.

@exercises shows that the same functionality's layout appears different in the iOS app from the web client, even if the web client adapts to smartphone screen sizes.
These dissimilarities put a burden on the user of both the iOS app and the web client to navigate the same content but with two different presentations.

#figure(
  stack(
    dir: ltr,
    spacing: 1em,
    image("messages_artemis.jpg", height: 60%),
    image("messages_slack.jpg", height: 60%)
  ),
  caption: [
    The left screenshot shows the Messages tab in the Artemis iOS app.
    The right screenshot shows the Home tab in the Slack iOS app.
    Slack's layout appears more visually refined than that of Artemis.
  ]
) <messages>

#figure(
  stack(
    dir: ltr,
    spacing: 1em,
    image("exercises_native_a.jpg", height: 40%),
    image("exercises_native_b.jpg", height: 40%),
    image("exercises_web.png", height: 40%)
  ),
  caption: [
    The left screenshot shows the list of groups of exercises with an associated date.
    The middle screenshot shows the list of a course's exercises in the iOS app.
    The right screenshot shows the list of a course's exercises in the web client.
    The layout in the iOS app is different from the web client.
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

About 94% of young people own and use a smartphone, as of 2021
#footnote[https://de.statista.com/statistik/daten/studie/459963/umfrage/anteil-der-smartphone-nutzer-in-deutschland-nach-altersgruppe/].
On the other hand, the share of young people that own a PC or laptop is, at about three quarters, lower, as of 2022
#footnote[https://de.statista.com/statistik/daten/studie/29432/umfrage/anteil-der-jugendlichen-der-einen-computer-oder-laptop-besitzt/].
Therefore, we reckon that almost every student has a smartphone available during the lecture and one-quarter of students would need to rely on a mobile operating system, such as Android or iOS/iPadOS, to solve an exercise during a lecture.
Although nearly every student uses their smartphone every day, technical barriers may limit smartphone usage for academic purposes.
Still, students' willingness suggests that there is more potential to participate in an academic context using a smartphone
#cite(<al2018smartphone>).
Consequently, the Artemis iOS app can enable more students to participate in an interactive lecture environment, if it provides the necessary functionality.

Students learn meaningfully when they manage the teaching material consciously
#cite(<moreno2007interactive>),
e.g., they integrate new information within exercises.
However, humans can only bear so much cognitive load.
Students might exceed their processing capacity when learning in an interactive environment
#cite(<moreno2007interactive>).
Artemis makes participating in exercises more streamlined through one system.
However, Artemis requires users to maneuver multiple clients, i.e., receiving notifications through the iOS app and completing an exercise in the web client.
Handling multiple clients might strain the users of Artemis.

Furthermore, mobile learning applications can bring measurable benefits to learners due to their ability to blend into users' daily lives.
One such example is Duolingo, the number one free app on the iOS App Store in the Education category, as of 2023
#footnote[https://apps.apple.com/us/app/duolingo-language-lessons/id570060128].
Research at Duolingo shows that an intelligent algorithm to send timely notifications has a positive impact on their users' retention
#cite(<yancey2020sleeping>).
Similarly, the iOS app's further development to improve usability and extend functionality should have a positive impact on students.

== Objectives

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe the research goals and/or research questions and how you address them by summarizing what you want to achieve in your thesis, e.g. developing a system and then evaluating it.
]

This thesis aims to evolve the iOS app in two areas.
We discuss the topics of evolving the communication feature and enabling participation in exercises in the subsections below.

=== Evolve the Communication Feature

We iterate the communication feature's user interface to provide a more satisfactory experience for students.
The user interface's appearance is only one of several difficulties in the communication feature.
We cannot assume that all students only post constructive and friendly messages to lecture-, exercise-, or private channels.
We add a reporting mechanism to the iOS app and the Artemis server.
Furthermore, the App Store Review Guidelines determine: "A mechanism to report offensive content and timely responses to concerns"
#footnote[https://developer.apple.com/app-store/review/guidelines/#user-generated-content]
must exist in the app anyway.

Moreover, users can enable notifications for the communication feature.
That is, this setting enables notifications for every course or no course at all.
The option to mute notifications for one course independent of the other courses does not exist.
We add a mechanism to set notification settings for communication channels in a more granular way.
//The communication feature's sound state allows us to recommend the iOS application to the web client's users if they are visiting it on a capable device.

=== Enable Participation in Exercises

We enable participating in exercises through the iOS app.
Quiz exercises, text exercises, and modeling exercises require new user interface components, which we create leveraging the native components of iOS.

SwiftUI's TextEditor lets users create input for text exercises
#footnote[https://developer.apple.com/documentation/swiftui/texteditor].
We use SwiftUI's drag-and-drop capabilities for filling out quiz exercises
#footnote[https://developer.apple.com/documentation/swiftui/drag-and-drop].

The editor for modeling exercises poses the biggest challenge.
The Themis app for Artemis is incorporating rendering UML diagrams for assessment by a tutor
#footnote[https://github.com/ls1intum/Themis/pull/163].
We do not plan to repeat the Themis team's development efforts but work with them to enable viewing diagrams in the iOS app.
Therefore, working on modeling exercises through the iOS app is not in the scope of this thesis.

== Outline

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe the outline of your thesis
]

In this chapter, @in, we gave an introduction to Artemis, the server and its clients, and some of its problems.
We expressed our motivation and the objectives of our thesis.
In @bg, we give context to this thesis in terms of related concepts and technologies.
In @rw, we describe other work, which relates to Artemis directly and the concepts of participation and usability.
In @ra, we elicit the requirements of the system, independent of the implementation, and create models of the system.
In @sd, we transform the analysis model into a system design model.
In @ev, we describe a manual test with ten students and our results and findings.
Finally, in the @su, we give a summary of our work and give inspiration for future work.
