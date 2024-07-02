#import "/layout/proposal_template.typ": *
#import "/metadata.typ": *
#import "/utils/todo.typ": *

#set document(title: titleEnglish, author: author)

#show: proposal.with(
  title: titleEnglish,
  titleGerman: titleGerman,
  degree: degree,
  program: program,
  supervisor: supervisor,
  advisors: advisors,
  author: author,
  startDate: startDate,
  submissionDate: submissionDate,
  transparency_ai_tools: include "/content/proposal/transparency_ai_tools.typ",
)

#TODO(color: red)[ // Remove this block
  Before you start with your thesis, have a look at our guides on Confluence!
  #link("https://confluence.ase.in.tum.de/display/EduResStud/How+to+Proposal")
]

#set heading(numbering: none)
#include "/content/proposal/abstract.typ"

#set heading(numbering: "1.1")
#include "/content/proposal/introduction.typ"
#include "/content/proposal/problem.typ"
#include "/content/proposal/motivation.typ"
#include "/content/proposal/objective.typ"
#include "/content/proposal/schedule.typ"
