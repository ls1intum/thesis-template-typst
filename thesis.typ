#import "/layout/thesis_template.typ": *
#import "/metadata.typ": *

#set document(title: titleEnglish, author: author)

#show: thesis.with(
  title: titleEnglish,
  titleGerman: titleGerman,
  degree: degree,
  program: program,
  supervisor: supervisor,
  advisors: advisors,
  author: author,
  startDate: startDate,
  submissionDate: submissionDate,
  abstract_en: include "/content/abstract_en.typ",
  abstract_de: include "/content/abstract_de.typ",
  acknowledgement: include "/content/acknowledgement.typ",
  transparency_ai_tools: include "/content/transparency_ai_tools.typ",
)

#include "/content/introduction.typ"
#include "/content/background.typ"
#include "/content/related_work.typ"
#include "/content/requirements.typ"
#include "/content/system_design.typ"
#include "/content/evaluation.typ"
#include "/content/summary.typ"