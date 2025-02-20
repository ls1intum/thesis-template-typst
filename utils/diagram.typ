#let in-outline = state("in-outline", false)

#let flex-caption(long, short) = context if in-outline.get() { short } else { long }

#let diagram(content, caption: content, short-caption: none) = {
  if short-caption == none {
    short-caption = caption
  }
  figure(
    content,
    caption: flex-caption(
      caption, //Display caption including citation
      short-caption, //Caption without citation used in the outline
    ),
  )
}