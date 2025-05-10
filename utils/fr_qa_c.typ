#let fr_counter = counter("fr")
#let qa_counter = counter("qa")
#let const_counter = counter("const")
#let scenario_counter = (
  "": counter("sc_ctr"),
  "Demo": counter("demo_sc_ctr"),
  "Visionary": counter("vis_sc_ctr")
)

#let FR(headline, description) = context [
  #fr_counter.step()
  // Automatically generate a key based on the headline for referencing
  #let key = "fr-" + lower(headline.replace(" ", "-"))
  #grid(
   columns: 2,
   column-gutter: 3mm,
    "FR" + fr_counter.display(),
    strong(headline) + ": " + description
  )
  #label(key)
]

#let QA(category, description) = context [
  #qa_counter.step()
  #let key = "qa-" + lower(category.replace(" ", "-")) + "-" + str(qa_counter.get().first())
  #grid(
   columns: 2,
   column-gutter: 3mm,
    "QA" + qa_counter.display(),
    strong(category)  + ": " + description
  )
  #label(key)
]

#let C(category, description) = context [
  #const_counter.step()
  #let key = "c-" + lower(category.replace(" ", "-"))  + "-" + str(const_counter.get().first())
  #grid(
   columns: 2,
   column-gutter: 3mm,
    "C" + const_counter.display(),
    strong(category)  + ": " + description
  )
  #label(key)
]

#let Scenario(type: "", headline, body) = context [
  // Check if type is valid
  #assert(type in scenario_counter.keys(), message: "The scenario type must be either " + scenario_counter.keys().map((it) => "'"+it+"'").join(", "))
  // Increment the respective scenario counter based on the type
  #scenario_counter.at(type).step()
  #let sc_headline = "Scenario " + scenario_counter.at(type).display() + ": " + headline
  #let key = "scenario-" + lower(headline.replace(" ", "-"))
  #if (type != "") {
    sc_headline = type + " " + sc_headline
  }
  #block(below: 2em)[
    #strong[#sc_headline]
    #body
  ]
  #label(key)
]