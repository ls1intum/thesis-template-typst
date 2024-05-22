#import "/layout/titlepage.typ": *

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let proposal(
  title: "",
  titleGerman: "",
  degree: "",
  program: "",
  supervisor: "",
  advisors: (),
  author: "",
  startDate: datetime,
  submissionDate: datetime,
  body,
) = {
  titlepage(
    title: title,
    titleGerman: titleGerman,
    degree: degree,
    program: program,
    supervisor: supervisor,
    advisors: advisors,
    author: author,
    startDate: startDate,
    submissionDate: submissionDate
  )

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

  show math.equation: set text(weight: 400)

  // --- Headings ---
  show heading: set block(below: 0.85em, above: 1.75em)
  show heading: set text(font: body-font)
  set heading(numbering: "1.1")

  // --- Paragraphs ---
  let firstParagraphIndent = 1.45em
  show heading: it => {
    it
    h(firstParagraphIndent)
  }
  set par(leading: 1em, justify: true, first-line-indent: 2em)

  // --- Figures ---
  show figure: set text(size: 0.85em)

  body

  pagebreak()
  bibliography("/thesis.bib")
}
