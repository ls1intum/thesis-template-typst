= Summary <su>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: This chapter includes the status of your thesis, a conclusion and an outlook about future work.
// ]
This chapter summarizes this thesis by critically discussing the results in @su-status and @su-conclusion and by giving an outlook for future work in @su-future-work.

== Status <su-status>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Describe honestly the achieved goals (e.g. the well implemented and tested use cases) and the open goals here. if you only have achieved goals, you did something wrong in your analysis.
// ]
The goal of this thesis was to realize eight functional requirements, which are listed in @ra-functional-requirements.
Not all of them are fulfilled as we describe in the following sections.
Full ●, half-full ◐, and empty ⚬ circles denote the status, realized, partially realized, and open, respectively.

#figure(
  table(
    columns: (auto, auto),
    align: (left, center),
    [Functional Requirement], [Status],
    [FR1: Configure a Code of Conduct], [●],
    [FR2: Accept the Code of Conduct], [●],
    [FR3: Report Misconduct], [●],
    [FR4: Mute Individual Conversations], [●],
    [FR5: Converse with Users], [◐],
    [FR6: Restore a Message Draft], [●],
    [FR7: Retry Failed Messages], [●],
    [FR8: Mention Course Contents], [◐],
  ),
  caption: [
    Status of the functional requirements.
  ]
)

=== Realized Goals

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Summarize the achieved goals by repeating the realized requirements or use cases stating how you realized them.
// ]
The majority of the functional requirements have been realized.
Instructors can configure a code of conduct and be compliant with the App Store Guidelines for a future release of the iOS app.
Users can accept the code of conduct and report misconduct.

Users can mute conversations if they prefer to converse less with their peers.
Otherwise, they can use the iOS app's communication feature to chat through channels, groups, or direct messages.
Engaging in a conversation still shows some deficiencies, e.g., when the WebSocket is interrupted.

The iOS app can from now on restore drafts of messages and answers, as well as recover messages that failed to send.
We deem FR1, FR2, FR3, FR4, FR6, and FR7 successfully realized.

=== Open Goals

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Summarize the open goals by repeating the open requirements or use cases and explaining why you were not able to achieve them. Important: It might be suspicious, if you do not have open goals. This usually indicates that you did not thoroughly analyze your problems.
// ]
The manual test in @ev showed that conversing with users and mentioning content still leaves room for improvement.
We deem FR5 and FR8 only partially realized.

== Conclusion <su-conclusion>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Recap shortly which problem you solved in your thesis and discuss your *contributions* here.
// ]
This thesis contributed to the communication infrastructure of the iOS app.
On the way there, we employed several improvements to usability throughout the app.
Users on all platforms gain more control of the communication feature.
Instructors can configure a code of conduct and all users, including students and tutors, can mute individual conversations.

With the ability to restore message and answer drafts, we foster the differentiating factors of the native Artemis clients.

== Future Work <su-future-work>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Tell us the next steps (that you would do if you have more time). Be creative, visionary and open-minded here.
// ]
We developed a user interface for text and quiz exercises during the exploration of this thesis' scope.
@su-exercises show visual prototypes of the text and quiz exercise screens.
We encourage fellow developers to pickup the pieces and follow up with the implementation and testing of the exercise feature in the iOS app.

#figure(
  pad(
    x: 1em,
    grid(
      columns: (auto, auto, auto, auto),
      gutter: 1em,
      image("exercises/1.png"),
      image("exercises/2.png"),
      image("exercises/3.png"),
      image("exercises/4.png")
    )
  ),
  caption: [
    The screenshots show screens for a text exercise and a quiz exercise, that is a short answer question, a multiple-choice question, and a drag-and-drop question.
  ]
) <su-exercises>
