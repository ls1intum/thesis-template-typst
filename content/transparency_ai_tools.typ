#import "/utils/todo.typ": TODO
#import "/utils/ai_usage.typ": ai_usage, ai_usage_table

#TODO[
  Replace the example entries below with the generative AI tools you actually used in your thesis, and adapt the verification statement. If you did not use generative AI at all, replace the table with a sentence stating this.

  *Report for every tool:* provider and product, the exact model or version (state it explicitly if the model is not exposed instead of guessing), the date or period of use, the level of AI use in writing (see below, use "n/a" for tools that did not contribute text), the purpose (e.g. language revision, ideation, drafting, coding, literature discovery, data analysis), and the affected scope (chapters, source files, experiments, analyses).

  *Levels of AI use in writing* (report the highest level used, and report sections separately if the level differs substantially between them):
  + *Human-authored:* No generative AI contributed to the submitted text
  + *Language editing:* AI improves human-written text (grammar, style, translation, paraphrasing)
  + *Ideation and outlining:* AI helps develop or organize ideas (brainstorming, outlines, research questions)
  + *AI-generated drafts:* AI generates substantive text that you review and revise
  + *Predominantly AI-generated:* AI generates most substantive content, you mainly curate and edit it
  + *AI-orchestrated:* AI performs most of the writing process with limited human intervention

  *If an LLM contributed to your research method, implementation, experiments, data analysis, evaluation, or results*, document this in the respective chapter (e.g. System Design or Evaluation) in addition to this statement: exact model, version, date and configuration; the role of the LLM in the research process; prompts or prompt templates that materially influence results; system instructions, tools, retrieval, or agent configuration; interaction logs or traces where feasible; how outputs were validated; and limitations regarding reproducibility and non-determinism. Follow the #link("https://llm-guidelines.org/")[LLM Guidelines for Software Engineering]. Keep the documentation proportional to the role of AI.

  *Do not pass confidential, personal, or otherwise protected information to external AI services* without the consent of everyone concerned.

  A statement such as "I carefully checked all generated text" alone is *not* sufficient. Details: #link("https://outline.aet.cit.tum.de/doc/guidelines-for-transparent-use-of-generative-ai-UGJcMrOa3N")[Guidelines for Transparent Use of Generative AI].
]

I used the following generative AI tools while preparing this thesis. The levels refer to the six-level taxonomy of generative AI use in writing by Ucan and Demirel Ucan @ucan2026generative.

#ai_usage_table(
  ai_usage(
    tool: "OpenAI ChatGPT",
    model: "GPT-5.1 Thinking",
    dates: "02.03.2026 - 28.05.2026",
    level: "4",
    purpose: "Ideation, drafting, language revision",
    scope: "Abstract, Chapters 1-3",
  ),
  ai_usage(
    tool: "Anthropic Claude Code",
    model: "[exact version/model]",
    dates: "[date range]",
    level: "n/a",
    purpose: "Code generation, Typst editing",
    scope: "Chapters 1-3, code in [repository]",
  ),
)

#v(6pt)

I reviewed and revised all AI-generated or AI-modified content. I verified factual claims and citations against the original sources and inspected and tested generated code, analyses, and visualizations where applicable. I remain fully responsible for the submitted work.
