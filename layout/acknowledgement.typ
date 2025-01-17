#import "/layout/fonts.typ": *

#let acknowledgement(body) = {
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

  set par(
    leading: 1em, 
    justify: true
  )
  
  // --- Acknowledgements ---
  align(left, text(font: fonts.sans, 2em, weight: 700,"Acknowledgements"))
  v(15mm)

  body
}