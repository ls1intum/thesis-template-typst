#let TODO(body, color: yellow, width: 100%, breakable: true) = {
  if sys.inputs.at("TODO", default: none) != none {
    block(
      width: width,
      radius: 3pt,
      stroke: 0.5pt,
      fill: color,
      inset: 10pt,
      breakable: breakable,
    )[
      #body
    ]
  }
}
