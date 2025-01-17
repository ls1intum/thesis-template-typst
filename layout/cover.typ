#import "/layout/fonts.typ": *

#let cover(
  title: "",
  degree: "",
  program: "",
  author: "",
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

  
  // --- Cover ---
  v(1cm)
  align(center, image("../figures/tum_logo.png", width: 26%))

  v(5mm)
  align(center, text(font: fonts.sans, 2em, weight: 700, "Technical University of Munich"))

  v(5mm)
  align(center, text(font: fonts.sans, 1.5em, weight: 100, "School of Computation, Information and Technology \n -- Informatics --"))
  
  v(15mm)

  align(center, text(font: fonts.sans, 1.3em, weight: 100, degree + "’s Thesis in " + program))
  v(15mm)
  

  align(center, text(font: fonts.sans, 2em, weight: 700, title))
  
  v(10mm)
  align(center, text(font: fonts.sans, 2em, weight: 500, author))
}