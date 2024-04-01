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

We conducted a manual test with ten students from the universities TUM (4), RWTH Aachen (3), LMU (2), and FH Aachen (1).
We asked the participants to accomplish three tasks, which we organized into multiple steps.
All students used the same iPhone 11 with iOS 14 and the app build 1.0 (54)
#footnote("https://github.com/ls1intum/artemis-ios/releases/tag/1.0.54").
We prepared the app to request Artemis Test Server 1 (http://artemis-test1.artemis.cit.tum.de) with test user 2.
We prepared the course _Introduction to the Swift Programming Language_ with two students, test users 1 and 2, one tutor, test user 9, and one instructor, test user 15.
The course contained one lecture and three exercises.

== Objectives

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Derive concrete objectives / hypotheses for this evaluation from the general ones in the introduction.
]

We want to test if students can:

1. navigate to the communication feature
2. hide and mute channels
3. Follow mentions, e.g., a lecture
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
  caption: []
) <ev-bars>

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
