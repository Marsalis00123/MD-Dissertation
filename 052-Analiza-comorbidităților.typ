== Rezultatele analizei comorbidităților

În cadrul analizei asupra pacienților diagnosticați cu spondilodiscită, au fost evaluate comorbiditățile asociate acestora. În @top-comorbiditati sunt prezentate frecvențele celor mai comune 10 comorbidități la această cohortă de pacienți. Hipertensiunea arterială (HTA) a fost cea mai frecvent întâlnită comorbiditate, cu un număr de 25 de cazuri, urmată de diabet zaharat tip II (DZ II) cu 12 cazuri și insuficiență cardiacă cronică (ICC) cu 10 cazuri. Alte comorbidități notabile includ fibrilația atrială (FIA), obezitatea, anemia și insuficiența renală cronică (IRC), toate având o frecvență mai redusă.

#figure(
  image("Files/top-comorbiditati.png"),
  caption: [Principalele comorbidități asociate la pacienții diagnosticați cu spondilodiscită],

  kind: "AA",
) <top-comorbiditati>


== Media investigațiilor per comorbiditate

În ceea ce privește media investigațiilor necesare în funcție de comorbiditate, s-au înregistrat următoarele valori:

- HTA: 1.69
- Diabet zaharat tip II: 1.92
- Insuficiență cardiacă congestivă: 1.70
- Fibrilație atrială: 1.25
- Spondilodiscită: 1.62

Aceste valori sugerează variații în numărul de investigații imagistice efectuate în funcție de comorbiditatea asociată.

== Rezultatele regresiei Poisson

Analiza regresiei Poisson, reprezentată în @tbl-poisson-log și în @tbl-poisson-comorbiditati, a evaluat influența comorbidităților asupra numărului de investigații efectuate. Modelul include datele a 48 de observații, iar pseudo R-squared a fost 0.01596, indicând o variație modestă explicată de model. În ciuda faptului că modelul a atins convergența (Log-Likelihood: -66.436), rezultatele nu au indicat un impact statistic semnificativ pentru majoritatea comorbidităților analizate.
#figure(
  table(
    columns: (1fr, 1fr),
    inset: 10pt,
    align: top,
    table.header(
      [*Variabilă*], [*Valoare*],
    ),
    [Variabilă dependentă], [num_investigations],
    [Număr de observații], [48],
    [Model], [Poisson],
    [Grade de libertate reziduale], [42],
    [Metodă], [MLE],
    [Grade de libertate model], [5],
    [Data], [03 Oct 2024],
    [Pseudo R-pătrat], [0.01596],
    [Timp], [12:39:34],
    [Log-Likelihood], [-66.436],
    [Convergență], [Da],
    [LL-Null], [-67.514],
    [Tip de covarianță], [nonrobust],
    [LLR p-value], [0.8272]
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Rezultatele modelului Poisson pentru variabila dependentă num_investigations.",
)<tbl-poisson-log>

Coeficienții și intervalele de încredere pentru comorbidități sunt după cum urmează:

- *HTA*: Coeficient de -0.1015, ceea ce sugerează o scădere de 9.65% a numărului de investigații pentru pacienții cu HTA (p-value: 0.6746).
- *Diabet zaharat tip II*: Creștere de 17.52% a investigațiilor (coeficient de 0.1614, p-value: 0.5242).
- *Insuficiență cardiacă congestivă*: Creștere nesemnificativă de 2.65% a investigațiilor (coeficient de 0.0261, p-value: 0.9273).
- *Fibrilație atrială*: Reducere de 33.11% a investigațiilor (coeficient de -0.4021, p-value: 0.2492).
- *Spondilodiscită*: Scădere de 7.08% a investigațiilor (coeficient de -0.0734, p-value: 0.8188).

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: top,
    table.header(
      [*Variabilă*], [*Coeficient*], [*Eroare std*], [*z*], [*P>|z|*], [*0.025*], [*0.975*],
    ),
    [Intercept], [0.6463], [0.185], [3.490], [0.000], [0.283], [1.009],
    [has_hta], [-0.1015], [0.242], [-0.420], [0.675], [-0.575], [0.372],
    [has_dz_ii], [0.1614], [0.253], [0.637], [0.524], [-0.335], [0.658],
    [has_icc], [0.0261], [0.286], [0.091], [0.927], [-0.535], [0.587],
    [has_fia], [-0.4021], [0.349], [-1.152], [0.249], [-1.086], [0.282],
    [has_SD], [-0.0734], [0.320], [-0.229], [0.819], [-0.701], [0.555]
  ),
  kind: "table",
  supplement: "Tabelul",
  caption: "Rezultatele analizei Poisson pentru asocierea comorbidităților cu numărul de investigații.",
)<tbl-poisson-comorbiditati>


Aceste rezultate subliniază faptul că, deși există diferențe în numărul mediu de investigații necesare pentru fiecare comorbiditate, aceste variații nu au fost suficient de semnificative din punct de vedere statistic pentru a trage concluzii ferme.