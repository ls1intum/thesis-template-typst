#let feedbacklog(
  titleEnglish: "",
  supervisor: "",
  advisors: (),
  author: "",
  presentationDate: datetime,
  feedbacklogSubmissionDate: datetime,
  body,
) = {
  // Set the document's basic properties.
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: "1",
    number-align: center,
  )

  // Save heading and body font families in variables.
  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  // Set body font family.
  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )
  
  align(center, text(font: "sans-font", 1.7em, weight: 700, "Presentation Feedbacklog" + linebreak() + titleEnglish))

  v(7.5mm)

  align(center, text(font: "sans-font", 1.2em, weight: 400, feedbacklogSubmissionDate.display("[day]. [month repr:long] [year]")))

  v(7.5mm)

  line(length: 100%, stroke: 0.5pt)

  align(
    center,
    box(
      align(
        left,
        grid(
          columns: 2,
          gutter: 1em,
          strong("Author: "), author,
          strong("Supervisor: "), supervisor,
          strong("Advisors: "), advisors.join(",\n"),
          strong("Presentation Date: "), presentationDate.display("[day].[month].[year]"),
        )
      )
    )
  )

  line(length: 100%, stroke: 0.5pt)

  body
}
