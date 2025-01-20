== Analiza impactului rapoartelor imagistice asupra deciziilor terapeutice în spondilodiscite

Datele prezentate în @tratament-caracteristici reflectă procentul de pacienți care au primit tratamente conservatoare sau chirurgicale în funcție de fiecare caracteristică imagistică. Graficul evidențiază distribuția pacienților care au avut anumite semne radiologice sau caracteristici vizibile în imagistica medicală și cum aceste caracteristici au influențat decizia terapeutică.

#figure(
  image("Files/tratament-caracteristici.png"),
  caption: [Distribuția comparativă a tratamentului conservator versus chirurgical în funcție de caracteristicile imagistice],

  kind: "AA",
) <tratament-caracteristici>

== Caracteristicile imagistice și tratamentele asociate

- *Edem*: La 43.8% din pacienți tratați conservator și la 33.3% din cei tratați chirurgical s-a observat că edemul, în mod frecvent asociat cu inflamația, a impus decizii mai conservatoare pentru majoritatea pacienților.
- *Eroziuni*: Caracteristică observată la 41.7% dintre pacienți cu tratament conservator și 33.3% la cei chirurgicali. Eroziunile osoase pot indica progresia bolii, însă majoritatea cazurilor au fost gestionate conservator.
- *Colecții*: Au impus intervenții chirurgicale în 27.1% dintre cazuri, comparativ cu 25% gestionate conservator. Acest aspect sugerează o ușoară preferință pentru tratamentele chirurgicale în prezența colecțiilor, probabil pentru drenajul acestora.
- *Tasări*: Au fost observate la 12.5% dintre pacienții tratați chirurgical și la 10.4% din cei tratați conservator, indicând o intervenție chirurgicală mai frecventă în cazurile cu tasări vertebrale.
- *Stenoză* și *Amprentare medulară*: Ambele au avut o distribuție relativ egală între tratamentele conservatoare și chirurgicale, sugerând că decizia terapeutică poate depinde de alți factori clinici.

Alte caracteristici, precum *fracturile*, *abscesul*, *cardiomegalia*, *osteofitele*, au fost distribuite mai uniform între tratamentele chirurgicale și conservatoare, fără diferențe majore.

== Testele statistice
 *TREBUIE MODIFICAT CU FICHER + Scos valorile p = 1*

Testele statistice asociate fiecărei caracteristici imagistice, incluzând Chi-square și Fisher's exact test, au indicat valori *p* mari (p > 0.05), ceea ce sugerează că nu există diferențe semnificative statistic între cele două grupuri terapeutice în funcție de aceste caracteristici imagistice specifice.

#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: top,
    table.header(
      [*Caracteristică Imagistică*], [*Testul statistic*], [*p-value*],
    ),
    [fracturi], [Fisher's exact test], [0.246011],
    [colecții], [Chi-square test], [0.362806],
    [gadolinofilie], [Fisher's exact test], [0.641273],
    [hdl], [Fisher's exact test], [0.682985],
    [eroziuni], [Chi-square test], [1.000000],
    [tasări], [Chi-square test], [1.000000],
    [edem], [Chi-square test], [1.000000],
    [stenoză], [Chi-square test], [1.000000],
    [amprentare_medulară], [Fisher's exact test], [1.000000],
    [osteofite], [Fisher's exact test], [1.000000],
    [deshidratări_discale], [Fisher's exact test], [1.000000],
    [iodofilie], [Fisher's exact test], [1.000000],
    [hemangioame], [Fisher's exact test], [1.000000],
    [abces], [Fisher's exact test], [1.000000],
    [anterolistezis], [Fisher's exact test], [1.000000],
    [cardiomegalie], [Fisher's exact test], [1.000000]
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Rezultatele testelor statistice pentru caracteristicile imagistice asociate.",
)<tbl-img-trat>


Rezultatele acestor teste arată că, deși există diferențe în distribuția tratamentelor pentru diversele caracteristici imagistice, aceste diferențe nu au fost semnificative din punct de vedere statistic.