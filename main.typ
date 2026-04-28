#import "templates/course.typ": course, definition, example, theorem, remark

#show: course.with(
  title: "Lecture Notes on Data Analysis",
  subtitle: "Probability, Statistics, and Practical Inference",
  author: "Steven",
  term: "2026",
)

#outline(title: "Contents")
#pagebreak()

#include "lectures/01-introduction.typ"
#include "lectures/02-descriptive-statistics.typ"

#bibliography("bibliography/references.bib", title: "References")
