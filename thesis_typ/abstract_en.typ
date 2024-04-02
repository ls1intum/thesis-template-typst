#let abstract_en() = {
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(
    leading: 1em,
    justify: true
  )

  
  // --- Abstract (EN) ---
  v(1fr)
  align(center, text(font: body-font, 1em, weight: "semibold", "Abstract"))
  
  text[
    Note:
    1. *paragraph:* What is the motivation of your thesis? Why is it interesting from a scientific point of view? Which main problem do you like to solve?
    2. *paragraph:* What is the purpose of the document? What is the main content, the main contribution?
    3. *paragraph:* What is your methodology? How do you proceed?

    Artemis is a teaching platform that allows instructors and tutors to publish exams, exercises, and lectures to students.
    Students can participate in exams, exercises, and through the communication feature.
    In particular, the communication feature enables students, tutors, and instructors alike to collaborate within a course's context.
    The _Artemis - Learning_ iOS application (iOS app) constitutes an entry point to the learning management system.
    The iOS app in its current form gives the impression that students can participate through the communication feature, but does not fully utilize the Artemis server's more efficient interfaces.

    This thesis aims to fulfill the communication infrastructure and incorporate new communication features, that is, muting conversations and mentioning content, in the iOS app.
    Our goal is to solve usability issues in the iOS app's communication feature and in general, leave users with a satisfactory experience.

    In this thesis' systematic approach to software engineering, we form system models, from which we derive a system design that meets the requirements.
    We employ a manual test to evaluate the resulting implementation.
  ]
  
  v(1fr)
}
