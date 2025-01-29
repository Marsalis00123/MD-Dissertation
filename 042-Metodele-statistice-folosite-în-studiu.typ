== Metodele statistice folosite în studiu

// - fisher
// regresie liniară

=== Testul exact al lui Fisher
Testul exact Fisher este utilizat pentru a analiza independența dintre două variabile nominale, evaluând dacă proporțiile unei variabile diferă în funcție de valorile celeilalte variabile @HandbookBiologicalStatistics2014. Acesta este recomandat în special pentru eșantioane de dimensiuni mici, unde testul chi-pătrat nu se recomandă a fi folosit.

*Când se utilizează*:
Testul exact Fisher este adecvat atunci când se analizează două variabile categoriale și se dorește determinarea unei eventuale asocieri între ele. În contextul spondilodiscitelor, un exemplu de aplicare a testului exact Fisher este evaluarea relației dintre caracteristicile imagistice observate (precum prezența eroziunilor, colecțiilor sau herniei de disc lombare) și decizia terapeutică (tratament chirurgical versus non-chirurgical). De exemplu, dacă un număr mai mare de pacienți cu colecții paraspinale au fost supuși intervenției chirurgicale comparativ cu cei fără această caracteristică imagistică, testul exact Fisher poate determina dacă această diferență este semnificativă statistic sau dacă este rezultatul variației aleatorii.

Tabelul de date utilizat în astfel de analize este cunoscut sub denumirea de tabel de contingență $R×C$ (rânduri $×$ coloane). Cea mai frecventă utilizare a testului exact Fisher este pentru tabele 2$×$2, unde fiecare variabilă are câte două categorii (de exemplu, prezența sau absența unei caracteristici imagistice și tipul de tratament aplicat).

În cazul eșantioanelor mici, testul exact Fisher este preferabil testului chi-pătrat sau testului G, care pot oferi rezultate distorsionate atunci când frecvențele așteptate în celulele tabelului sunt mici. În general, testul exact Fisher este recomandat pentru seturi de date cu mai puțin de 1000 de observații.

*Ipoteza nulă*:
Ipoteza nulă a testului exact Fisher afirmă că proporțiile unei variabile sunt independente de valorile celeilalte variabile, adică distribuția unei caracteristici nu este influențată de cealaltă variabilă. 

*Modul de funcționare al testului*:
Spre deosebire de alte teste statistice care utilizează funcții matematice pentru a estima probabilitățile unor valori test-statistice, testul exact Fisher calculează direct probabilitatea de a obține datele observate (precum și toate seturile de date mai extreme), sub ipoteza nulă conform căreia proporțiile sunt egale. Această metodă permite o evaluare precisă a semnificației statistice, chiar și în cazul eșantioanelor mici, fără a se baza pe aproximări asimptotice .

=== Regresia liniară

Regresia liniară este o metodă statistică utilizată pentru a examina relația dintre două variabile cantitative, una independentă (predictor) și una dependentă (răspuns)@HandbookBiologicalStatistics2014. Aceasta permite evaluarea măsurii în care variațiile unei variabile sunt asociate cu modificările celeilalte și oferă un model matematic sub forma unei ecuații liniare de tipul:

$
Y = beta_0 + beta_1 X + epsilon
$

unde:
- $Y$ este variabila dependentă
- $X$ este variabila independentă
- $beta_0$ reprezintă interceptul (valoarea lui $Y$ atunci când $X=0$)
- $beta_1$ este panta dreptei de regresie, care indică rata de schimbare a lui $Y$ în raport cu $X$
- $epsilon$ este termenul de eroare, ce reflectă variațiile neexplicate de model

Regresia liniară poate fi utilizată atât pentru a testa ipoteze despre relația dintre variabile, cât și pentru a face predicții asupra unor valori necunoscute ale variabilei dependente.

==== Când se utilizează

Această metodă este folosită în situațiile în care se suspectează existența unei relații liniare între două variabile numerice. Exemple tipice includ: o variabilă biologică și un factor de risc sau, în contextul acestui studiu, numărul de investigații imagisticie în funcție de comorbiditățile pacienților.

==== Ipoteza nulă și ipoteza alternativă

În regresia liniară:
- Ipoteza nulă ($H_0$) presupune $beta_1 = 0$ (nu există relație semnificativă)
- Ipoteza alternativă ($H_1$) susține $beta_1 != 0$ (există relație semnificativă)

==== Cum funcționează testul

Metoda utilizează metoda celor mai mici pătrate pentru estimarea parametrilor. Indicatorii principali sunt:

- Coeficientul de determinare $R^2$:
  + Apropiat de 1 = relație puternică
  + Valori mici = asociere slabă

- Semnificația statistică se testează cu:
  + Analiza de varianță (ANOVA)
  + Valoarea $p$:
    * $p < 0.05$ → respingem $H_0$
    * $p >= 0.05$ → nu putem respinge $H_0$

// === Testul chi pătrat
// Testul Chi-Square pentru potrivirea distribuției este o metodă statistică utilizată pentru a determina dacă frecvențele observațiilor dintr-o variabilă nominală corespund unei distribuții teoretice predefinite. Acesta se aplică în cazul variabilelor nominale cu două sau mai multe categorii, iar interpretarea sa este validă în condițiile unui volum mare de date.

// În analiza corelației dintre caracteristicile imagistice și evoluția clinică, testul Chi-Square a fost utilizat pentru a evalua asocierea dintre distribuțiile observațiilor reale ale caracteristicilor imagistice și așteptările statistice. Acest test a permis compararea distribuțiilor observate cu cele teoretice pentru a determina dacă există o relație semnificativă între variabile.

// De exemplu, caracteristici precum „colecții” sau „amprentare medulară” au fost analizate din perspectiva frecvenței lor observate și a potențialelor asocieri cu evoluția clinică. Valorile p obținute au indicat gradul de concordanță dintre aceste caracteristici și evoluția pacienților, oferind o bază pentru concluziile statistice privind semnificația relațiilor evaluate.

// Pentru rezultate robuste, este esențial ca numărul așteptat de observații din fiecare categorie să fie suficient de mare. În caz contrar, testul Chi-Square poate fi inadecvat, iar metode alternative, cum ar fi testele exacte, pot fi preferate.


