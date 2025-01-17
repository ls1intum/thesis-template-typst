#import "/layout/fonts.typ": *

#let disclaimer(
  title: "",
  degree: "",
  author: "",
  submissionDate: datetime,
) = {
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  set text(
    font: fonts.body, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  
  // --- Disclaimer ---  
  v(75%)
  text("I confirm that this " + degree + "’s thesis is my own work and I have documented all sources and material used.")

  v(15mm)
  grid(
      columns: 2,
      gutter: 1fr,
      "Munich, " + submissionDate.display("[day].[month].[year]"), author
  )
}
