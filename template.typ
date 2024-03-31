#let properties_schema = (
  title: "Document Title",
  author: "Author Name",
  course: "Course Name",
  course_id: "COURSE_ID",
  date: datetime.today().display("[day]/[month]/[year]"),
  landscape: false,
  margin_x: 2cm,
  margin_y: 2cm,
  paper: "a5",
)

// completes the user-provided properties with default values for missing fields
#let set_properties(user_properties) = {
  let completed_properties = (:)
  for (key, value) in properties_schema {
    completed_properties.insert(key, user_properties.at(key, default: value))
  }
  completed_properties
}

#let gen_head(properties) = {
  align(center, [
    #text(size: 1.8em, font: "Baskerville", properties.title) \
    #text(size: 1.0em, font: "LT Remark", pad(properties.course))
    #text(size: 1.0em, font: "Alegreya", properties.author) \
    #text(size: 0.6em, font: "Wittgenstein", properties.date)
    #v(30pt)
  ])
}

#let fig(path, caption) = {
  pad(y: 2em, [
    #figure(
      image(path, width: 100%),
      caption: caption
    )
  ])
}

#let footer_lead(properties) = [Trabalho realizado para a disciplina de #properties.course (#properties.course_id) do curso de _Análise e Desenvolvimento de Sistemas_ do Instituto Federal de São Paulo, campus Jacareí.]

#let pager(properties, loc) = {
  let page = counter(page).at(loc)
  if page.at(0) == 1 {
    [
      #line(length: 20%, stroke: 0.2pt)
      #text(font: "Baskerville", size: 7pt, footer_lead(properties))
    ]
  } else {
    align(center, [#page.at(0)])
  }
}

#let gen_doc(body, properties: {}) = {

  properties = set_properties(properties)

  set document(
    title: properties.title,
    author: properties.author,
    date: auto,
    keywords: (properties.course, properties.course_id, "IFSP", "IFSP-JCR"),
  )

  set text(font: "Baskerville", size: 10pt, lang: "pt")
  set heading(numbering: "1.")
  set enum(numbering: "1.1.", full: true)
  set par(justify: true, leading: 0.7em,)
  set quote(block: true, quotes: true)
  set footnote.entry(gap: 1em, clearance: 1em)

  show quote: set text(style: "italic")
  show figure: set figure(gap: 2em)
  show ref: set text(rgb("#308280"))
  show link: underline

  set page(
    paper: properties.paper,
    flipped: properties.landscape,
    margin: (x: properties.margin_x, y: properties.margin_y),
    numbering: "1",
    footer: locate(loc => pager(properties, loc)),
    footer-descent: 20%
  )

  gen_head(properties)
  body
}
