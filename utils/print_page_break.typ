#let print_page_break(print: bool) = {
  if print {
    pagebreak(to: "odd")
  } else {
    pagebreak()
  }
}