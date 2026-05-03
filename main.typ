#import "config/course.typ": *
#import "styles/notes.typ": apply_notes_style, main-outline

#show: apply_notes_style.with(
  title: course_title,
  author: course_author,
)

#main-outline()

#pagebreak()

#include "lectures/01-introduction.typ"
#include "lectures/02-descriptive-statistics.typ"

#bibliography("bibliography/references.bib", title: "References")
