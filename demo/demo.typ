#import "@local/skolar:0.1.0": *

// TODO replace lorem with typst's lorem function
// TODO add spacing and background color around code blocks
// TODO reduce code block font size
// TODO set code block font family

#let meta = (
  title: "Projeto de Jogo: Nefthera",
  author: "Juno Takano",
  course: "Desenvolvimento de Jogos",
  course_id: "DJOI5",
  date: datetime.today().display("[day]/[month]/[year]"),
)

#gen_doc(properties: meta)[

  = #lorem(3)

  #lorem(60)

  $
    7.32 beta +
    sum_(i=0)^nabla
    (Q_i (a_i - epsilon)) / 2 arrow.squiggly
    v := vec(x_1, x_2, x_3)
  $

  #lorem(30)

  #fig("img/ocaml.svg", "Logo for the OCaml programming language")

  #lorem(30)

  #table(
    columns: (auto, auto, auto, auto, auto),
    inset: 8pt,
    align: center,
    [*Process*], [_*Burst*_], [*Arrival*], [_*Turnaround*_], [*Wait*],
    [P2],         [1],         [0],         [1],              [0],
    [P4],         [1],         [0],         [2],              [1],
    [Total],      [19],        [0],         [35],             [16],
    [Média],      [3.8],       [0],
    [#text(green)[*7*]], [#text(green)[*3.2*]],
  )

  #lorem(30)

  = #lorem(5)

  #lorem(50)

  == #lorem(2)

  ```ocaml
    start "Assembling file paths" ;
    step "Filtering files not on PATH" ;;
    let get_exit c = command ("which " ^ c ^ "> /dev/null") = 0
    let rec filter_empty = function
      | [] -> []
      | h :: t -> if get_exit h then h :: filter_empty t else filter_empty t ;;
    let existing_paths = filter_empty args ;;
  ```

  #lorem(100)

  == #lorem(4)

  #lorem(50)

  == #lorem(3)

  #lorem(20)

  === #lorem(6)

  #lorem(30)

  === #lorem(3)

  #lorem(20)

]
