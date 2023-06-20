#let disclaimer(
  title: "",
  degree: "",
  author: "",
  submissionDate: none,
) = {
  set document(title: title, author: author)  
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

  set par(leading: 1em)

  
  // --- Disclaimer ---
  pagebreak()
  
  v(75%)
  text("I confirm that this " + degree + "’s thesis is my own work and I have documented all sources and material used.")

  v(15mm)
  grid(
      columns: 2,
      gutter: 1fr,
      "Munich, " + submissionDate, author
  )

  pagebreak()
  pagebreak()
}
