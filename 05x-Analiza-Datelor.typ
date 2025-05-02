= Rezultate <rezultate>
== Analiza statistică descriptivă
=== Distribuția pe vârste //check

În cadrul studiului au fost incluse 48 de cazuri. Vârsta medie a pacienților a fost de 63,5 ani, cu o deviație standard de 10,73 ani, ceea ce indică o variabilitate moderată a vârstelor în cadrul lotului studiat. Vârsta minimă observată în eșantion a fost de 39 de ani, în timp ce vârsta maximă a fost de 86 de ani. În ceea ce privește distribuția vârstelor, percentila 25 a fost de 54,75 ani, mediana (percentila 50) a fost de 65,5 ani, iar percentila 75 a fost de 71,25 ani. Aceste date sugerează o concentrare a vârstelor în jurul valorii medii, majoritatea pacienților fiind în a doua jumătate a vieții, datele sunt reprezentate în @tbl-age-d.
#figure(
  table(
  columns: (1fr, 1fr),
  inset: 10pt,
  align: top,
  table.header(
    [*Statistică*], [*Vârsta*],
  ),
  [Număr], [48 ],
  [Medie], [63.5 ],
  [Deviația Standard], [10.73 ],
  [Minim], [39 ],
  [Percentila 25], [54.75 ],
  [Mediana (Percentila 50)], [65.5 ],
  [Percentila 75], [71.25 ],
  [Maxim], [86],),
  kind: "table",
supplement: "Tabelul",
caption: "Statistica descriptivă a vârstelor pacienților cu spondilodiscită incluși în studiu."
)<tbl-age-d>


=== Distribuția pe genuri //check

Din cele 48 de cazuri analizate, 30 de pacienți au fost de sex masculin, iar 18 pacienți de sex feminin. Această distribuție reflectă o preponderență a bărbaților în cohorta studiată, bărbații reprezentând aproximativ 62,5% din totalul pacienților, iar femeile 37,5%, datele sunt reprezentate în @tbl-gen-d și reprezentate grafic în @gen-freq.

#figure(
  table(
  columns: (1fr, 1fr),
  inset: 10pt,
  align: top,
  table.header(
    [*Gen*], [*Număr*],
  ),
  [Masculin], [30 ],
  [Feminin], [18],),
  kind: "table",
supplement: "Tabelul",
caption: "Statistica descriptivă a vârstelor pacienților cu spondilodiscită incluși în studiu."
)<tbl-gen-d>

#figure(
  image("Files/gen-freq.png", width: 80%),
  caption: [Distribuția genurilor incluse în studiu
  ],
  supplement: "Figura",
  kind: "AA"
)<gen-freq>

=== Frecvența modalităților imagistice utilizate //check

În ceea ce privește investigațiile imagistice efectuate, s-au înregistrat 38 de cazuri în care s-a utilizat imagistica prin rezonanță magnetică (IRM), fiind cea mai frecventă metodă utilizată. Tomografia computerizată (CT) a fost folosită în 24 de cazuri, radiografia (RX) în 18 cazuri, iar ecografia (ECO) a fost utilizată doar în 5 cazuri. Aceste date subliniază preferința pentru investigațiile de înaltă rezoluție, precum IRM și CT, în evaluarea pacienților din acest studiu @tbl-img-d.

#figure(
  table(
  columns: (1fr, 1fr),
  inset: 10pt,
  align: top,
  table.header(
    [*Modalitate*], [*Număr*],
  ),
  [IRM], [38 ],
  [CT], [24],
  [RX], [18],
  [ECO], [5],
  
  
  ),
  kind: "table",
supplement: "Tabelul",
caption: "Frecvența modalităților imagistice utilizate în evaluarea pacienților cu spondilodiscită."
)<tbl-img-d>

Reprezentate grafic sunt frecvența modalităților imagistice în @img-freq și frecvența apariției caracteristicilor imagistice care apar în cochortă în @freq-cara. Decizia terapeutică, între tratamentul conservator sau chirurgical, este reprezentat grafic pentru comparație în @treat-cons-sur.

#figure(
  image("Files/img-freq.png", width: 80%),
  caption: [Distribuția modalităților de imagistică utilizate în diagnosticare
  ],
  supplement: "Figura",
  kind: "AA"
)<img-freq>

#figure(
  image("Files/freq-cara.png", width: 80%),
  caption: [Frecvența caracteristicilor imagistice observate în investigații
  ],
  supplement: "Figura",
  kind: "AA"
)<freq-cara>

#figure(
  image("Files/treat-cons-sur.png"),
  caption: [Distribuția abordărilor terapeutice: tratament conservator versus chirurgical
  ],
  supplement: "Figura",
  kind: "AA"
)<treat-cons-sur>


== Analiza comorbidităților și impactul lor asupra investigațiilor medicale //check regresie
// Analiza comorbidităților și impactul lor asupra investigațiilor medicale
În cadrul analizei asupra pacienților diagnosticați cu spondilodiscită, au fost evaluate comorbiditățile asociate acestora. În @top-comorbiditati sunt prezentate frecvențele celor mai comune 10 comorbidități la această cohortă de pacienți. Hipertensiunea arterială (HTA) a fost cea mai frecvent întâlnită comorbiditate, cu un număr de 25 de cazuri, urmată de diabet zaharat tip II (DZ II) cu 12 cazuri și insuficiență cardiacă cronică (ICC) cu 10 cazuri. Alte comorbidități notabile includ fibrilația atrială (FIA), obezitatea, anemia și insuficiența renală cronică (IRC), toate având o frecvență mai redusă.

#figure(
  image("Files/top-comorbiditati.png"),
  caption: [Principalele comorbidități asociate la pacienții diagnosticați cu spondilodiscită],

  kind: "AA",
) <top-comorbiditati>


=== Media investigațiilor per comorbiditate //check

În ceea ce privește media investigațiilor necesare în funcție de comorbiditate, s-au înregistrat următoarele valori:

- HTA: 1.69
- Diabet zaharat tip II: 1.92
- Insuficiență cardiacă congestivă: 1.70
- Fibrilație atrială: 1.25
- Spondilodiscită: 1.62

Aceste valori sugerează variații în numărul de investigații imagistice efectuate în funcție de comorbiditatea asociată.


=== Rezultatele regersiei liniare

Analiza regresiei liniare a evidențiat următoarele rezultate:
Coeficientul de determinare $(R^2) = 0.027$, ceea ce înseamnă că doar 2.7% din variația numărului de investigații imagistice poate fi explicată de numărul de comorbidități.
P-value pentru nr_comorbiditati = 0.268


// // De scos
// == Rezultatele regresiei Poisson 

// Analiza regresiei Poisson, reprezentată în @tbl-poisson-log și în @tbl-poisson-comorbiditati, a evaluat influența comorbidităților asupra numărului de investigații efectuate. Modelul include datele a 48 de observații, iar pseudo R-squared a fost 0.01596, indicând o variație modestă explicată de model. În ciuda faptului că modelul a atins convergența (Log-Likelihood: -66.436), rezultatele nu au indicat un impact statistic semnificativ pentru majoritatea comorbidităților analizate.
// #figure(
//   table(
//     columns: (1fr, 1fr),
//     inset: 10pt,
//     align: top,
//     table.header(
//       [*Variabilă*], [*Valoare*],
//     ),
//     [Variabilă dependentă], [num_investigations],
//     [Număr de observații], [48],
//     [Model], [Poisson],
//     [Grade de libertate reziduale], [42],
//     [Metodă], [MLE],
//     [Grade de libertate model], [5],
//     [Data], [03 Oct 2024],
//     [Pseudo R-pătrat], [0.01596],
//     [Timp], [12:39:34],
//     [Log-Likelihood], [-66.436],
//     [Convergență], [Da],
//     [LL-Null], [-67.514],
//     [Tip de covarianță], [nonrobust],
//     [LLR p-value], [0.8272]
//   ),
//   kind: "table",
//   supplement: "Tabelul",
//   caption: "Rezultatele modelului Poisson pentru variabila dependentă num_investigations.",
// )<tbl-poisson-log>

// Coeficienții și intervalele de încredere pentru comorbidități sunt după cum urmează:

// - *HTA*: Coeficient de -0.1015, ceea ce sugerează o scădere de 9.65% a numărului de investigații pentru pacienții cu HTA (p-value: 0.6746).
// - *Diabet zaharat tip II*: Creștere de 17.52% a investigațiilor (coeficient de 0.1614, p-value: 0.5242).
// - *Insuficiență cardiacă congestivă*: Creștere nesemnificativă de 2.65% a investigațiilor (coeficient de 0.0261, p-value: 0.9273).
// - *Fibrilație atrială*: Reducere de 33.11% a investigațiilor (coeficient de -0.4021, p-value: 0.2492).
// - *Spondilodiscită*: Scădere de 7.08% a investigațiilor (coeficient de -0.0734, p-value: 0.8188).

// #figure(
//   table(
//     columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
//     inset: 10pt,
//     align: top,
//     table.header(
//       [*Variabilă*], [*Coeficient*], [*Eroare std*], [*z*], [*P>|z|*], [*0.025*], [*0.975*],
//     ),
//     [Intercept], [0.6463], [0.185], [3.490], [0.000], [0.283], [1.009],
//     [has_hta], [-0.1015], [0.242], [-0.420], [0.675], [-0.575], [0.372],
//     [has_dz_ii], [0.1614], [0.253], [0.637], [0.524], [-0.335], [0.658],
//     [has_icc], [0.0261], [0.286], [0.091], [0.927], [-0.535], [0.587],
//     [has_fia], [-0.4021], [0.349], [-1.152], [0.249], [-1.086], [0.282],
//     [has_SD], [-0.0734], [0.320], [-0.229], [0.819], [-0.701], [0.555]
//   ),
//   kind: "table",
//   supplement: "Tabelul",
//   caption: "Rezultatele analizei Poisson pentru asocierea comorbidităților cu numărul de investigații.",
// )<tbl-poisson-comorbiditati>


// Aceste rezultate subliniază faptul că, deși există diferențe în numărul mediu de investigații necesare pentru fiecare comorbiditate, aceste variații nu au fost suficient de semnificative din punct de vedere statistic pentru a trage concluzii ferme.





// // De scos

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

=== Tabele de contingență <date-contingență> //checkV2 <>
Am analizat asocierea între prezența caracteristicilor imagistice selectate (eroziuni, colecții și hernie de disc lombară (HDL)) și decizia terapeutică (chirurgicală versus non-chirurgicală) folosind testul Fisher exact. Caracteristicile au fost selectate datorită frecvenței lor semnificative în cohorta studiată, așa cum este ilustrat în @freq-cara. În @tbl-eroziuni, @tbl-colectii și @tbl-hdl sunt prezentate tabelele de contingență cu distribuția pacienților și valorile p corespunzătoare.
// Tabel pentru eroziuni
#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: top,
    table.header(
      [*Eroziuni*], [*Non-chirurgical*], [*Chirurgical*],
    ),
    [Absența], [7], [5],
    [Prezența], [20], [16],
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Tabel de contingență pentru eroziuni (p = 1.0000)",
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
    [Absența], [15], [8],
    [Prezența], [12], [13],
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Tabel de contingență pentru colecții (p = 0.2592)",
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
    [Absența], [24], [17],
    [Prezența], [3], [4],
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Tabel de contingență pentru HDL (p = 0.6830)",
)<tbl-hdl>
Din totalul de 48 de pacienți analizați, prezența eroziunilor a fost observată la 36 de pacienți (75.0%). Dintre aceștia, 16 au fost tratați chirurgical și 20 non-chirurgical. Testul Fisher exact nu a identificat o asociere semnificativă statistic între prezența eroziunilor și decizia terapeutică (p = 1.0000).
Colecțiile au fost prezente la 25 de pacienți (52.1%). Dintre aceștia, 13 au fost tratați chirurgical și 12 non-chirurgical. Analiza statistică nu a demonstrat o asociere semnificativă între prezența colecțiilor și modalitatea de tratament aleasă (p = 0.2592).
Hernia de disc lombară (HDL) a fost identificată la 7 pacienți (14.6%). Dintre aceștia, 4 au fost tratați chirurgical și 3 non-chirurgical. Nu s-a evidențiat o asociere semnificativă statistic între prezența HDL și decizia terapeutică (p = 0.6830).



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