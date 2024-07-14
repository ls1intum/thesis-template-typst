#import "/layout/registration_certificate.typ": *
#import "/metadata.typ": *

#set text(lang: "de")

#show: registrationCertificate.with(
  author: author,
  title: titleEnglish,
  birthdate: birthdate,
  degree: degree,
  program: program,
  supervisor: supervisor,
  startDate: startDate,
  submissionDate: submissionDate,
  currentDate: datetime.today(),
  comment: "",
)
