#import "/utils/todo.typ": TODO
#import "/utils/ai_usage.typ": ai_usage, ai_usage_table

#TODO[
  Replace the example entries below with the generative AI tools you actually used in your proposal, and adapt the verification statement. If you did not use generative AI at all, replace the table with a sentence stating this.

  *Report for every tool:* provider and product, the exact model or version (state it explicitly if the model is not exposed instead of guessing), the date or period of use, the level of AI use in writing (see below, use "n/a" for tools that did not contribute text), the purpose (e.g. language revision, ideation, drafting, coding, literature discovery, data analysis), and the affected scope (sections, source files, analyses).

  *Levels of AI use in writing* (report the highest level used, and report sections separately if the level differs substantially between them):
  + *Human-authored:* No generative AI contributed to the submitted text
  + *Language editing:* AI improves human-written text (grammar, style, translation, paraphrasing)
  + *Ideation and outlining:* AI helps develop or organize ideas (brainstorming, outlines, research questions)
  + *AI-generated drafts:* AI generates substantive text that you review and revise
  + *Predominantly AI-generated:* AI generates most substantive content, you mainly curate and edit it
  + *AI-orchestrated:* AI performs most of the writing process with limited human intervention

  *Do not pass confidential, personal, or otherwise protected information to external AI services* without the consent of everyone concerned.

  A statement such as "I carefully checked all generated text" alone is *not* sufficient. Details: #link("https://outline.aet.cit.tum.de/doc/guidelines-for-transparent-use-of-generative-ai-UGJcMrOa3N")[Guidelines for Transparent Use of Generative AI].
]

I used the following generative AI tools while preparing this proposal. The levels refer to the six-level taxonomy of generative AI use in writing by Ucan and Demirel Ucan @ucan2026generative.

#ai_usage_table(
  ai_usage(
    tool: "OpenAI ChatGPT",
    model: "GPT-5.1 Thinking",
    dates: "02.03.2026 - 20.03.2026",
    level: "4",
    purpose: "Ideation, drafting, language revision",
    scope: "Abstract, Sections 1-5",
  ),
  ai_usage(
    tool: "Anthropic Claude Code",
    model: "[exact version/model]",
    dates: "[date range]",
    level: "n/a",
    purpose: "Code generation, Typst editing",
    scope: "Sections 1-5",
  ),
)

#v(6pt)

I reviewed and revised all AI-generated or AI-modified content. I verified factual claims and citations against the original sources and inspected and tested generated code, analyses, and visualizations where applicable. I remain fully responsible for the submitted work.
