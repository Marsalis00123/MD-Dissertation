== Analiza impactului rapoartelor imagistice asupra deciziilor terapeutice în spondilodiscite //check contingență fischer

Datele prezentate în @tratament-caracteristici reflectă procentul de pacienți care au primit tratamente conservatoare sau chirurgicale în funcție de fiecare caracteristică imagistică. Graficul evidențiază distribuția pacienților care au avut anumite semne radiologice sau caracteristici vizibile în imagistica medicală și cum aceste caracteristici au influențat decizia terapeutică.

#figure(
  image("Files/tratament-caracteristici.png"),
  caption: [Distribuția comparativă a tratamentului conservator versus chirurgical în funcție de caracteristicile imagistice],

  kind: "AA",
  supplement: "Figura",
) <tratament-caracteristici>

=== Caracteristicile imagistice și tratamentele asociate

- *Edem*: La 43.8% din pacienți tratați conservator și la 33.3% din cei tratați chirurgical s-a observat că edemul, în mod frecvent asociat cu inflamația, a impus decizii mai conservatoare pentru majoritatea pacienților.
- *Eroziuni*: Caracteristică observată la 41.7% dintre pacienți cu tratament conservator și 33.3% la cei chirurgicali. Eroziunile osoase pot indica progresia bolii, însă majoritatea cazurilor au fost gestionate conservator.
- *Colecții*: Au impus intervenții chirurgicale în 27.1% dintre cazuri, comparativ cu 25% gestionate conservator. Acest aspect sugerează o ușoară preferință pentru tratamentele chirurgicale în prezența colecțiilor, probabil pentru drenajul acestora.
- *Tasări*: Au fost observate la 12.5% dintre pacienții tratați chirurgical și la 10.4% din cei tratați conservator, indicând o intervenție chirurgicală mai frecventă în cazurile cu tasări vertebrale.
- *Stenoză* și *Amprentare medulară*: Ambele au avut o distribuție relativ egală între tratamentele conservatoare și chirurgicale, sugerând că decizia terapeutică poate depinde de alți factori clinici.

Alte caracteristici, precum *fracturile*, *abscesul*, *cardiomegalia*, *osteofitele*, au fost distribuite mai uniform între tratamentele chirurgicale și conservatoare, fără diferențe majore.

=== Tabele de contingență //check
Am analizat asocierea între caracteristicile imagistice (prezența eroziunilor, colecțiilor și herniei de disc lombare) și decizia terapeutică (chirurgicală versus non-chirurgicală) folosind testul Fisher exact. În @tbl-eroziuni, @tbl-colectii și @tbl-hdl sunt prezentate tabelele de contingență și valorile p corespunzătoare.
// Tabel pentru eroziuni
#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: top,
    table.header(
      [*Eroziuni*], [*Non-chirurgical*], [*Chirurgical*],
    ),
    [Absenta], [46], [43],
    [Prezenta], [21], [16],
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Tabel de contingență pentru eroziuni (p = 0.6961)",
)<tbl-eroziuni>

// Tabel pentru colecții
#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: top,
    table.header(
      [*Colecții*], [*Non-chirurgical*], [*Chirurgical*],
    ),
    [Absenta], [55], [46],
    [Prezenta], [12], [13],
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Tabel de contingență pentru colecții (p = 0.6561)",
)<tbl-colectii>

// Tabel pentru hdl
#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: top,
    table.header(
      [*HDL*], [*Non-chirurgical*], [*Chirurgical*],
    ),
    [Absenta], [64], [55],
    [Prezenta], [3], [4],
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Tabel de contingență pentru HDL (p = 0.7049)",
)<tbl-hdl>

Din totalul de 48 de pacienți analizați, prezența eroziunilor a fost observată la 37 de pacienți (29.4%), dintre care 16 au fost tratați chirurgical și 21 non-chirurgical. Nu s-a identificat o asociere semnificativă statistic între prezența eroziunilor și decizia terapeutică (p = 0.6961).
Colecțiile au fost prezente în 25 de cazuri (19.8%), cu 13 pacienți în grupul chirurgical și 12 în cel non-chirurgical. Analiza statistică nu a demonstrat o asociere semnificativă între prezența colecțiilor și modalitatea de tratament aleasă (p = 0.6561).
Hernia de disc lombară a fost identificată la 7 pacienți (5.6%), dintre care 4 au fost tratați chirurgical și 3 non-chirurgical. Nu s-a evidențiat o asociere semnificativă statistic între prezența HDL și decizia terapeutică (p = 0.7049).



//  *TREBUIE MODIFICAT CU FICHER + Scos valorile p = 1*

// Testele statistice asociate fiecărei caracteristici imagistice, incluzând Chi-square și Fisher's exact test, au indicat valori *p* mari (p > 0.05), ceea ce sugerează că nu există diferențe semnificative statistic între cele două grupuri terapeutice în funcție de aceste caracteristici imagistice specifice.

// #figure(
//   table(
//     columns: (1fr, 1fr, 1fr),
//     inset: 10pt,
//     align: top,
//     table.header(
//       [*Caracteristică Imagistică*], [*Testul statistic*], [*p-value*],
//     ),
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
//     [cardiomegalie], [Fisher's exact test], [1.000000]
//   ),
//   kind: "table",
//   supplement: "Tabelul",
//   caption: "Rezultatele testelor statistice pentru caracteristicile imagistice asociate.",
// )<tbl-img-trat>


// Rezultatele acestor teste arată că, deși există diferențe în distribuția tratamentelor pentru diversele caracteristici imagistice, aceste diferențe nu au fost semnificative din punct de vedere statistic.