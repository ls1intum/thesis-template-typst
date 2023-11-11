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

  
  // --- Abstract (DE) ---
  v(1fr)
  align(center, text(font: body-font, 1em, weight: "semibold", "Abstract"))
  
  text[
    Note:
    1. *paragraph:* What is the motivation of your thesis? Why is it interesting from a scientific point of view? Which main problem do you like to solve?
    2. *paragraph:* What is the purpose of the document? What is the main content, the main contribution?
    3. *paragraph:* What is your methodology? How do you proceed?
  ]
  
  v(1fr)
}