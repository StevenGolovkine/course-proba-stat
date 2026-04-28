#let course(
  title: "Lecture Notes",
  subtitle: none,
  author: none,
  term: none,
  body,
) = {
  set document(title: title)
  set page(
    paper: "us-letter",
    margin: (x: 1in, y: 0.85in),
    numbering: "1",
    header: context {
      if counter(page).get().first() > 1 [
        #text(size: 9pt, fill: luma(90%))[
          #title
        ]
      ]
    },
  )
  set text(font: "Libertinus Serif", size: 11pt, lang: "en")
  set heading(numbering: "1.1")
  set par(justify: true, leading: 0.62em)
  set math.equation(numbering: "(1)")
  show link: set text(fill: rgb("245f9f"))
  show raw.where(block: true): set block(
    fill: luma(96%),
    inset: 8pt,
    radius: 4pt,
  )

  [
    #align(center)[
      #v(1.5cm)
      #text(size: 24pt, weight: "bold")[#title]
      #if subtitle != none [
        #v(0.35cm)
        #text(size: 14pt, fill: luma(35%))[#subtitle]
      ]
      #if author != none or term != none [
        #v(0.8cm)
        #text(size: 11pt)[
          #if author != none [#author]
          #if author != none and term != none [ #sym.dot.c ]
          #if term != none [#term]
        ]
      ]
    ]

    #v(1.5cm)
    #body
  ]
}

#let note-block(title, body, fill: luma(97%), stroke: luma(82%)) = block(
  width: 100%,
  fill: fill,
  stroke: stroke,
  inset: 10pt,
  radius: 4pt,
)[
  #text(weight: "bold")[#title]
  #v(4pt)
  #body
]

#let definition(body) = note-block("Definition", body, fill: rgb("f4f8fb"), stroke: rgb("bdd6e8"))
#let theorem(body) = note-block("Theorem", body, fill: rgb("fbf8f0"), stroke: rgb("e0c982"))
#let example(body) = note-block("Example", body, fill: rgb("f5fbf4"), stroke: rgb("b9d8b2"))
#let remark(body) = note-block("Remark", body, fill: luma(97%), stroke: luma(82%))
