#let doc = (
  title: "Relatório final para avaliação",
  author: "Juno Takano",
  course: "Sistemas Operacionais",
  course_id: "SOPI4",
  date: datetime.today().display("[day]/[month]/[year]"),
)

#set document(
  title: doc.title,
  author: doc.author,
  date: auto,
  keywords: (doc.course, doc.course_id, "IFSP", "IFSP-JCR"),
)

#set page(paper: "a5", margin: (x: 2cm, y: 2cm))
#set text(font: "Wittgenstein", size: 10pt, lang: "pt")
#set heading(numbering: "1.")
#set enum(numbering: "1.1.", full: true)
#set par(justify: true, leading: 0.7em,)
#set quote(block: true, quotes: true)
#set footnote.entry(gap: 1em, clearance: 1em)
#show figure: set figure(gap: 2em)
#show ref: set text(rgb("#308280"))
#show link: underline

#let fig(path, caption) = {
  pad(y: 2em, [
    #figure(
      image(path, width: 100%),
      caption: caption
    )
  ])
}

#align(center, [
  #text(size: 1.5em, weight: "bold", font: "", doc.title) \
  #text(size: 1.0em, weight: "bold", font: "", pad(doc.course))
  #text(size: 1.0em, font: "", [#doc.author]) \
  #text(size: 0.8em, font: "", doc.date)
])

#v(30pt)

== Section

Etiam mors, quae quasi titillaret sensus, ut ita ruant itaque turbent, ut earum motus et impetus quo pertineant non intellegamus, tu tam egregios viros censes tantas res gessisse sine causa? Quae fuerit causa, mox videro; interea hoc tenebo, si ob aliquam causam ista, quae sine dubio praeclara sunt, fecerint, virtutem iis per se esse fugiendam temperantiamque expetendam, non quia voluptates fugiat, sed quia pacem animis afferat et eos quasi concordia quadam placet ac leniat. Temperantia est enim, quod tibi ita videri necesse est, non expeteretur, si nihil tale metuamus. Iam.

In morbos gravis, tum in morbos gravis, tum in damna, tum in damna, tum in dedecora incurrunt, saepe etiam legum iudiciorumque poenis obligantur. Qui autem ita frui volunt voluptatibus, ut nulli propter eas consequantur dolores, et qui suum iudicium retinent.

#fig("img/ocaml.svg", "Logotipo da linguagem de programação OCaml")

Quietae, beatae vitae deduceret? Qui quod tibi ita videri necesse est, quid aut ad bene vivendum aptior partitio quam illa.

Ignem, nivem esse albam, dulce mel. Quorum nihil oportere exquisitis rationibus confirmare, tantum satis esse admonere. Interesse enim inter argumentum conclusionemque rationis et inter mediocrem animadversionem atque admonitionem. Altera occulta quaedam et horrida, de malis Graecis Latine scripta deterius. Quibus.

Eo delectari, quod ista Platonis, Aristoteli, Theophrasti orationis ornamenta neglexerit. Nam illud quidem adduci vix possum, ut ea, quae audiebamus, conferebamus, neque erat umquam controversia, quid ego intellegerem, sed quid probarem. Quid igitur est? Inquit; audire enim cupio, quid non probes eius, a quo dissentias. Quid enim est a Chrysippo praetermissum in Stoicis? Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Quid? Theophrastus mediocriterne delectat, cum tractat locos ab Aristotele ante tractatos? Quid? Epicurei num.

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 8pt,
  align: center,
  [*Processo*], [_*Burst*_], [*Chegada*], [_*Turnaround*_], [*Espera*],
  [P2],         [1],         [0],         [1],              [0],
  [P4],         [1],         [0],         [2],              [1],
  [Total],      [19],        [0],         [35],             [16],
  [Média],      [3.8],       [0],
  [#text(green)[*7*]], [#text(green)[*3.2*]],
)

```ocaml
  start "Assembling file paths" ;
  step "Filtering files not on PATH" ;;
  let get_exit c = command ("which " ^ c ^ "> /dev/null") = 0
  let rec filter_empty = function
    | [] -> []
    | h :: t -> if get_exit h then h :: filter_empty t else filter_empty t ;;
  let existing_paths = filter_empty args ;;
```

$
  7.32 beta +
  sum_(i=0)^nabla
  (Q_i (a_i - epsilon)) / 2 arrow.squiggly
  v := vec(x_1, x_2, x_3) 
$


