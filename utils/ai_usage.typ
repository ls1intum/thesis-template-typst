#import "/layout/fonts.typ": *

// Helpers for the "Transparency in the Use of AI Tools" statement.
// See https://outline.aet.cit.tum.de/doc/guidelines-for-transparent-use-of-generative-ai-UGJcMrOa3N
//
// Levels of AI use in writing (Integrated GenAI Usage Taxonomy, Ucan & Demirel Ucan, 2026):
//   1: Human-authored           - No generative AI contributed to the submitted text
//   2: Language editing         - AI improves human-written text (grammar, style, translation, paraphrasing)
//   3: Ideation and outlining   - AI helps develop or organize ideas (brainstorming, outlines, research questions)
//   4: AI-generated drafts      - AI generates substantive text that is reviewed and revised by the author
//   5: Predominantly AI-generated - AI generates most substantive content, the author curates and edits it
//   6: AI-orchestrated          - AI performs most of the writing process with limited human intervention
// Report the highest level used. Use "n/a" for tools that do not contribute to the text (e.g. coding assistants).

// A single row of the AI usage table.
#let ai_usage(
  tool: "",
  model: "",
  dates: "",
  level: "",
  purpose: "",
  scope: "",
) = (tool, model, dates, level, purpose, scope)

// Renders the AI usage table from one or more `ai_usage(...)` entries.
#let ai_usage_table(..entries) = {
  set text(font: fonts.body, size: 9.5pt, lang: "en", hyphenate: false)
  set par(leading: 0.65em, justify: false, first-line-indent: 0pt)

  table(
    // Fixed shares of the text width, so that long purpose and scope
    // descriptions do not get squeezed into the last two columns
    columns: (17%, 18%, 19%, 9%, 20%, 17%),
    align: left + top,
    inset: (x: 3pt, y: 6pt),
    stroke: (x, y) => (top: if y > 1 { 0.4pt } else { 0pt }),
    table.hline(stroke: 0.7pt),
    table.header(
      [*Tool*],
      [*Model / Version*],
      [*Date(s)*],
      [*Level*],
      [*Purpose*],
      [*Scope*],
    ),
    table.hline(stroke: 0.7pt),
    ..entries.pos().flatten(),
    table.hline(stroke: 0.7pt),
  )
}
