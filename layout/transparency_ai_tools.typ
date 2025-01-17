#import "/layout/fonts.typ": *

#let transparency_ai_tools(body) = {
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

  // --- AI Usage ---
  align(left, text(font: fonts.sans, 20pt, weight: 700,"Transparency in the use of AI tools"))
  v(12pt)

  body
}