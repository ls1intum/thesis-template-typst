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

== Conclusion <su-conclusion>

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Recap shortly which problem you solved in your thesis and discuss your *contributions* here.
]

== Future Work <su-future-work>

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Tell us the next steps (that you would do if you have more time). Be creative, visionary and open-minded here.
]
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
