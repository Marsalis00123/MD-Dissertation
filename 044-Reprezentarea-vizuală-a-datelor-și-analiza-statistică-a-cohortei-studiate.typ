== Reprezentarea vizuală a datelor și analiza statistică a cohortei studiate 

Analiza statistică descriptivă a fost efectuată cu scopul de a caracteriza în detaliu cohorta de pacienți incluși în studiu, cu accent pe aspectele demografice, modalitățile imagistice utilizate și trăsăturile clinice relevante. Această abordare metodologică a fost concepută pentru a oferi o imagine comprehensivă și obiectivă asupra populației studiate, facilitând astfel o înțelegere aprofundată a distribuției caracteristicilor fundamentale ale pacienților și a corelațiilor potențiale între variabilele analizate, alegerea metodei terapeutice și rezultatele obținute.

În cadrul analizei statistice, s-au luat în considerare următoarele variabile principale: vârsta și sexul pacienților, precum și modalitățile imagistice utilizate în procesul diagnostic. Pentru variabilele demografice, s-au efectuat calcule statistice descriptive precum, media aritmetică, mediana, deviația standard și intervalele de vârstă. Aceste calcule au fost realizate cu scopul de a reflecta cu acuratețe distribuția grupelor de vârstă și raportul între sexe în cohorta de pacienți studiată. În ceea ce privește modalitățile imagistice (IRM, CT, radiografie convențională, etc.), s-a calculat frecvența absolută și relativă de utilizare a fiecărei metode, precum și intervalele de încredere corespunzătoare, pentru a evalua cu precizie prevalența și importanța relativă a acestora în diagnosticarea spondilodiscitei.

Pentru reprezentarea vizuală a datelor statistice, s-au folosit diverse metode grafice. Acestea includ diagrame cu coloane compozite, grafice radiale segmentate și histograme cu distribuții suprapuse. Aceste reprezentări grafice au fost concepute și optimizate pentru a ilustra în mod clar și comprehensiv distribuția modalităților imagistice utilizate, repartiția pe sexe, grupele de vârstă și tipurile de tratament aplicate (de exemplu, tratament chirurgical versus conservator). Fiecare reprezentare grafică a fost însoțită de legende detaliate și note explicative pentru a asigura o interpretare corectă și fără ambiguități. 

=== Documentație Python pentru Analiza Statisticilor Descriptive

Această secvență de cod utilizează librăriile *pandas*, *matplotlib* și *numpy* pentru a analiza datele clinice ale cohortei de pacienți. Datele analizate includ vârsta, genul, metoda imagistică utilizată și abordarea terapeutică (chirurgicală vs. conservatoare). Analiza implică atât statistici descriptive, cât și vizualizări grafice sub formă de diagrame de bare și grafice circulare. Codul folosește un fișier CSV anonimizat ("_pacienti.csv_") care conține aceste date.
==== Biblioteci folosite:

- *pandas* pentru manipularea și analiza datelor.
- *matplotlib* pentru vizualizarea datelor (diagrame de bare și circulare).
- *numpy* pentru operațiuni numerice suplimentare.

==== 1. Încărcarea datelor

```python
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Încărcarea datelor din fișierul CSV
df = pd.read_csv('pacienti.csv')
```

Codul încarcă setul de date utilizând funcția `pd.read_csv()`. Fișierul conține informații anonimizate despre pacienți.

==== 2. Statistici descriptive

==== a. Statistici legate de vârstă

```python
# Statistici descriptive pentru vârstă
age_stats = df['vârstă'].describe()
print("Statistici vârstă:")
print(age_stats)
```

Această secțiune calculează și afișează statistici descriptive pentru variabila vârstă, incluzând media, mediana, și intervalele valorice.

==== b. Distribuția genurilor

```python
# Distribuția genurilor
gender_counts = df['gen'].value_counts()
print("\nDistribuția genurilor:")
print(gender_counts)
```

Se calculează distribuția pacienților pe genuri, indicând numărul total de bărbați și femei în eșantion.

==== c. Frecvența modalităților imagistice

```python
# Frecvența metodelor imagistice utilizate
imaging_modalities = df['metodă imagistică'].str.split(', ', expand=True).stack().value_counts()
print("\nFrecvența modalităților imagistice:")
print(imaging_modalities)
```

Această parte a codului analizează frecvența utilizării diferitelor metode imagistice (ex. RMN, CT), permițând analiza prevalenței fiecărei metode în diagnostic.

==== 3. Vizualizări grafice

==== a. Diagrama cu coloane pentru frecvența modalităților imagistice

```python
# Bar plot pentru frecvența modalităților imagistice
plt.figure(figsize=(10, 6))
imaging_modalities.plot(kind='bar')
plt.title('Frecvența modalităților imagistice')
plt.xlabel('Modalitate imagistică')
plt.ylabel('Frecvență')
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig('imaging_modalities_bar.png')
plt.close()
```

Această secțiune creează o diagramă de bare care ilustrează frecvența fiecărei metode imagistice. Graficul este salvat într-un fișier PNG.

==== b. Diagrama radială pentru distribuția genurilor

```python
# Diagrama radială pentru distribuția genurilor
plt.figure(figsize=(8, 8))
gender_counts.plot(kind='pie', autopct='%1.1f%%', startangle=90)
plt.title('Distribuția genurilor')
plt.axis('equal')
plt.savefig('gender_distribution_pie.png')
plt.close()
```

Aceasta generează o diagramă circulară care arată distribuția procentuală a pacienților pe genuri. Diagrama este salvată într-un fișier PNG.

==== c. Diagrama cu coloane pentru abordarea terapeutică

```python
# Bar plot pentru abordarea terapeutică (chirurgicală vs conservatoare)
treatment_approach = df['tratament'].str.contains('chirurgical').map({True: 'Chirurgical', False: 'Conservator'}).value_counts()
plt.figure(figsize=(8, 6))
treatment_approach.plot(kind='bar')
plt.title('Abordarea terapeutică')
plt.xlabel('Tipul de tratament')
plt.ylabel('Numărul de pacienți')
plt.savefig('treatment_approach_bar.png')
plt.close()
```

Această parte creează o diagramă cu coloane pentru a ilustra numărul de pacienți care au urmat tratament chirurgical sau conservator, pe baza datelor din coloana "tratament". Rezultatul este salvat sub formă de imagine.

=== Documentație pentru analiza comorbidităților în cazul pacienților cu spondilodiscită

Această secțiune detaliază metodologia și procesul de analiză statistică utilizate pentru evaluarea comorbidităților asociate pacienților diagnosticați cu spondilodiscită. Analiza are ca scop identificarea și cuantificarea celor mai frecvente afecțiuni concomitente, oferind astfel o perspectivă aprofundată asupra profilului clinic complex al acestor pacienți.

==== 1. Importarea bibliotecilor necesare

Pentru realizarea analizei statistice, au fost utilizate următoarele biblioteci software specializate:

```python
import pandas as pd  # Pentru gestionarea și analiza datelor tabelare
import matplotlib.pyplot as plt  # Pentru crearea reprezentărilor grafice
from collections import Counter  # Pentru cuantificarea frecvenței elementelor
```

Fiecare dintre aceste biblioteci îndeplinește un rol specific în procesul de analiză:

- *pandas*
- *matplotlib*
- *collections.Counter*: Asigură o metodă eficientă de numărare și clasificare a comorbidităților, facilitând identificarea celor mai frecvente afecțiuni asociate.

==== 2. Achiziția datelor clinice

Setul de date utilizat în analiză a fost extras dintr-un fișier CSV anonim, conținând informații detaliate despre comorbidități pentru fiecare pacient diagnosticat cu spondilodiscită:

```python
df = pd.read_csv('pacienți.csv')  # Încărcarea datelor din fișierul CSV anonim
```

==== 3. Implementarea funcției de extragere a comorbidităților

Pentru a facilita procesarea datelor, a fost implementată o funcție specializată de extragere a comorbidităților din câmpurile text ale bazei de date:

```python
def extract_comorbidities(s):
    if pd.isna(s):  # Verificarea prezenței valorilor lipsă (NaN)
        return []
    return [c.strip() for c in s.split(',')]  # Segmentarea și normalizarea datelor textuale
```

Această funcție asigură o procesare robustă a datelor, gestionând eficient atât cazurile cu multiple comorbidități, cât și situațiile în care informațiile sunt absente.

==== 4. Extragerea și agregarea comorbidităților

Procesul de extragere și agregare a comorbidităților implică parcurgerea sistematică a fiecărei înregistrări din setul de date:

```python
all_comorbidities = []
for app in df['app']:
    all_comorbidities.extend(extract_comorbidities(app))  # Compilarea unei liste comprehensive de comorbidități
```

==== 5. Cuantificarea frecvenței comorbidităților

Pentru a determina prevalența fiecărei comorbidități în cohorta studiată, s-a utilizat funcționalitatea Counter din biblioteca collections:

```python
comorbidity_counts = Counter(all_comorbidities)  # Cuantificarea frecvenței fiecărei comorbidități identificate
```

==== 6. Selecția și ordonarea comorbidităților principale

În vederea focalizării analizei pe cele mai relevante comorbidități, s-a procedat la selecția și ordonarea descrescătoare a primelor 10 afecțiuni asociate:

```python
top_10_comorbidities = dict(sorted(comorbidity_counts.items(), key=lambda x: x[1], reverse=True)[:10])
```

==== 7. Generarea reprezentării grafice

Pentru vizualizarea clară și intuitivă a distribuției comorbidităților principale, s-a generat un grafic de tip bară utilizând biblioteca matplotlib:

```python
plt.figure(figsize=(12, 6))  # Definirea dimensiunilor reprezentării grafice
plt.bar(top_10_comorbidities.keys(), top_10_comorbidities.values())  # Construirea graficului de tip bară
plt.title('Distribuția principalelor 10 comorbidități la pacienții cu spondilodiscită')  # Specificarea titlului graficului
plt.xlabel('Comorbiditate')  # Etichetarea axei absciselor
plt.ylabel('Frecvență')  # Etichetarea axei ordonatelor
plt.xticks(rotation=45, ha='right')  # Ajustarea orientării etichetelor pentru optimizarea lizibilității
plt.tight_layout()  # Optimizarea automată a dispunerii elementelor grafice
```

==== 8. Vizualizarea rezultatelor grafice

Reprezentarea grafică generată este afișată pentru a facilita interpretarea vizuală a distribuției comorbidităților:

```python
plt.show()  # Afișarea reprezentării grafice
```

==== 9. Prezentarea rezultatelor numerice

Pentru o analiză detaliată, rezultatele sunt prezentate și sub formă tabelară, evidențiind frecvența absolută a fiecărei comorbidități principale:

```python
print("Distribuția principalelor 10 comorbidități:")  # Titlul secțiunii de rezultate numerice
for comorbidity, count in top_10_comorbidities.items():
    print(f"{comorbidity}: {count}")  # Afișarea detaliată a fiecărei comorbidități și a frecvenței asociate
```

Această metodologie de analiză oferă o perspectivă comprehensivă asupra profilului comorbidităților asociate pacienților cu spondilodiscită, facilitând astfel o înțelegere aprofundată a complexității clinice a acestei afecțiuni și potențialul impact asupra managementului terapeutic. Cu toate acestea s-au efectuat analize statistice suplimentare pentru a evalua corelațiile între comorbidități și numărul investigațiilor efetuate în funcție de acestea.
==== 10. *Importarea bibliotecilor necesare*

Aceste biblioteci sunt folosite pentru analiza și manipularea datelor, precum și pentru efectuarea de regresii statistice.

```python
import pandas as pd  # Gestionarea datelor tabelare
import matplotlib.pyplot as plt  # Crearea graficelor
import numpy as np  # Funcții matematice avansate
from collections import Counter  # Numărarea elementelor
from statsmodels.formula.api import poisson  # Modelul de regresie Poisson
import statsmodels.api as sm  # Funcții pentru modele statistice

```

---

==== 11. *Citirea fișierului de date*

Datele sunt citite din același fișier.

```python
df = pd.read_csv('pacienți.csv')  # Citirea datelor din fișierul CSV

```

---

==== 12. *Funcție pentru extragerea comorbidităților și investigațiilor*

Această funcție este utilizată pentru a extrage comorbiditățile și investigațiile din câmpurile text din fișier. Aceasta funcționează similar cu funcția anterioară pentru comorbidități.

```python
def extract_items(s):
    if pd.isna(s):  # Verificarea valorilor lipsă
        return []
    return [c.strip() for c in s.split(',')]  # Împarte textul și elimină spațiile extra

```

---

==== 13. *Extragerea comorbidităților și investigațiilor*

Datele din coloanele de comorbidități (`app`) și investigații (`metodă imagistică`) sunt extrase și salvate în coloane noi.

```python
df['comorbidities'] = df['app'].apply(extract_items)  # Extragerea comorbidităților
df['investigations'] = df['metodă imagistică'].apply(extract_items)  # Extragerea investigațiilor

```

---

==== 14. *Numărarea investigațiilor pentru fiecare pacient*

Se adaugă o nouă coloană care reprezintă numărul de investigații pentru fiecare pacient.

```python
df['num_investigations'] = df['investigations'].apply(len)  # Numărarea investigațiilor

```

---

==== 15. *Selectarea celor mai comune 5 comorbidități*

Se selectează cele mai frecvente 5 comorbidități din totalul comorbidităților.

```python
all_comorbidities = [item for sublist in df['comorbidities'] for item in sublist]  # Lista totală a comorbidităților
top_5_comorbidities = [x[0] for x in Counter(all_comorbidities).most_common(5)]  # Cele mai comune 5 comorbidități

```

---

==== 16. *Crearea variabilelor dummy pentru comorbidități*

Se creează variabile "dummy" (0 sau 1) pentru fiecare din cele mai comune 5 comorbidități, indicând dacă un pacient are sau nu acea comorbiditate.

```python
for comorbidity in top_5_comorbidities:
    df[f'has_{comorbidity}'] = df['comorbidities'].apply(lambda x: comorbidity in x).astype(int)

```

---

==== 17. *Analiză descriptivă: Graficul distribuției investigațiilor*

Se creează un grafic boxplot care ilustrează distribuția numărului de investigații în funcție de prezența fiecărei comorbidități din top 5.

```python
plt.figure(figsize=(12, 6))  # Dimensiunea graficului
df.boxplot(column='num_investigations', by=[f'has_{c}' for c in top_5_comorbidities])  # Crearea graficului
plt.title('Distribuția numărului de investigații per comorbiditate')  # Titlul graficului
plt.suptitle('')  # Eliminarea titlului suplimentar
plt.ylabel('Număr de investigații')  # Eticheta axei Y
plt.xticks(rotation=45, ha='right')  # Rotirea etichetelor pe axa X
plt.tight_layout()  # Ajustarea automată a graficului
plt.show()  # Afișarea graficului

```

---

==== 18. *Calcularea mediei investigațiilor per comorbiditate*

Codul calculează media investigațiilor pentru pacienții care prezintă fiecare dintre cele 5 comorbidități și o afișează.

```python
print("Media investigațiilor per comorbiditate:")  # Titlul secțiunii
for comorbidity in top_5_comorbidities:
    mean_investigations = df[df[f'has_{comorbidity}'] == 1]['num_investigations'].mean()  # Calcularea mediei
    print(f"{comorbidity}: {mean_investigations:.2f}")  # Afișarea rezultatului

```

---

==== 19. *Pregătirea datelor pentru regresia Poisson*

Variabilele dummy pentru comorbidități sunt folosite ca predictori, iar numărul de investigații este variabila dependentă.

```python
X = df[[f'has_{c}' for c in top_5_comorbidities]]  # Variabilele predictor
y = df['num_investigations']  # Variabila dependentă (numărul de investigații)
X = sm.add_constant(X)  # Adăugarea unei constante pentru regresie

```

---

==== 20. *Regresia Poisson*

Se aplică un model de regresie Poisson pentru a analiza legătura dintre prezența comorbidităților și numărul de investigații.

```python
poisson_model = poisson('num_investigations ~ ' + ' + '.join([f'has_{c}' for c in top_5_comorbidities]), data=df).fit()

```

---

==== 21. *Afișarea rezultatelor regresiei*

Rezultatele regresiei Poisson sunt afișate, inclusiv coeficienții și valorile statistice.

```python
print("\\nRezultatele regresiei Poisson:")  # Titlul secțiunii
print(poisson_model.summary())  # Afișarea rezultatelor

```

---

==== 22. *Interpretarea coeficienților*

Se interpretează coeficienții modelului Poisson, arătând creșterea procentuală a numărului de investigații asociată fiecărei comorbidități.

=== Analiza impactului caracteristicilor imagistice asupra deciziei terapeutice în spondilodiscită

Prezenta secțiune detaliază metodologia și procesul de analiză statistică utilizate pentru evaluarea relației dintre caracteristicile imagistice observate la pacienții cu spondilodiscită și abordarea terapeutică aleasă (chirurgicală sau conservatoare). Această analiză are ca scop identificarea potențialelor asocieri semnificative între aspectele imagistice specifice și decizia clinică privind modalitatea de tratament, oferind astfel o perspectivă aprofundată asupra factorilor care influențează managementul terapeutic al acestei afecțiuni.

==== 1. Implementarea instrumentelor de analiză statistică

Pentru realizarea analizei statistice, au fost utilizate următoarele biblioteci software specializate:

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import chi2_contingency, fisher_exact
import numpy as np
```

Fiecare dintre aceste biblioteci îndeplinește un rol specific în procesul de analiză:

- *pandas*: Facilitează manipularea și analiza structurată a seturilor de date, permițând operațiuni complexe de filtrare, grupare și agregare a informațiilor clinice și imagistice.
- *matplotlib și seaborn*: Aceste biblioteci sunt utilizate pentru generarea reprezentărilor grafice avansate, oferind o vizualizare clară și intuitivă a distribuțiilor și corelațiilor dintre variabilele analizate.
- *scipy.stats*: Oferă funcționalități statistice avansate, incluzând testul Chi-Pătrat și testul exact Fisher,
- *numpy*: Asigură suportul pentru operațiuni numerice de înaltă performanță, facilitând procesarea eficientă a datelor cantitative.

=== Biblioteci folosite:

- *pandas:* pentru manipularea și analiza datelor.
- *matplotlib:* pentru vizualizarea datelor (diagrame de bare și circulare).
- *numpy:* pentru operațiuni numerice suplimentare.
- *scipy.stats*: Oferă funcționalități statistice avansate, incluzând testul Chi-Pătrat și testul exact Fisher.

==== 2. Achiziția și preprocesarea datelor clinice

Setul de date utilizat în analiză a fost extras dintr-un fișier CSV anonim, conținând informații detaliate despre caracteristicile imagistice și abordările terapeutice pentru fiecare pacient inclus în studiu:

```python
df = pd.read_csv('pacienți.csv')
```

Procesul de preprocesare a datelor a implicat crearea unor variabile binare pentru fiecare caracteristică imagistică relevantă, facilitând astfel analiza statistică ulterioară:

```python
imaging_characteristics = ['eroziuni', 'tasări', 'edem', 'colecții', 'stenoză', 'amprentare_medulară', 'osteofite', 'deshidratări_discale', 'gadolinofilie', 'iodofilie', 'hdl', 'hemangioame', 'abces', 'fracturi', 'anterolistezis', 'cardiomegalie']

for char in imaging_characteristics:
    df[char] = df['caracteristici imagistice'].str.contains(char, case=False, na=False).astype(int)
```

Această etapă de preprocesare a permis cuantificarea precisă a prezenței sau absenței fiecărei caracteristici imagistice pentru fiecare caz clinic analizat, creând astfel o bază solidă pentru analizele statistice ulterioare.

==== 3. Stratificarea abordărilor terapeutice

Pentru a facilita analiza comparativă, pacienții au fost categorizați în funcție de tipul de tratament administrat, utilizând următoarea metodologie:

```python
df['treatment_type'] = np.where(df['tratament'].str.contains('chirurgical', case=False, na=False), 'Chirurgical', 'Conservativ')
```

Această categorizare binară a permis o evaluare clară a distribuției pacienților între abordările chirurgicale și cele conservative, oferind o bază solidă pentru analizele de asociere cu caracteristicile imagistice.

==== 4. Metodologia de analiză statistică

Pentru evaluarea sistematică a relației dintre fiecare caracteristică imagistică și decizia terapeutică, a fost implementată o funcție de analiză specializată. Această funcție utilizează teste statistice riguroase pentru a determina semnificația asocierilor observate:

```python
def analyze_characteristic(characteristic):
    contingency_table = pd.crosstab(df[characteristic], df['treatment_type'])
    # Implementarea testelor statistice și a vizualizărilor grafice
```

Această abordare metodologică permite o evaluare comprehensivă și obiectivă a impactului fiecărei caracteristici imagistice asupra deciziei terapeutice, oferind astfel informații valoroase pentru optimizarea protocoalelor de management al spondilodiscitei.

==== 5. Analiza statistică și reprezentarea vizuală a datelor

Această secțiune descrie metodologia detaliată a analizei statistice și a reprezentării vizuale a datelor, utilizând funcția `analyze_characteristic`. Această funcție este concepută pentru a examina relația dintre fiecare caracteristică imagistică și tipul de tratament administrat, oferind o analiză comprehensivă și riguroasă a datelor colectate.

==== 5.1. Generarea tabelei de contingență

```python
contingency_table = pd.crosstab(df[characteristic], df['treatment_type'])
```

Pentru fiecare caracteristică imagistică analizată, se generează o tabelă de contingență. Această tabelă reprezintă distribuția pacienților în funcție de prezența sau absența caracteristicii imagistice și tipul de tratament administrat (chirurgical sau conservator). Structura tabelei de contingență este următoarea:

- Rândurile indică prezența (1) sau absența (0) caracteristicii imagistice analizate.
- Coloanele reflectă distribuția pacienților în funcție de modalitatea terapeutică aleasă (chirurgicală sau conservatoare).

==== 5.2. Selecția și aplicarea testului statistic adecvat

```python
if (contingency_table.values < 5).any():
    _, p_value = fisher_exact(contingency_table)
    test_type = "Test Exact Fisher"
else:
    _, p_value, _, _ = chi2_contingency(contingency_table)
    test_type = "Testul Chi-Pătrat"
```

Pentru a evalua semnificația statistică a asocierii dintre caracteristica imagistică analizată și tipul de tratament, se aplică unul din două teste statistice, în funcție de distribuția datelor:

1. *Testul Chi-Pătrat*: Acest test este utilizat pentru eșantioane de dimensiuni mari. Metodologia sa constă în compararea distribuției observate cu distribuția teoretică așteptată, oferind o evaluare robustă a asocierii dintre variabilele analizate.
2. *Testul Exact Fisher*: Acest test este aplicat în situațiile în care una sau mai multe celule din tabela de contingență conțin un număr de observații mai mic de 5. Testul Fisher oferă o precizie superioară în analiza eșantioanelor de dimensiuni reduse, asigurând astfel validitatea rezultatelor statistice în condițiile unor frecvențe celulare scăzute.

==== 5.3. Reprezentarea grafică a rezultatelor

```python
plt.figure(figsize=(8, 6))
sns.barplot(x=contingency_table.index, y=contingency_table.iloc[:, 0], color='blue', alpha=0.5, label='Conservator')
sns.barplot(x=contingency_table.index, y=contingency_table.iloc[:, 1], color='red', alpha=0.5, label='Chirurgical')
plt.title(f'{characteristic.capitalize()} vs Tipul de tratament')
plt.xlabel(characteristic.capitalize())
plt.ylabel('Număr de pacienți')
plt.legend()
plt.close()
```

Pentru fiecare caracteristică imagistică analizată, se generează un grafic de tip bară, care oferă o reprezentare vizuală intuitivă a distribuției pacienților în funcție de prezența sau absența caracteristicii și tipul de tratament administrat. Elementele graficului includ:

- Bare de culoare albastră, reprezentând pacienții care au beneficiat de tratament conservator.
- Bare de culoare roșie, indicând pacienții care au fost supuși intervenției chirurgicale.

Această reprezentare grafică facilitează interpretarea rapidă și eficientă a pattern-urilor de distribuție a pacienților între cele două modalități terapeutice, în raport cu prezența sau absența caracteristicii imagistice analizate.

==== 5.4. Structurarea și prezentarea rezultatelor statistice

```python
return pd.DataFrame({
    'Characteristic': [characteristic],
    'Test Type': [test_type],
    'p-value': [p_value],
    'Significant': ['Da' if p_value < 0.05 else 'Nu']
})
```

Pentru fiecare caracteristică imagistică analizată, funcția generează un tabel de rezultate care sintetizează informațiile statistice relevante. Structura tabelului include următoarele elemente:

- *Characteristic*: Denumirea caracteristicii imagistice supuse analizei.
- *Test Type*: Specificarea testului statistic aplicat (Chi-Pătrat sau Fisher).
- *p-value*: Valoarea p rezultată în urma aplicării testului statistic, indicând probabilitatea ca asocierea observată să fie rezultatul întâmplării.
- *Significant*: Interpretarea semnificației statistice, bazată pe pragul convențional de 0.05. O valoare p inferioară acestui prag (p < 0.05) este considerată semnificativă statistic, sugerând existența unei asocieri între caracteristica imagistică și tipul de tratament administrat.

==== 6. Analiza globală și sinteza rezultatelor

```python
results = pd.concat([analyze_characteristic(char) for char in imaging_characteristics])
results = results.sort_values('p-value')
print(results.to_string(index=False))
```

Procesul de analiză este aplicat iterativ pentru toate caracteristicile imagistice incluse în studiu. Rezultatele individuale sunt agregate într-un tabel comprehensiv, care este ulterior ordonat ascendent în funcție de valoarea p. Această abordare permite identificarea rapidă a caracteristicilor imagistice cu cea mai puternică asociere statistică cu tipul de tratament administrat, facilitând astfel interpretarea și prioritizarea rezultatelor în contextul clinic.

==== 7. Exportul și arhivarea rezultatelor

```python
# results.to_csv('statistical_test_results.csv', index=False)
# plt.savefig(f'{characteristic}_barplot.png')
```

Codul include opțiuni pentru exportul și arhivarea rezultatelor analizei, asigurând posibilitatea unei examinări ulterioare detaliate și a integrării în rapoarte sau prezentări științifice:

- *Exportul rezultatelor statistice*: Tabelul final cu rezultatele analizei statistice poate fi exportat în format CSV, facilitând analize ulterioare sau integrarea în rapoarte comprehensive.
- *Arhivarea reprezentărilor grafice*: Graficele generate pentru fiecare caracteristică imagistică pot fi salvate în format PNG, permițând includerea lor în prezentări sau publicații științifice.

=== Metodologia analizei statistice pentru asocierea caracteristicilor imagistice cu evoluția pacienților

Prezenta secțiune detaliază metodologia utilizată pentru analiza statistică a relației dintre caracteristicile imagistice și evoluția pacienților, bazată pe un set de date medicale complex. Această abordare metodologică este concepută pentru a identifica și cuantifica asocierile semnificative statistic între prezența anumitor caracteristici imagistice și prognosticul pacienților, oferind astfel o bază solidă pentru interpretarea clinică și deciziile terapeutice ulterioare.

==== 1. Importul și pregătirea datelor

Analiza debutează cu importul setului de date din fișierul 'anonim-clean.csv', utilizând biblioteca pandas. Acest fișier conține informații detaliate despre caracteristicile imagistice ale pacienților și evoluția lor clinică, codificată ca favorabilă sau nefavorabilă. Procesul de import este urmat de o etapă critică de preprocesare a datelor, care implică transformarea descrierilor textuale ale caracteristicilor imagistice în variabile binare cuantificabile.

```python
import pandas as pd
import numpy as np
from scipy.stats import chi2_contingency, fisher_exact
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('anonim-clean.csv')

imaging_characteristics = ['eroziuni', 'tasări', 'edem', 'colecții', 'stenoză', 'amprentare_medulară', 'osteofite', 'deshidratări_discale', 'gadolinofilie', 'iodofilie', 'hdl', 'hemangioame', 'abces', 'fracturi', 'anterolistezis', 'cardiomegalie']

for char in imaging_characteristics:
    df[char] = df['caracteristici imagistice'].str.contains(char, case=False, na=False).astype(int)
```

Acest proces de codificare binară permite o analiză statistică robustă, transformând descrierile calitative în date cantitative. Pentru fiecare caracteristică imagistică, se generează o coloană binară, unde valoarea 1 indică prezența caracteristicii, iar 0 absența acesteia.

==== 2. Definirea variabilei de evoluție

Variabila dependentă, reprezentând evoluția pacienților, este codificată într-o nouă coloană binară denumită 'evolution_favorable'. Această codificare permite o analiză statistică mai precisă, diferențiind clar între evoluțiile favorabile și cele nefavorabile.

```python
df['evolution_favorable'] = df['evoluție'].replace({'favorabilă': 1, 'lent_favorabilă': 1, 'nefavorabilă': 0, 'cerere': np.nan, 'sub_tratament': np.nan})

df = df.dropna(subset=['evolution_favorable'])
```

Codificarea atribuie valoarea 1 pentru evoluțiile favorabile și lent favorabile, și 0 pentru cele nefavorabile. Cazurile incerte sau incomplete (codificate ca 'cerere' sau 'sub_tratament') sunt excluse din analiză pentru a asigura acuratețea rezultatelor statistice.

==== 3. Analiza statistică și vizualizarea datelor

Pentru fiecare caracteristică imagistică, se efectuează o analiză statistică riguroasă utilizând teste de independență. Alegerea între testul Chi-Pătrat și testul exact al lui Fisher se face în funcție de dimensiunea eșantionului pentru fiecare caracteristică, asigurând astfel validitatea statistică a rezultatelor.

```python
def analyze_characteristic(characteristic):
    contingency_table = pd.crosstab(df[characteristic], df['evolution_favorable'])

    if (contingency_table.values &lt; 5).any():
        _, p_value = fisher_exact(contingency_table)
        test_type = "Fisher's exact test"
    else:
        _, p_value, _, _ = chi2_contingency(contingency_table)
        test_type = "Chi-square test"

    plt.figure(figsize=(8, 6))
    sns.heatmap(contingency_table, annot=True, fmt='d', cmap='YlGnBu')
    plt.title(f'{characteristic.capitalize()} vs Evolution')
    plt.xlabel('Evolution (0: Unfavorable, 1: Favorable)')
    plt.ylabel(f'{characteristic.capitalize()} (0: Absent, 1: Present)')
    plt.savefig(f'{characteristic}_mosaic.png')
    plt.close()

    return pd.DataFrame({
        'Characteristic': [characteristic],
        'Test Type': [test_type],
        'p-value': [p_value],
        'Significant': ['Yes' if p_value &lt; 0.05 else 'No']
    })
```

Pentru fiecare caracteristică, se generează o tabelă de contingență și un grafic de tip mozaic, oferind o reprezentare vizuală intuitivă a distribuției pacienților în funcție de prezența caracteristicii și evoluția clinică. Aceste reprezentări grafice facilitează interpretarea rapidă a pattern-urilor de asociere între caracteristicile imagistice și prognosticul pacienților.

==== 4. Agregarea și interpretarea rezultatelor

Rezultatele analizelor individuale sunt agregate într-un tabel comprehensiv, ordonat în funcție de valoarea p, permițând identificarea rapidă a caracteristicilor imagistice cu cea mai puternică asociere statistică cu evoluția pacienților.

```python
results = pd.concat([analyze_characteristic(char) for char in imaging_characteristics])
results = results.sort_values('p-value')
print(results.to_string(index=False))

results.to_csv('statistical_test_results_evolution.csv', index=False)

plt.figure(figsize=(12, 6))
sns.barplot(x='Characteristic', y='p-value', data=results)
plt.xticks(rotation=45, ha='right')
plt.axhline(y=0.05, color='r', linestyle='--')
plt.title('P-values for Association between Imaging Characteristics and Evolution')
plt.tight_layout()
plt.savefig('p_values_plot.png')
plt.close()
```

Acest proces de agregare și vizualizare a rezultatelor facilitează interpretarea clinică a datelor, evidențiind caracteristicile imagistice cu potențial prognostic semnificativ. Graficul valorilor p oferă o perspectivă vizuală asupra semnificației statistice a fiecărei caracteristici, cu o linie de referință la p=0.05 pentru a delimita clar rezultatele semnificative statistic.

==== 5. Analiza frecvenței caracteristicilor imagistice

În completarea analizei asociative, se realizează o evaluare a frecvenței absolute a fiecărei caracteristici imagistice în cohorta studiată. Această analiză oferă informații valoroase despre prevalența diferitelor trăsături imagistice în populația de pacienți examinată.

```python
characteristic_frequencies = df[imaging_characteristics].sum().sort_values(ascending=False)
print("\nFrequency of Imaging Characteristics:")
print(characteristic_frequencies)

plt.figure(figsize=(12, 6))
characteristic_frequencies.plot(kind='bar')
plt.title('Frequency of Imaging Characteristics')
plt.xlabel('Characteristic')
plt.ylabel('Frequency')
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.savefig('characteristic_frequencies.png')
plt.close()
```

Reprezentarea grafică a frecvențelor caracteristicilor imagistice oferă o perspectivă complementară asupra datelor, permițând identificarea rapidă a trăsăturilor imagistice predominante în cohorta studiată. Această informație este crucială pentru interpretarea contextualizată a rezultatelor analizei asociative, facilitând o înțelegere mai nuanțată a relației dintre caracteristicile imagistice și evoluția clinică a pacienților.

=== Documentație pentru analiza statistică a segmentelor afectate și a tipului de tratament

Această documentație explică analiza realizată asupra datelor medicale pentru a înțelege legătura dintre *segmentele afectate*, *tipul de tratament* (chirurgical sau conservativ), și *recidivă*. De asemenea, se efectuează o analiză de supraviețuire folosind metoda Kaplan-Meier pentru a evalua probabilitatea de recidivă în funcție de tratament.

==== 1. Importul bibliotecilor și încărcarea datelor

```python

import pandas as pd
import numpy as np
from scipy.stats import chi2_contingency, fisher_exact, kruskal
import matplotlib.pyplot as plt
import seaborn as sns
from lifelines import KaplanMeierFitter

# Încărcarea datelor
df = pd.read_csv('pacienți.csv')

```

- *pandas* este folosit pentru manipularea datelor.
- *scipy.stats* conține funcțiile pentru testele statistice (Chi-Pătrat, Fisher, Kruskal-Wallis).
- *KaplanMeierFitter* din biblioteca *lifelines* este utilizat pentru analiza de supraviețuire.
- *matplotlib* și *seaborn* sunt folosite pentru generarea graficelor.

==== 2. Preprocesarea datelor

```python

df['treatment_type'] = np.where(df['tratament'].str.contains('chirurgical', case=False, na=False), 'Surgical', 'Conservative')
df['recidivă'] = df['recidivă'].fillna(False).astype(bool)

```

- *Tipul de tratament* este împărțit în *Chirurgical* și *Conservativ*, bazat pe informațiile din fișierul de date.
- *Recidiva* este tratată ca o variabilă binară (adevărat sau fals), reprezentând dacă un pacient a avut sau nu recidivă.

==== 3. Segmente afectate

```python

# Extragem toate segmentele unice afectate
all_segments = df['segment'].str.split(',', expand=True).stack().str.strip().unique()

# Creăm coloane binare pentru fiecare segment afectat
for segment in all_segments:
    df[f'segment_{segment}'] = df['segment'].str.contains(segment, case=False, na=False)

```

Această secțiune extrage segmentele coloanei vertebrale afectate (cum ar fi *L1, L2, L3* etc.) și creează *coloane binare* pentru fiecare segment. Fiecare pacient va avea o valoare `True` (adevărat) dacă segmentul respectiv este afectat și `False` (fals) dacă nu este afectat.

==== 4. Test statistic pentru asocierea între segmentele afectate și tipul de tratament

```python

def perform_statistical_test(data, var1, var2):
    contingency_table = pd.crosstab(data[var1], data[var2])
    if (contingency_table.values < 5).any():
        _, p_value = fisher_exact(contingency_table)
        test_type = "Fisher's exact test"
    else:
        _, p_value, _, _ = chi2_contingency(contingency_table)
        test_type = "Chi-square test"
    return test_type, p_value

```

Se realizează un test statistic pentru a evalua dacă există o legătură semnificativă între *segmentul afectat* și *tipul de tratament*. Se folosește *Testul Chi-Pătrat* pentru eșantioane mari și *Testul Exact al lui Fisher* pentru eșantioane mici.

==== 4.1. Rezultate pentru segmente vs tipul de tratament

```python

treatment_results = []
for segment in segments:
    test_type, p_value = perform_statistical_test(df, segment, 'treatment_type')
    treatment_results.append({
        'Segment': segment.replace('segment_', ''),
        'Test Type': test_type,
        'p-value': p_value,
        'Significant': 'Yes' if p_value < 0.05 else 'No'
    })

treatment_results_df = pd.DataFrame(treatment_results)
print("Segment vs Treatment Decision:")
print(treatment_results_df.to_string(index=False))

```

Pentru fiecare segment afectat, codul efectuează un test statistic pentru a verifica dacă segmentul este asociat cu un anumit tip de tratament (chirurgical sau conservativ). Rezultatele sunt prezentate într-un *tabel* care indică dacă asocierea este *semnificativă* statistic sau nu.

==== 5. Test statistic pentru recidivă

```python

recurrence_results = []
for segment in segments:
    test_type, p_value = perform_statistical_test(df, segment, 'recidivă')
    recurrence_results.append({
        'Segment': segment.replace('segment_', ''),
        'Test Type': test_type,
        'p-value': p_value,
        'Significant': 'Yes' if p_value < 0.05 else 'No'
    })

recurrence_results_df = pd.DataFrame(recurrence_results)
print("\nSegment vs Recurrence Rate:")
print(recurrence_results_df.to_string(index=False))

```

Se aplică un test statistic similar pentru a evalua dacă un segment afectat este asociat cu o *recidivă* a bolii. Rezultatele indică segmentele care sunt asociate semnificativ cu o probabilitate mai mare de recidivă.

==== 6. Test Kruskal-Wallis pentru numărul de segmente afectate

```python

df['num_segments'] = df['segment'].str.split(',').str.len()
surgical = df[df['treatment_type'] == 'Surgical']['num_segments']
conservative = df[df['treatment_type'] == 'Conservative']['num_segments']
h_statistic, p_value = kruskal(surgical, conservative)

print("\nKruskal-Wallis Test for Number of Affected Segments vs Treatment Type:")
print(f"H-statistic: {h_statistic}")
print(f"p-value: {p_value}")

```

Testul *Kruskal-Wallis* este folosit pentru a compara numărul de segmente afectate între pacienții care au primit tratament chirurgical și cei cu tratament conservativ. Acest test ne spune dacă există o diferență semnificativă între aceste două grupuri.

==== 6.1. Vizualizarea numărului de segmente afectate

```python

plt.figure(figsize=(10, 6))
sns.boxplot(x='treatment_type', y='num_segments', data=df)
plt.title('Number of Affected Segments vs Treatment Type')
plt.savefig('segments_vs_treatment_boxplot.png')
plt.show()

```

Este generat un *grafic de tip boxplot* pentru a vizualiza distribuția numărului de segmente afectate în funcție de tipul de tratament. Acest grafic arată variația numărului de segmente afectate la pacienții care au primit tratament chirurgical comparativ cu cei care au primit tratament conservativ.

==== 7. Analiza Kaplan-Meier pentru probabilitatea de recidivă

```python
kmf = KaplanMeierFitter()

plt.figure(figsize=(10, 6))
for treatment in df['treatment_type'].unique():
    mask = df['treatment_type'] == treatment
    kmf.fit(df[mask]['num_segments'], df[mask]['recidivă'], label=treatment)
    kmf.plot()

plt.title('Kaplan-Meier Estimate of Recurrence-Free Probability')
plt.xlabel('Number of Affected Segments')
plt.ylabel('Recurrence-Free Probability')
plt.savefig('kaplan_meier_recurrence.png')
plt.show()

```

*Analiza Kaplan-Meier* este utilizată pentru a estima probabilitatea ca un pacient să rămână fără recidivă în funcție de numărul de segmente afectate și tipul de tratament. Aceasta permite vizualizarea supraviețuirii fără recidivă, comparând pacienții cu tratament chirurgical și conservativ.

=== Analiza complicațiilor post tratament

==== Documentație pentru codul Python - Model de Regresie Logistică pentru Prezicerea Complicațiilor

Această documentație explică cum codul utilizează un model de regresie logistică pentru a prezice dacă pacienții vor dezvolta complicații în funcție de caracteristicile imagistice observate. De asemenea, se explică cum sunt interpretate rezultatele și cum se vizualizează importanța fiecărei caracteristici.

==== 1. Încărcarea și preprocesarea datelor

==== Bibliotecile folosite

- *pandas*
- *numpy*
- *scikit-learn*
    - *train_test_split*
    - *LogisticRegression*
    - *StandardScaler*
    - *classification_report* și *confusion_matrix*
        - Aceste funcții sunt folosite pentru evaluarea performanței modelului:
- *matplotlib*
- *seaborn*

Codul încarcă datele și pregătește variabilele necesare pentru modelul de regresie logistică.

```python
data = pd.read_csv('anonim-clean.csv')
```

Se încarcă fișierul CSV cu datele pacienților, care include informații despre complicații și caracteristici imagistice.

```python
# Crearea unei coloane binare pentru complicații
data['complicatii_binare'] = data['complicații'].notnull().astype(int)

```

- Se creează o coloană numită *`complicatii_binare`*, care indică dacă un pacient a avut complicații (`1`) sau nu (`0`).

```python
# Extragerea caracteristicilor imagistice
caracteristici = ['eroziuni', 'tasări', 'edem', 'colecții', 'stenoză', 'amprentare_medulară']

```

- Sunt selectate caracteristicile imagistice relevante pentru analiza complicațiilor: *eroziuni, tasări, edem, colecții, stenoză și amprentare medulară*.

```python
# Crearea variabilelor dummy pentru caracteristicile imagistice
data['caracteristici imagistice'] = data['caracteristici imagistice'].fillna('')
for carac in caracteristici:
    data[carac] = data['caracteristici imagistice'].str.contains(carac).astype(int)

```

- Fiecare caracteristică imagistică este transformată într-o *variabilă binară*: `1` dacă este prezentă la pacient și `0` dacă este absentă.

==== 2. Pregătirea datelor pentru modelul de regresie logistică

```python
X = data[caracteristici]
y = data['complicatii_binare']

```

- *X* reprezintă datele de intrare (caracteristicile imagistice).
- *y* reprezintă variabila țintă (complicații: `1` pentru prezență, `0` pentru absență).

```python
# Împărțirea datelor în set de antrenament și set de test
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

```

- Datele sunt împărțite în două seturi: *80% pentru antrenament* și *20% pentru testare*.

```python
# Standardizarea caracteristicilor
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

```

- Caracteristicile imagistice sunt *standardizate* pentru a asigura că toate variabilele au aceeași scară, ceea ce îmbunătățește performanța modelului.

==== 3. Antrenarea și evaluarea modelului de regresie logistică

```python
# Antrenarea modelului de regresie logistică
model = LogisticRegression(random_state=42)
model.fit(X_train_scaled, y_train)

```

Modelul de *regresie logistică* este antrenat pe setul de date de antrenament pentru a învăța cum să prezică prezența complicațiilor pe baza caracteristicilor imagistice.

```python
# Predicții pe setul de test
y_pred = model.predict(X_test_scaled)

```

După antrenare, modelul face predicții pe setul de test pentru a evalua performanța sa.

==== 4. Evaluarea modelului

```python
# Raport de clasificare
print(classification_report(y_test, y_pred))

```

*Raportul de clasificare* include informații despre acuratețea modelului în a prezice complicațiile. Acesta oferă măsuri cum ar fi *precizia*, *recall-ul* și *F1-score*, care descriu cât de bine modelul clasifică corect cazurile pozitive și negative.

```python
# Matricea de confuzie
cm = confusion_matrix(y_test, y_pred)
plt.figure(figsize=(10,7))
sns.heatmap(cm, annot=True, fmt='d', cmap='Blues')
plt.title('Matricea de Confuzie')
plt.ylabel('Adevărat')
plt.xlabel('Prezis')
plt.show()

```

*Matricea de confuzie* arată cum sunt clasificate cazurile reale vs. cele prezise:

- *Adevărat pozitiv*: Modelul a prezis corect prezența complicațiilor.
- *Adevărat negativ*: Modelul a prezis corect absența complicațiilor.
- *Fals pozitiv*: Modelul a prezis complicații când, de fapt, nu au fost.
- *Fals negativ*: Modelul nu a prezis complicații, deși acestea au existat.

==== 5. Coeficienții modelului și importanța caracteristicilor

```python
# Coeficienții modelului
coef_df = pd.DataFrame({'Caracteristică': caracteristici, 'Coeficient': model.coef_[0]})
coef_df = coef_df.sort_values('Coeficient', ascending=False)

```

Fiecare caracteristică imagistică are un *coeficient* asociat, care indică influența sa asupra predicției complicațiilor:

- Un *coeficient pozitiv* indică faptul că prezența acelei caracteristici crește probabilitatea de complicații.
- Un *coeficient negativ* indică faptul că prezența acelei caracteristici scade probabilitatea de complicații.

```python
# Vizualizarea importanței caracteristicilor
plt.figure(figsize=(10,6))
sns.barplot(x='Coeficient', y='Caracteristică', data=coef_df)
plt.title('Importanța Caracteristicilor în Prezicerea Complicațiilor')
plt.xlabel('Coeficient')
plt.ylabel('Caracteristică')
plt.show()

```

Un grafic de tip *bară* vizualizează coeficienții pentru fiecare caracteristică, ajutând la înțelegerea importanței fiecărei variabile în prezicerea complicațiilor.

==== 6. Interpretarea rezultatelor

```python
print("\\nInterpretarea coeficienților:")
for index, row in coef_df.iterrows():
    print(f"{row['Caracteristică']}: {row['Coeficient']:.4f}")
    if row['Coeficient'] > 0:
        print(f"  Prezența acestei caracteristici crește probabilitatea de complicații.")
    else:
        print(f"  Prezența acestei caracteristici scade probabilitatea de complicații.")
    print()

```

Pentru fiecare caracteristică, se oferă o interpretare clară:

- Caracteristicile cu coeficienți pozitivi indică un risc crescut de complicații.
- Caracteristicile cu coeficienți negativi indică un risc redus de complicații.