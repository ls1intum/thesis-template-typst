= Evaluation <ev>

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

=== Participants

On March 29#super[th] to 31#super[st] 2024, we conducted a manual test with ten students from the universities TUM (4), RWTH Aachen (3), LMU (2), and FH Aachen (1).
The students are enrolled in either a bachelor's or master's program and are not involved in the development of Artemis.
All students used the same iPhone 11 with iOS 14 and the iOS app version 1.0 (54)
#footnote("https://github.com/ls1intum/artemis-ios/releases/tag/1.0.54").
We prepared the app to request the Artemis Test Server 1
#footnote("https://artemis-test1.artemis.cit.tum.de")
with test user 2's login.

=== Methodology

We asked the participants to accomplish three tasks, which we organized into multiple steps, see the appendix _Manual Test_ in @app-manual-test.
We prepared the course _Introduction to the Swift Programming Language_ with two students, test users 2 and 4, one tutor, test user 9, and one instructor, test user 15.
The course contained one lecture (_The Basics_) and three exercises, a modeling exercise (_Structures and Classes_), a text exercise (_Deinitialization_), and a file upload exercise (_Error Handling_).
The lecture and exercise names are titles from _A Swift Tour_
#footnote("https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/").
Solving the exercises is not part of the manual test.

We informed the participants that they should think aloud, such that we could follow their thought process.
At the end of each task, we asked the participants if the feature worked for them.
We compare their confidence to the actual results.

After the three tasks, we asked the students if they would rate their experience as satisfactory, in what ways they enjoyed the communication feature, and if they have suggestions to improve the experience.
We therefore differentiate between the functionality and the usability of a feature.

== Objectives

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Derive concrete objectives / hypotheses for this evaluation from the general ones in the introduction.
]

The three tasks cover several functionalities of the iOS app's communication feature.
We want to test if students can:

1. navigate to the communication feature
2. hide and mute channels
3. follow mentions, e.g., a lecture
4. restore drafts of messages and answers
5. mention content, e.g., an exercise
6. mention conversations, e.g., a channel

== Results

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Summarize the most interesting results of your evaluation (without interpretation). Additional results can be put into the appendix.
]

=== Navigate to the communication feature

All ten students can find a course, navigate to the messages tab, and accept the code of conduct.
One student did not immediately recognize the tab bar, which appears on the selection of a course.

=== Hide and mute channels

Four of the ten students hide and mute channels immediately with a long press.
Three students tap and enter a channel before they exit it and try to long press the row; one uses search in the process.
Another one tries to hide the channel by browsing the list to add a channel.
The remaining two students collapse the disclosure group to hide the channel.
All students long press a row and mute a channel after they learn that there are two options, hide and mute.

Nine of the ten students prefer to mute a channel, given the two options.
The remaining student is indecisive.
Three students prefer to mute a channel because they can still see the channel, but a push notification does not interrupt their focus.

=== Follow mentions

One of the ten students follows the mention directly.
The other nine students first select the message and then follow the mention to open the lecture.

=== Restore drafts of messages and answers

Two of the ten students write a message in the conversation, the remaining eight students write an answer in the thread of the message.
All students can exit the conversation or thread and send the message after they enter it again.

=== Mention content and conversations

One student did not receive messages from the conductor and could not finish the third task.
All of the nine remaining students can choose an exercise from the modal screen, eventually.
One student confuses other toolbar items with the exercise toolbar item, that is, the \@ and link symbols.
Another student exits the conversation and tries to select an exercise in the exercises tab.
One student questions if 'Exe' is shorthand for exercises, see @ev-bars.

Six of the ten students can mention a conversation in a message.
Again, one student did not receive messages from the conductor.
Two students tap the \# symbol but choose an exercise from the modal screen.
One student taps the \# symbol and writes the whole exercise name; they do not see the popover appear.

#figure(
  grid(
    columns: (50%, 50%),
    gutter: 1em,
    image("toolbar.jpg"),
    image("navigationbar.jpg"),
  ),
  caption: [
    The left screenshot shows the thread of a message and the user focused the text field.
    Above the keyboard, we display a toolbar, which a user can scroll horizontally.
    The screen width cuts off the _Exercise_ toolbar item.
    The right screenshot shows the modal screen, where a user can choose to mention an exercise.
  ]
) <ev-bars>

=== Questionnaire

Seven of the ten students agree that the experience is satisfactory.
Two students strongly agree that the experience is satisfactory.
One student is neutral about their satisfaction.
Individual students like that the conversation screen is responsive, they can answer a message in a thread, and mentions are easy to navigate.
Five of the ten students like in particular that they can mention content in their messages.

Two students say that they do not understand the label 'Exe' in the keyboard toolbar and one student says that the submenu should be more obvious.
One of the former students says that 'Exe' reminds them of Microsoft executables.
Two students suggest tips when they use the app for the first time.
Two students suggest differentiating between messages that they sent and that they received, e.g., with a different user icon, color, or cursive font.

== Findings

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Interpret the results and conclude interesting findings
]

The manual test provides a better understanding, which features in the iOS app work and give suggestions how we can improve them further.
Generally, the participants can navigate to and within the communication feature.
They can follow mentions, but the touch target of a message that opens a thread interfers with the touch target of a link.
Composing mentions appears to be a more difficult task, this could be of several reasons.

The keyboard toolbar is now overfull and not all toolbar items are visible at a glance.
Additionally, the toolbar item symbols are rather abstract and not easily relatable to a particular kind of content.
@ev-symbols shows the sybmols that we use to create a link markup, mention a conversation member, or another conversation.

#figure(
  grid(
    columns: (5%, 5%, 5%),
    gutter: 1em,
    image("link.png"),
    image("at.png"),
    image("number.png")
  ),
  caption: [
    The link, at, and number symbols that Apple provides with SFSymbols.
  ]
) <ev-symbols>

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
