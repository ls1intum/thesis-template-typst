#let formField(label, content, length: 5cm) = {
  align(left, text(1em, weight: "bold")[#content])
  v(-3mm)
  line(length: length)
  v(-4mm)
  align(left, text(0.9em, style: "italic")[#label])
}