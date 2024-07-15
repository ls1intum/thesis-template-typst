#import "/utils/formfield.typ": *

#let registrationCertificate(
  author: "",
  birthdate: datetime,
  title: "",
  degree: "",
  program: "",
  supervisor: "",
  startDate: datetime,
  submissionDate: datetime,
  currentDate: datetime,
  body,
) = {

  // Set the document's basic properties.
  set page(
    margin: (left: 20mm, right: 20mm, top: 20mm, bottom: 20mm),
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

  align(
    right,
    stack(
      dir: ttb,
      spacing: 10pt,
      image("/figures/tum_logo.png", width: 20%),
      text(font: sans-font, weight: "bold", "Technical University \n of Munich")
    )
  )

  v(1.5cm)
  
  align(left, text(font: sans-font, 1.3em, weight: "bold", "Bestätigung zur Anmeldung der " + degree + "arbeit"))

  grid(
    columns: 2,
    row-gutter: 10mm,
    column-gutter: 6mm,
    formField("Name der/des Studierenden", author, length: 90%),
    formField("Geburtsdatum", birthdate.display("[day].[month].[year]"),length: 90%),
    formField("Studiengang", program, length: 90%),
    formField("Titel der Arbeit", title, length: 90%)
  )

  v(1.5cm)

  "Hiermit bestätigen wir, dass der Kandidat/die Kandidatin sich am " + startDate.display("[day].[month].[year]") + " zur " + degree + "arbeit angemeldet hat. \n"
  body

  v(1.5cm)

  grid(
    columns: 2,
    column-gutter: 2cm,
    formField("Datum", currentDate.display("[day].[month].[year]"), length: 90%),
    formField(supervisor, " ", length: 90%)
  )
}
