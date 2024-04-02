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
    lang: "en"
  )
  
  set par(
    leading: 1em,
    justify: true
  )

  
  // --- Abstract (DE) ---
  v(1fr)
  align(center, text(font: body-font, 1em, weight: "semibold", "Zusammenfassung"))
  
  text[
    Note: Insert the German translation of the English abstract here.

    Artemis ist eine Lernplattform, die es Lehrenden und Tutor:innen erlaubt, Klausuren, Aufgaben, und Vorlesungen für Studierende zu veröffentlichen.
    Studierende können an Klausuren, Aufgaben, und der Kommunikationsfunktion teilnehmen.
    Besonders die Kommunikationsfunktion ermöglicht es Studierenden, Tutor:innen, und Lehrenden gleichermaßen innerhalb eines Kurskontexts zusammen zu arbeiten.
    Die _Artemis - Learning_ iOS-Anwendung (iOS app) ist ein Zugang zu dem Lernmanagementsystem.
    Die iOS app in ihrer jetzigen Form erweckt den Eindruck, dass Studierende durch die Kommunikationsfunktion partizipieren können, nutzt aber die effizienteren Schnittstellen des Artemis Servers nicht voll.

    Diese Arbeit beabsichtigt in der iOS app die Kommunikationsinfrastruktur zu erfüllen und neue Kommunikationsfunktionen, wie das Stummschalten von Konversationen und das Erwähnen von Inhalten, aufzunehmen.
    Unser Ziel ist es die Benutzbarkeit der Kommunikationsfunktion der iOS app zu verbessern und im Allgemeinen Nutzer:innen eine zufrieden stellende Erfahrung zu bieten.

    In dem systematischen Ansatz dieser Arbeit an das Software Engineering, erarbeiten wir Systemmodelle, aus denen wir ein Systemdesign ableiten, dass die Anforderungen erfüllt.
    Wir setzen einen manuellen Test ein, um die resultierende Implementierung zu evaluieren.
  ]
  
  v(1fr)
}
