#let render-title-table(entries) = {
  align(
    center,
    grid(
      columns: 2,
      gutter: 1em,
      align: left,
      ..for (term, desc) in entries {
        ([*#term:*], desc)
      }
    )
  )
}
