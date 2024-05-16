#let abstract_de() = {
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
    lang: "de"
  )
  
  set par(
    leading: 1em,
    justify: true
  )

  
  // --- Abstract (EN) ---
  v(1fr)
  align(center, text(font: body-font, 1em, weight: "semibold", "Zusammenfassung"))
  
  text[
    Note: Insert the German translation of the English abstract here.
  ]
  
  v(1fr)
}
