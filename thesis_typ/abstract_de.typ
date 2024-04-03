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
    // Note: Insert the German translation of the English abstract here.
    Artemis ist eine Lernplattform, die es Lehrenden und Tutor:innen erlaubt, Klausuren, Aufgaben, und Vorlesungen für Studierende zu veröffentlichen.
    Studierende können an Klausuren, Aufgaben, und der Kommunikationsfunktion teilnehmen.
    Besonders die Kommunikationsfunktion ermöglicht es Studierenden, Tutor:innen, und Lehrenden gleichermaßen innerhalb eines Kurskontexts zusammen zu arbeiten.
    Die _Artemis - Learning_ iOS-Anwendung (iOS app) ist ein Zugang zu dem Lernmanagementsystem.
    Die iOS app in ihrer jetzigen Form erweckt den Eindruck, dass Studierende durch die Kommunikationsfunktion partizipieren können, nutzt aber die effizienteren Schnittstellen des Artemis Servers nicht voll.

    Diese Arbeit beabsichtigt die Benutzbarkeit der Kommunikationsfunktion der iOS app zu verbessern und im Allgemeinen Nutzer:innen eine zufrieden stellende Erfahrung zu bieten.
    Wir verfolgen den Nutzerpfad vom Dashboard zur Kommunikationsfunktion in der iOS app und steuern zu einer besseren Benutzeroberfläche bei.
    Das Stummschalten von Konversationen gibt Nurter:innen auf allen Clients, mehr Kontrolle darüber, wie sie benachrichtigt werden.
    Außerdem prüfen wir die Grundlagen der iOS app, um die Kommunikationsinfrastruktur zu erfüllen und neue Kommunikationsfunktionen in die iOS app aufzunehmen.

    Zu Beginn bringen wir Anforderungen aus der Problemdomäne hervor und erarbeiten Systemmodelle.
    In der Lösungsdomäne leiten wir ein Systemdesign ab, dass die offensichtlichen Schwächen im Bezug auf die Systemmodelle mindert.
    Wir setzen einen manuellen Test ein, um die resultierende Implementierung bezüglich ihrer Benutzbarkeit zu evaluieren.
    In dem systematischen Ansatz dieser Arbeit an das Software Engineering, endet die Zusammenfassung mit einem Ausblick auf die Weiterentwicklung der iOS app.
  ]
  
  v(1fr)
}
