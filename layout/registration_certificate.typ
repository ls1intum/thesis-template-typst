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
  comment: "",
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

  // v(1cm)
  grid(
    columns: (1fr,2fr,1fr),
    align: center,
    image("/figures/ls1_logo.png", width: 30%),
    rect(stroke: 0mm),
    image("/figures/tum_logo.png", width: 50%),
    text(font: sans-font, "Applied Software Engineering"),
    rect(stroke: 0mm),
    text(font: sans-font, weight: "bold", "Technical University of Munich")
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

  "Hiermit bestätigen wir, dass der Kandidat/die Kandidatin sich am " + startDate + " zur " + degree + "arbeit angemeldet hat. \n"
  comment

  v(1.5cm)

  grid(
    columns: 2,
    column-gutter: 2cm,
    formField("Datum", currentDate.display("[day].[month].[year]"), length: 90%),
    formField(supervisor, " ", length: 90%)
  )
}

#let comment(content) = {

}


