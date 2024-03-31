A typst template for your university assignments.

## Installation

Because typst [doesn't yet allow templates](https://github.com/typst/typst/issues/2432) to be submitted as packages you have to clone it manually as a local package:

```sh
git clone https://github.com/jultty/skolar "$HOME/.local/share/typst/packages/local/skolar/0.2.0"
```

## Usage

Just add `#import "@local/skolar:0.2.0": *` to the head of your document and provide a properties dictionary to the `generate_document` function:

```typst
#import "@local/skolar:0.2.0": *

#let my_properties = (
  title: "Exercise: The Proxy Pattern",
  author: "Juno Takano",
  course: "Software Architecture and Development",
)

#generate_document(properties: my_properties)[

    // your content here

]
```

See the [demo](demo) for a working example.

This is the full schema of properties you can pass to the `generate_document` function along with their default values:

```typst
#let properties = (
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
```

---
For now, this template still has some hard-coded values that are specific to the São Paulo Federal Institute's Jacareí campus.
