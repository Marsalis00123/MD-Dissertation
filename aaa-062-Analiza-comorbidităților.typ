== Analiza comorbidităților și impactul lor asupra investigațiilor medicale //check

Comorbiditatea, prezența simultană a două sau mai multe afecțiuni medicale la un pacient, reprezintă o provocare semnificativă în practica medicală modernă. Această analiză se concentrează asupra impactului unor comorbidități specifice asupra numărului de investigații medicale efectuate, oferind o perspectivă asupra modului în care prezența acestor afecțiuni influențează complexitatea îngrijirii medicale. După cum se poate observa în @top-comorbiditati, anumite comorbidități par să aibă un impact mai pronunțat asupra numărului de investigații.

=== Regresia liniară
Am investigat relația dintre numărul de comorbidități și frecvența investigațiilor imagistice utilizând analiza de regresie liniară simplă. Scopul principal a fost de a determina dacă există o asociere semnificativă între acești doi parametri clinici.

*Ipoteza nulă* ($H_0$) a studiului a postulat absența unei relații semnificative între numărul de comorbidități și numărul de investigații imagistice efectuate. Matematic, aceasta poate fi exprimată ca:

$ H_0: beta_1 = 0 $

unde $beta_1$ reprezintă coeficientul de regresie pentru numărul de comorbidități.

Ipoteza alternativă ($H_1$) a sugerat existența unei relații semnificative între cele două variabile:

$ H_1: beta_1 != 0 $

*Variabilele studiului*
- Variabila independentă (predictor): numărul de comorbidități ($X$)
- Variabila dependentă: numărul de investigații imagistice ($Y$)

Modelul de regresie liniară simplă utilizat poate fi exprimat prin ecuația:

$ Y = beta_0 + beta_1 X + epsilon $

unde:
- $beta_0$ reprezintă interceptul
- $beta_1 $este coeficientul de regresie
- $epsilon$ reprezintă eroarea reziduală

Analiza statistică a generat următoarele rezultate cheie:

1. Coeficientul de determinare ($R^2$) = 0.027, indicând că doar 2.7% din variabilitatea numărului de investigații imagistice poate fi explicată prin numărul de comorbidități. Această valoare sugerează o capacitate predictivă foarte limitată a modelului.

2. Valoarea p pentru coeficientul de regresie (p = 0.268) depășește semnificativ pragul convențional de semnificație statistică ($alpha$ = 0.05). Această valoare ne determină să nu respingem ipoteza nulă.


Astfel nu s-a putut demonstra o relație semnificativă între numărul de comorbidități și numărul de investigații imagistice (p = 0.268, $R^2$ = 0.027). Aceste rezultate sugerează că decizia de a efectua investigații imagistice poate fi influențată de alți factori decât numărul simplu de comorbidități, cum ar fi tipul specific al comorbidităților, severitatea acestora, sau alte considerente clinice.


// // De scos poisson și folosit regresia liniară
// ===  Metodologie

// Studiul a utilizat o regresie Poisson pentru a evalua relația dintre prezența anumitor comorbidități (hipertensiune arterială, diabet zaharat tip II, insuficiență cardiacă congestivă, fibrilație atrială și spondilodiscită) și numărul de investigații medicale efectuate. Modelul statistic a fost aplicat pe un eșantion de 48 de observații, iar rezultatele complete ale regresiei sunt prezentate în @tbl-poisson-comorbiditati.

// ===  Rezultate principale

// Analiza regresiei Poisson a evidențiat următoarele rezultate notabile, conform @tbl-poisson-comorbiditati:

// - Diabetul zaharat tip II a fost asociat cu cea mai mare creștere procentuală în numărul de investigații (+17.52%), deși rezultatul nu a atins semnificație statistică (p=0.5242).
// - Fibrilația atrială a fost asociată cu cea mai mare scădere procentuală în numărul de investigații (-33.11%), dar și acest rezultat nu a atins pragul de semnificație statistică (p=0.2492).
// - Celelalte comorbidități analizate (hipertensiune arterială, insuficiență cardiacă congestivă și spondilodiscită) au avut efecte mai puțin pronunțate și, de asemenea, nesemnificative statistic.

// Rezultatele studiului, vizualizate în @top-comorbiditati, sugerează că prezența comorbidităților poate influența numărul de investigații medicale, deși efectele observate nu au atins semnificație statistică. 
// // Limitări ale studiului
// Acest lucru poate fi explicat prin mai mulți factori:

// - Dimensiunea redusă a eșantionului (48 de observații) poate limita puterea statistică a analizei, după cum se poate observa în @tbl-poisson-comorbiditati.
// - Complexitatea interacțiunilor între diferite comorbidități poate masca efectele individuale ale fiecărei afecțiuni.
// - Protocoalele standardizate de investigație pentru anumite comorbidități pot reduce variabilitatea în numărul de investigații efectuate.

// Este important de notat că, deși diabetul zaharat tip II a fost asociat cu o creștere a numărului de investigații, fibrilația atrială a fost asociată cu o scădere. Aceste tendințe, chiar dacă nu sunt semnificative statistic, pot sugera diferențe în abordarea clinică a acestor afecțiuni, așa cum se poate observa în @top-comorbiditati.

