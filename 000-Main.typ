// Antet Typst ↓
//#set par(justify: true)
//#set page(margin: 1.75in)
#import "@preview/codly:1.1.1": *
#import "@preview/codly-languages:0.1.1": *
// Pagina și limba
#set text(lang: "ro")
#set par(leading: 1.5em, justify: true)
#set text(font: "New York Small", size: 12pt)
#set page(paper: "a4", numbering: "1", number-align: center)

// Headings
#set heading( numbering: "1.1.1.", supplement: [capitolul])
#show heading: set block(above: 1.5em, below: 1em)

// Tables & figures
//show figure.where(kind: table): set figure(placement: top)
//#show figure.caption.where(kind: "table"): smallcaps
#show figure.where(kind: "table"): set figure.caption(position: top)
#show figure.where(kind: "table"): set text(size: 11pt)
#show figure.where(kind: "table"): set par(leading: 1em)
#show figure.where(kind: "table"): set figure(supplement: [Tabelul],numbering: "I")

#show table.cell.where(y: 0): set text(weight: "medium")
#show table.cell.where(x: 1): set text(weight: "bold")
// Codly
#show: codly-init.with()
#codly(zebra-fill: none)
#codly(number-format: none)
#codly(stroke: 1pt + rgb("#3776ab"))

#codly(
  languages: (
    python: (name: "Python", icon: "🐍", color: rgb("#ffd343")),
  )
)




#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#set table(
  fill: (rgb("EAF2F5"), none),
  stroke: frame(rgb("21222C")),
)
// Figuri AA
#show figure.where(kind: "AA"): set figure(numbering: "1")
#show figure.where(kind: "AA"): set text(size: 10pt)
#show figure.where(kind: "AA"): set par(leading: 1em)
  // set par(leading: 1em)
  

// #show figure.where(kind: image): set figure(placement: top)
// #show figure.where(kind: "raw"): set figure(supplement: [Figura], numbering: "1")
//#show figure.caption: set text(size: 11pt)

// heading custom name before number
// 
//
// #show: tpl.with(
  //bibliography: bibliography("My_Library.bib", style: "vancouver"),
//)
// Document begins here!

// Title page in another app


// Table of contents
#pagebreak(weak: true)
#outline(fill: line(length: 100%), depth: 1)

#pagebreak(weak: true)
#include "010-Introducere.typ"
#pagebreak(weak: true)
#include "021-Spondilodiscita.typ"
#pagebreak(weak: true)
#include "022-EtiologieSD.typ"
#pagebreak(weak: true)
#include "023-Epidemiologie.typ"
#pagebreak(weak: true)
#include "031-Rolul-imagisticii-diagnostic.typ"
#pagebreak(weak: true)
#include "032-planificarea-tratamentului.typ"
#include "033-monitorizare-tratament.typ"
#pagebreak(weak: true)
#include "034-Diagnosticul-imagistic-al-SD.typ"
#pagebreak()



#pagebreak(weak: true)
// = Partea specială
#include "041-includere-excludere.typ"
#include "042-Metodele-statistice-folosite-în-studiu.typ"
#include "043-Programul-de-analiză-a-datelor.typ"
#include "044-Reprezentarea-vizuală-a-datelor-și-analiza-statistică-a-cohortei-studiate.typ"

// = Rezultate
#include "051-Analiza-statistică-descriptivă.typ"
#include "052-Analiza-comorbidităților.typ"
#include "053-Analiza-impactului-rapoarterelor-a-a.typ"
#include "054-Corelația-între-imagistică-și-evoluția-clinică.typ"
#include "055-Influența-segmentului-afectat.typ"
#include "056-Analiza complicațiilor-post-tratament.typ"





#pagebreak(weak: true)
// = Interpretarea datelor


// #figure(
//   table(
//     columns: (1fr, 1fr, 1fr),

//     table.header[*Caracteristică Imagistică*][*Testul statistic*][*p-value*],
//     [fracturi], [Fisher's exact test], [0.246011],
//     [colecții], [Chi-square test], [0.362806],
//     [gadolinofilie], [Fisher's exact test], [0.641273],
//     [hdl], [Fisher's exact test], [0.682985],
//     [eroziuni], [Chi-square test], [1.000000],
//     [tasări], [Chi-square test], [1.000000],
//     [edem], [Chi-square test], [1.000000],
//     [stenoză], [Chi-square test], [1.000000],
//     [amprentare_medulară], [Fisher's exact test], [1.000000],
//     [osteofite], [Fisher's exact test], [1.000000],
//     [deshidratări_discale], [Fisher's exact test], [1.000000],
//     [iodofilie], [Fisher's exact test], [1.000000],
//     [hemangioame], [Fisher's exact test], [1.000000],
//     [abces], [Fisher's exact test], [1.000000],
//     [anterolistezis], [Fisher's exact test], [1.000000],
//     [cardiomegalie], [Fisher's exact test], [1.000000],
//     ), caption: [Rezultatele testelor statistice pentru caracteristicile imagistice ale pacienților cu spondilodiscită)],
// kind: "table",
// )


// text @tb-DSI_vs_MODIC

// #figure(
//   image("Files/tb-DSI_vs_MODIC.png"),
//   caption: [Compararea modificărilor degenerative Modic de tip I cu infecțiile spinale, evidențiind diferențele imagistice pe secvențele T1, T2 și T1 cu contrast (T1 K)],

//   kind: "table",
// ) <tb-DSI_vs_MODIC>


// Bibiliografie
#pagebreak(weak: true)
#bibliography("My_Library.bib", style: "vancouver")
