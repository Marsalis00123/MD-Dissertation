// Workaround for the lack of an `std` scope.
#let std-bibliography = bibliography

// This function gets your whole document as its `body` and formats
// it as an article in the style of the IEEE.
#let tpl(
  // The paper's title.
  title: [Paper Title],
  authors: (),
  abstract: none,
  index-terms: (),
  paper-size: "a4",
  bibliography: none,
  chapter-pagebreak: true,

  body
) = {
  // Set document metadata.
  set document(title: title, author: authors.map(author => author.name))
  set text(font: "Charter", size: 12pt)

  // Configure paragraph properties.
  // Default leading is 0.65em, 1.5 lines is about 1em.
  set par(leading: 0.65em, linebreaks: "optimized")
  // Default spacing is 1.2em.
  show par: set block(spacing: 1.35em)
  // Configure headings.
  // Add vertical space after headings.
  show heading: it => { 
    v(3%, weak: true) 
  if it.level == 1 [
    #pagebreak()
    #it
    #v(13.75pt, weak: true)] else {
      it
    }
  }
  // Do not hyphenate headings.
  show heading: set text(hyphenate: false, size: 18pt)
  show heading: set par(leading: 0.5em)
  //set enum(numbering: "1.")
  set heading(numbering: "I.")


  // Tables & figures
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: table): set text(size: 12pt)
  //show figure.where(kind: table): set figure(placement: top)
  show figure.caption.where(kind: table): smallcaps
  show figure.where(kind: table): set figure(supplement: [Tabelul],numbering: "I")
  
  show figure.where(kind: image): set figure(supplement: [Figura], numbering: "1")
  //show figure.where(kind: image): set figure(placement: top)
  show figure.where(kind: raw): set figure(supplement: [Figura], numbering: "1")
  show figure.caption: set text(size: 12pt)
  
  // Configure the page.
  set page(
    paper:"a4",
    numbering: "1.",
    header: text(size: 8pt)[
      #grid(columns: (1fr,1fr),
      align(left)[Faculatea de medicină și farmacie "Carol Davila" București],
      //align(right)[placeholder]
    )
    ], 
  )

  // Configure lists.
  set enum(indent: 10pt, body-indent: 9pt)
  set list(indent: 10pt, body-indent: 9pt)

  
  // Display the paper's contents.
  body

  // Display bibliography.
  if bibliography != none {
    show std-bibliography: set text(12pt)
    set std-bibliography(style: "vancouver")
    bibliography
  }
}