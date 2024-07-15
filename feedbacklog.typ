#import "/layout/feedbacklog_template.typ": *
#import "/metadata.typ": *
#import "/utils/feedback.typ": *

#set document(title: titleEnglish, author: author)

#show: feedbacklog.with(
  titleEnglish: titleEnglish,
  supervisor: supervisor,
  advisors: advisors,
  author: author,
  presentationDate: presentationDate,
  feedbacklogSubmissionDate: feedbacklogSubmissionDate,
)

#feedback(
  feedback: "Since the attention span of the audience is rather short, try getting to the problem as fast as possible. Several slides in the presentation display redundant or repetitive information and could be deleted",
  response: "To  get  to  the  problem  earlier  in  the  presentation  as  well  as  to  present  only relevant  information,  some  of  the  slides  are  removed  (Agenda)  and  some  of  them  are  merged (Context, Motivation and Objectives), therefore the “Problem” slide is now at slide 4."
)

#feedback(
  feedback: "The structure of the presentation is rather unique; it would be great if you could help the audience to follow it easier.",
  response: "To help the audience to follow the presentation easier, a progress-bar was added at the bottom of the slides to show the milestones of the presentation and highlight the one that indicates the current slide."
)