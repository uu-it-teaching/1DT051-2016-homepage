---
title: Del 2 - Uppgifter
---

## Testdriven utveckling

[Testdriven utveckling](https://sv.wikipedia.org/wiki/Testdriven_utveckling)
(engelska: test-driven development, TDD) är en metod som
går ut på att använda automatiska tester för att säkerställa att den kod som
skrivs fungerar på ett tillfredställande sätt. Metoden förespråkar att ingen
programkod får införas eller ändras utan att testfall har skrivits först.

{{< note title="Automatiska tester" >}}

Under denna uppgift kommer du få pröva på att arbeta med metoden testdriven
utveckling (TDD). För detta ändamål finns ett antal färdiga tester som du kan köra för
att tesa din kod. Din uppgift blir således att se till så att samtliga tester
ger korrekta resultat. 

{{< /note >}}

## Skriva kod i en texeditor

Tidigare har vi skrivit enklare (kortare) snuttar Python direkt i Python-tolken.
Vi har även skrivit funktioner och testat dessa med hjälp
av [Python Tutor](http://www.pythontutor.com/). Det är nu dags att börja skriva,
spara, ändra och testa Python-kod med hjälp av en [texteditor][editor].


## Python Idle

Ett enkelt sätt att komma igång med Python är att
använda [Python Idle](https://en.wikipedia.org/wiki/IDLE). Python Idle är
en [utvecklingsmiljö](https://en.wikipedia.org/wiki/IDLE) speciellt framtagen
för att komma igång med Python där det ingår en enklare texteditor.

Dessa instruktioner utgår från att du använder Python IDLE. 

{{< note title="Annan editor" >}} 

Om du föredrar att använda en annan texteditor än
den som följer med Python IDLE får du på egen hand ta reda på hur den används
och vilka inställningar som kan behöva göras för att på bästa sätt underlätta
när du skriver Python-kod. 

{{< /note >}}

Då Python använder indrag (indentation) som en del av [syntaxen][syntax] kan det
bli problem om du blandar olika sätt att göra indrag.

{{< warning title="TAB == fyra blanksteg" >}}

För Python-kod är den allmänt vedertagna standarden att använda fyra (4) stycken
blanksteg (spaces) för varje nivå av indrag. Om du väljer att använda en annan
editor än den som följer med Python IDLE behöver du konfiguera din texteditor
att sätta in fyra blanksteg när du trycker på TAB.

{{< /warning >}}

[editor]:https://www.it.uu.se/education/course/homepage/introdat/ht16/editorer/

[syntax]:https://sv.wikipedia.org/wiki/Syntax#Syntax_i_datavetenskap


## Hämta hem filer med Git

I denna uppgift skall du utgå från befintlig kod där du skall lägga till kod
eller ändra befintlig kod. Den kod som skall användas hittar du i
repositoryt [1DT051-2016-programming-part-2][part-2-repo]
på [GitHub](https://github.com/).


För att hämta de filer du behöver använder du [Git][git]. 

Öppna en terminal. 

```shell
linux> 
```

Klona repositoryt. 

```shell
linux> git clone https://github.com/uu-it-teaching/1DT051-2016-programming-part-2.git
```

Du bör nu se något liknadne detta i terminalen. 

```shell
Cloning into '1DT051-2016-programming-part-2'...
remote: Counting objects: 10, done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 10 (delta 2), reused 10 (delta 2), pack-reused 0
Unpacking objects: 100% (10/10), done.
Checking connectivity... done.
linux> 
```

I aktuell katalog har nu katalogen `1DT051-2016-programming-part-2` skapats. Navigera till denna katalog. 

```shell
linux> cd 1DT051-2016-programming-part-2
```
Lista innehållet i katalogen. 

```shell
linux> ls -1
```

Du bör nu se följande i terminalen.

```shell
README.md
mandatory.py
mandatory_test.py
optional.py
optional_test.py
utils.py
utils_test.py
```

## utils.py

I denna modul finns ett antal användbara funktioner definerade. Du behöver inte
ändra eller lägga till något till denna modul.

För att få en överblick över vilka funktioner som finns definerade i denna modul
kan du använda `pydoc` från Linux-terminalen.

```shell
linux> pydoc utils
```

Nu startar Pythons inbyggda system för att läsa dokumentation. 

Innan du forsätter skall du läsa igenom
avsnittet
[navigera och söka i dokumentationen](/python-i-korthet/#navigera-och-söka-i-dokumentationen) i
[Python i korthet](/python-i-korthet).

För att komma tillbaka till Linux-prompten i terminalen, tryck **q**.

## utils_test.py

Det kan vara praktiskt att spara alla test av funktionerna i en modul i
en separat modul för att på så sätt hålla i sär definition och testning av
funktioner. I modulen `utils_test.py` hittar du därför ett antal test av
funktioner i modulen `utils.py`.

För att köra testerna direkt från Linux-prompten låter du python köra funktionen
`main` i modulen `utils_test.py` på följande sätt.

```shell
linux> python utils_test.py
```

Om utskrifterna av testerna inte får plats på skärmen kan du skicka vidare
utskrifterna till kommandot [less][less].

[less]:https://en.wikipedia.org/wiki/Less_(Unix)
```shell
linux> python utils_test.py | less
```

Nu visas resultatet av testerna en sida i taget och du kan på samma sätt som när
du läser dokumentation om
Python-moduler
[navigera och söka i dokumentationen](/python-i-korthet/#navigera-och-söka-i-dokumentationen).

För att komma tillbaka till Linux-prompten i terminalen, tryck **q**.


{{< note title="Allt fungerar som tänkt" >}}

Testen av funktionerna i modulen `utils.py` ger alla korrekt resultat och du
behöver inte lägga till eller ändra något i modulen `utils.py`.

{{< /note >}}

### För den nyfikne

Om du är nyfiken kan du kika närmare på koden i modulen `utils_test.py`. Är du
inte nyfiken kan du hoppa vidare direkt till
avsnittet [mandatory.py](#mandatory-py).


 Överst i modulen
`utils_test.py`
[importeras alla funktioner](/python-i-korthet/#import-av-alla-funktioner-i-en-modul) från
modulen `utils.py` med raden `from utils import *`.

När du kör testerna från Linux-terminalen med hjälp av `python utils_test.py` sätts
[automagiskt][automagisk] variablen `__name__` till `"__main__"`. I slutet av
modulen hittar du följande: 

```python
if __name__ == "__main__":
    main()
```

Testet ovan gör så att när modulen körs från Linux-terminalen så kommer
funktionen `main` i modulen `utils_test.py` att köras. I funktionen `main` hittar
du sedan ett antal anrop till funktioner. Varje sådan funktion utgör ett eller
flera tester av en av funktionerna i modulen `utils.py`.

Bland test-funktionerna hittar du många exempel
på [formatering av strängar](/python-i-korthet/#formatering-av-strängar) kan
användas för att **interpolera** värden på variabler i en sträng.

[automagisk]:https://sv.wikipedia.org/wiki/Automagisk

## mandatory.py

I denna modul finns skeletten till ett antal funktioner definerade. Du behöver
lägga till kod för att funktionerna skall fungera enligt sina beskrivningar.

För att få en överblick över vilka funktioner som finns definerade i denna modul
använder du `pydoc` från Linux-terminalen.

```shell
linux> pydoc mandatory
```

För att komma tillbaka till Linux-prompten i terminalen, tryck **q**.


## mandatory_test.py

I modulen `mandatory_test.py` hittar du ett antal test av funktioner i modulen `mandatory.py`.

För att köra testerna direkt från Linux-prompten låter du python köra funktionen
`main` i modulen `mandatory_test.py` på följande sätt.

```shell
linux> python utils_test.py
```

Om utskrifterna av testerna inte får plats på skärmen kan du skicka vidare
utskrifterna till kommandot [less][less].

```shell
linux> python mandatory_test.py | less
```

För att komma tillbaka till Linux-prompten i terminalen, tryck **q**.v

{{< warning title="Testerna ger felaktiga resultat" >}}
Notera att testerna av funktionerna i modulen `mandatory.py` ger felaktiga
resultat. Din uppgift är att fixa till koden så att alla funktioner ger korrekta
resultat. 
{{< /warning >}}

## Starta Python IDLE

Öppna modueln `mandatory.py` i Python IDLE. 

```shell
linux> idle mandatory.py &
```

{{< note title="Få tillbaka Linux-prompten" >}}
Genom att lägga till ett avslutande `&` sist efter `idle mandatory.py` i
Linux-terminalen får du tillbaka Linux-prompten efter det att Python IDLE
startat. Utan `&` kommer Python IDLE att blockera terminalen tills dess att
Python IDLE avslutas.
{{< /note >}}


Nu startar Python IDLE och du bör se ett fönster med en text-editor med koden
för modulen `mandatory.py`.

Notera att olika delar av koden markeras med olika färger. Till exempel har alla
kommentarer en viss färg och alla namn på funktioner en annan färg. 

## Ställ in textstorlek i Python IDLE

Om du tycker textstorleken är för stor (eller för liten) kan du ställa in den
från menyn `Options` > `Configure IDLE`.

## Ändra-spara-testa

Med hjälp av text-editorn i Python IDLE skall du nu fixa till koden för
funktionerna i modulen `mandatory.py`.

### is_odd

Börja med funktionen `is_odd`. I början av funktionen hittar du
en [docstring](/python-i-korthet/#dokumentera-funktioner) som beskriver
funktionens önskvärda beteende.  

Din uppgift är att ändra värdet som returneras så att `True` returnernas om
parametern `n` är ett udda tal och returnera `False` om parametern `n` är ett
jämnt tal.

Spara sedan koden: `File` > `Save`. 

Kör testerna för modulen `mandatory.py` igen.

```shell
linux> python mandatory_test.py | less
```

För att komma tillbaka till Linux-prompten i terminalen, tryck **q**.

Upprepa proceduern **ändra-spara-testa** tills testerna för funktionen `is_odd`
ger korrekt resultat. 

## is_even ... lengths

Upprepa proceduren **ändra-spara-testa** för resterande funktioner i modulen
`mandatory.py`



[git]:https://www.it.uu.se/education/course/homepage/introdat/ht16/git/

[part-2-repo]:https://github.com/uu-it-teaching/1DT051-2016-programming-part-2
