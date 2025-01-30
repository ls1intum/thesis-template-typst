#let nfr_counter = counter("nfr")
#let fr_counter = counter("fr")
#let scenario_counter = (
  "":counter("sc_ctr"),
  "Demo":counter("demo_sc_ctr"),
  "Visionary":counter("vis_sc_ctr")
)


#let NFR(headline, type, description) = [
  #nfr_counter.step()
  #let key = "nfr-" + lower(headline.replace(" ", "-"))
  #grid(
   columns: 2,
   column-gutter: 3mm,
    "NFR" + context nfr_counter.display(),
    strong(headline + " (" + type + ")")  + ": " + description
  )
  #label(key)
]

#let FR(headline, description) = [
  #fr_counter.step()
  #let key = "fr-" + lower(headline.replace(" ", "-"))
  #grid(
   columns: 2,
   column-gutter: 3mm,
    "FR" + context fr_counter.display(),
    strong(headline) + ": " + description
  )
  #label(key)
]

#let Scenario(type: "", headline, body) = [
  #assert(type in scenario_counter.keys(), message: "The scenario type must be either " + scenario_counter.keys().map((it) => "'"+it+"'").join(", "))
  #scenario_counter.at(type).step()
  #let sc_headline = "Scenario " + context scenario_counter.at(type).display() + ": " + headline
  #let key = "scenario-" + lower(sc_headline.replace(" ", "-"))
  #if (type != "") {
    sc_headline = type + " " + sc_headline
  }
  #block(below: 2em)[
    #strong[#sc_headline]
    #body
  ]
  #label(key)
]