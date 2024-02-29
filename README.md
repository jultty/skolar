A typst template for your university assignments.

## Installation

Because typst [doesn't yet allow templates](https://github.com/typst/typst/issues/2432) to be submitted as packages you have to clone it manually as a local package:

```sh
git clone https://github.com/jultty/skolar "$HOME/.local/share/typst/packages/local/skolar/0.1.0"
```

## Usage

Just add `#import "@local/skolar:0.1.0": *` do the head of your document and provide a properties dictionary to the `gen_doc` function:

```typst
#import "@local/skolar:0.1.0": *

#let meta = (
  title: "Projeto de Jogo: Nefthera",
  author: "Juno Takano",
  course: "Desenvolvimento de Jogos",
  course_id: "DJOI5",
  date: datetime.today().display("[day]/[month]/[year]"),
)

#gen_doc(properties: meta)[

    // your content here

]
```

See the [`demo.typ`](demo/demo.typ) file for a working example.

---
For now, this template still has some hard-coded values that are specific to the São Paulo Federal Institute's Jacareí campus.
