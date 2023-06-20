#let project(
  title: "",
  titleGerman: "",
  degree: "",
  program: "",
  supervisor: "",
  advisors: (),
  author: "",
  startDate: none,
  submissionDate: none,
  body,
) = {
  set document(title: title, author: author)
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: "1",
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )
  show math.equation: set text(weight: 400)
  show heading: set text(font: body-font)
  set heading(numbering: "1.1")
  set par(leading: 1em)

  

  
  // --- Table of Contents ---
  outline(
    title: {
      text(font: body-font, 1.5em, weight: 700, "Contents")
      v(15mm)
    },
    indent: true
  )
  
  
  v(2.4fr)
  pagebreak()


  // Main body.
  set par(justify: true)

  body

  pagebreak()
  bibliography("thesis.bib")
}
