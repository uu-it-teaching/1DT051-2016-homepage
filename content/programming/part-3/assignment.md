---
title: Del 3 - Uppgifter
---

## Förkunskaper

Från uppgifterna programmering 1 och 2 bör du förstå och kunna använda dig av
följande koncept.

* Variabler

* Villkor (if-elif-else)

* Funktioner

* Listor

* Slingor (while, for-in)

Du bör ha gjort
övningarna [introduktion till begreppen klass och objekt](../objects)
och [introduktion till grafik i Python](../graphics) innan du fortsätter.

Du skall kunna använda Python IDLE eller någon annan texteditor för att skriva,
spara, ändra och köra Python-program.

## Syfte

Syftet med denna uppgift är att du skall få uppleva hur metoden söndra och
härska kan användas för att bryta ner ett något större programmeringsproblem i
mindre delar.

Genom att bryta ner problemet i mindre avgränsade delar blir det möjligt att strukturera koden med hjälp av ett antal funktioner som var och en löser ett avgränsat och väl definerat problem. Koden blir på detta sätt lättare att både skriva, felsöka och förstå.  

Du kommer också få öva dig på att läsa, förstå och använda kod som någon annan
redan skrivit.

## Mål

Efter att ha löst denna uppgift skall du på egen hand kunna börja lösa ett
programmeringsproblem genom att bryta ner problemet i mindre delar som är
lättare att förstå och lösa var för sig för att sedan sätta samman delarna till
en fungerande helhet (söndra och härska).

Efter att ha löst denna uppgift skall du skall även kunna använda listor och
slingor som verktyg för att lösa problem.

## Metod

I denna uppgift kommer du att använda ett enklare grafiskt bibliotek och lösa
ett något större problem än de du stött på tidigare under programmering 1 och 2.
Du kommer även att få använda dig av färdig kod i form av ett antal funktioner
som en del av din lösning.

## Förberedelser

###  Ladda ner arkiv

Om du inte redan gjort det behöver du ladda ner och packat upp följande filarkiv
från kursens sida i Studentportalen: `Programmering` ➤ `Guider och filer `➤
`Python (kod)` ➤ `1DT051_2015_prog3.tar.gz`

###  Packa upp arkiv 

Navigera till katalogen där du laddat ner filarkivet `1DT051_2015_prog3.tar.gz`.

Packa upp arkivet med kommandot `tar`.

linux> tar xvfz 1DT051_2015_prog3.tar.gz 

När du tryckt enter packas arkivet upp och du bör se följande utskrift i terminalen.

1DT051_2015_prog3/

1DT051_2015_prog3/assignment.py

1DT051_2015_prog3/colors.py

1DT051_2015_prog3/demo.py

1DT051_2015_prog3/graphics.py

1DT051_2015_prog3/setup.py

linux> 

Du bör nu ha en ny katalog med namn `1DT051_2015_prog3.` Ändra aktuell katalog
till `1DT051_2015_prog3`.

linux> cd 1DT051_2015_prog3

Kontrollera att du ser följande filer.

linux> ls

assignment.py  colors.py  demo.py  graphics.py  graphics.pyc  setup.py

linux> 

## Starta Python

Innan du fortsätter behöver du starta en Python. Du kan göra detta genom att
använda Python IDLE eller genom att starta Python direkt från Linux-terminalen.

### Python IDLE

På Linux-systemet startar du Python IDLE från startmenyn (Launch) ➤ Programming
➤ Idle.

![image alt text](/images/part-3-assignment/image_0.png)

Öppna filen `setup.py` i Python IDLE och tryck F5. Det skall nu ha öppnats en
Python-tolk (Python shell).

### Linux-terminalen 

Starta Python-tolken genom att skriva python vid Linux-prompten och tryck enter.

linux> python

Python 2.7.5 (default, Mar  9 2014, 22:15:05) 

[GCC 4.2.1 Compatible Apple LLVM 5.0 (clang-500.0.68)] on darwin

Type "help", "copyright", "credits" or "license" for more information.

>>> 

## Bekanta dig med färdiga funktioner

Öppna filen `assignment.py` i Python IDLE eller i någon annan text-editor. I
början av filen finns ett antal färdiga funktioner som du skall använda dig av.

### Öppna modulen assignment.py

Precis som tidigare kan du välja att använda Python IDLE eller någon annan
texteditor.

####.1 Python IDLE

Öppna modulen assignment.py från Python IDLE: File ➤ Open ➤ assignment.py

####.2 Annan editor 

Om du använder någon annan editor, öppna `assignment.py` i denna editor.

### randomPoint(w)

Denna funktion returnerar ett slumpmässigt Point-objekt i fönstret `w`. Kika på
koden för denna funktion och försök förstå hur den fungerar.

Bekanta dig med denna funktion genom att testa den från Python-tolken. Börja med
att importera följande.

```python
>>> from graphics import *
>>> from assignment import randomPoint
```

Skapa sedan ett grafikfönster.
```python
>>> w = GraphWin("test", 100, 100)
```

Nu kan du testa funktionen randomPoint().

```python
>>> p1 = randomPoint(w)
>>> p1.getX()
39
>>> p1.getY()
53
```

Testa att skapa ytterligare en punkt för att se om den får andra värden på x och y. 

```python
>>> p2 = randomPoint(w)
>>> p2.getX()
20
>>> p2.getY()
42
```

Testa att göra en slinga som skapar och skriver ut x- och y-värdet för en slumpmässig punkt 10 gånger. 

```python
>>> for _ in range(10):
...     p = randomPoint(w)
...     print p.getX(), p.getY()
... 
60 24
94 29
88 27
94 68
80 82
83 52
82 79
16 17
9 2
100 55
>>> 
```

I slingan `for `_` in range(10)` används i detta fall variabeln `_ `(underscore)
för att signalera till den som läser koden (människa) att här måste det finnas
en variabel men att den inte används till något i slingan. Det går som vanligt
bra att döpa variablen till något helt annat, till exempel `for `number` in
range(10)`.

### randomGrayFill\(c)

Denna funktion ger en cirkel `c` en slumpmässig grå färg. Kika på koden för
funktionen och försök förstå hur den fungerar. Testa funktionen från
Python-tolken.

```python
>>> from assignment import randomGrayFill
```

Skapa och rita ut en cirkel. 

```python
>>> c = Circle(Point(50, 50), 30)
>>> c.draw(w)
```

Med hjälp av `randomGrayFill()` kan du ge cirkeln en slumpmässig grå färg.

```python
>>> randomGrayFill(c)
```

Kolla i grafikfönstret vilket färg cirkeln fick. Prova flera gånger och se om
färgen på cirkeln ändras.
 
```python
>>> randomGrayFill(c) 
>>> randomGrayFill(c) 
>>> randomGrayFill(c) 
```

### randomColorFill(shape)

Denna funktion ger en cirkel eller rektangel en slumpmässig färg. Kika på koden
för funktionen och försök förstå hur den fungerar. Testa funktionen från
Python-tolken.

```python >>> from assignment import randomColorFill ```

Med hjälp av `randomGrayFill()` kan du ge cirkeln du ritat ut tidigare en
slumpmässig färg.

```python >>> randomColorFill(c) ```

Kolla i grafikfönstret vilket färg cirkeln fick.  Prova flera gånger och se om färgen på cirkeln ändras.

```python
>>> randomColorFill(c)
```

### randomGrayCircle(w)

Denna funktion returnerar en cirkel med centrum på en slumpmässig punkt i
fönstret `w`, med en slumpmässig radie och en slumpmässig färg. Kika på koden
för funktionen och försök förstå hur den fungerar.

Funktionen `randomGrayCircle()` använder i sin tur funktionerna `randomPoint()
`och `randomGrayFill()` och är ett exempel på hur metoden söndra och härska kan
användas för att bryta ner ett problem i mindre delproblem.

Testa funktionen `randomGrayCircle()` från Python-tolken.

```python
>>> from assignment import randomGrayCircle
>>> c1 = randomGrayCircle(w)
>>> c1.draw(w)
```

Kolla i grafikfönstret för att se om det ritades upp en ny slumpmässig cirkel. Prova några gånger till. 

```python
>>> c2 = randomGrayCircle(w)
>>> c2.draw(w)
```

### inRectangle(p, r)

Denna funktion returnerar `True` om punkten `p` ligger inom rektangeln `r`. Om
`p` ligger utanför `r` returneras `False`. Kika på koden för funktionen och
försök förstå hur den fungerar.

Testa funktionen `inRectangle()` från Python-tolken.

```python
>>> from assignment import inRectangle
>>> r = Rectangle(Point(10, 10), Point(40, 40))
>>> inRectangle(Point(30, 30), r)
True
>>> inRectangle(Point(50, 50), r)
False
```

## Lägg till och ändra på egen hand

I modulen `assignment.py` finns ett antal funktioner som du måste lägga till
eller ändra på olika sätt.

### main()

Kika på koden för funktionen `main(). `I denna funktion skapas ett grafikfönster
och i detta fönster ritas en kvadrat och en cirkeln upp.

####.1 Python IDLE

Från editor-fönstret där du tidigare öppnat filen assignment.py i Python IDLE,
tryck F5. Nu kommer funktionen `main()` att köras.

####.2 Annan editor 

Om du använder någon annan editor kör du enklast `main()` direkt från
Linux-terminalen.

```shell
linux> python assignment.py
```

####.3 Resultat av testkörning

Ett nytt fönster med titeln `Programmering 3` skall nu öppnas. Mitt i fönstret
finns en kvadrat och inuti kvadraten, i mitten, finns en cirke som på bilden
nedan.

![image alt text](/images/part-3-assignment/image_1.png)

####.4 Röd fyrkant och gul cirkel

Ändra koden så att fyrkanten blir röd och cirkeln gul. När du kör programmet
skall resultatet se ut så här.

![image alt text](/images/part-3-assignment/image_2.png)

### randomBackground(w, 50)

I början av funktionen `main()` anropas funktionen `randomBackground(w, 50)`,
skriv klart denna funktionen enligt beskrivningen. Du skall använda den färdiga
funktionen `randomGrayCircle(w)` och slingan `for-in` i din lösning.

####.1 Slingan for-in

För att upprepa något `N` gånger behöver vi konstruera en slinga som upprepas
`N` gånger. Ett sätt är att göra en slinga över en lista med talen `0, 1, …,
N-1`. Denna lista kan vi skapa med hjälp av den inbyggda funktionen `range()`.

```python
>>> N = 50
for x in range(N):
...     # Do stuff
```

Om vi inte använder variabeln `x` inuti slingan är det brukligt att använda `_`
(underscore) i stället för `x`. På detta satt signalerar vi till andra
programmerare som kommer läsa koden att vi inte är intresserade av värdet på de
olika elementen i listan utan endast av att upprepa något ett viss antal gånger,
i detta fall 50 gånger.

```python
>>> for _ in range(N):
...     # Do stuff
```

####.2 Testkörning

När du är klar skall resultatet av en testkörning se ut ungefär så här. 

###  ![image alt text](/images/part-3-assignment/image_3.png)

### inCircle(p, c)

Denna funktion är tänkt att avgöra om en punkt `p` ligger inom cirkeln `c`.

Innan du fortsätter, fundera med hjälp av papper och penna på hur du kan avgöra
om en punkt ligger inom en cirkel och skriv sedan klart funktionen.

`Tips: `Funderar på om du kan använda dig
av [Pythagoras sats](https://sv.wikipedia.org/wiki/Pythagoras_sats) som en del
av din lösning.

Du hittar flera tips nedan som kan vara bra att läsa igenom innan du fortsätter.

####.1 Metoderna getX() och getY()

För att plocka ut x- respektive y-värdet ur en punkt används metoderna `getX()`
respektive `getY()`. Om `p` är ett Point-objekt får du ut x-värdet med
`p.getX()` och y-värdet med `p.getY()`.

####.2 Upphöjt till

För att beräkna kvadraten av ett uttryck kan operatorn ` (upphöjt) användas.
Till exempel kan `2`3` skrivas som `2`3`` i Python.

####.3 Roten ur

Modulen `math` innehåller matematiska funktioner, till exempel `math.sqrt()`,
som kan komma till användning när man jobbar med punkter, cirklar och andra
geometriska figurer.

```python
>>> import math
>>> math.sqrt(9)
3.0
```

Ett alternativ är att använda 0.5 som exponent. 

```python
>>> 9``(0.5)
>>> 3.0
```

####.4 getRadius()

Om `c` är en cirkel får du ut radien med `c.getRadius()`.

####.5 getCenter()

Om du vill veta centrumpunkten hos en cirkel eller rektangel använder du metoden
`getCenter(shape)` där `shape` kan vara en cirkel eller rektangel.

### handleClick()

Programmet är i sitt nuvarande utförande inte så interaktivt. I slutet av
funktionen `main()` finns en oändlig slinga (`while True`). I denna slinga
väntar programmet på ett musklick inom fönstret. När ett klick i punkten `p`
inträffar anropas funktionen `handleClick(p, c, r)` där `c` är den gula cirkeln
och `r` den röda kvadraten.

Om klicket sker inom den gula cirkeln skall den byta färg slumpmässigt.

- Använd funktionerna `inCircle()` och `randomColorFill()`.

Om klicket sker inom den röda kvadraten men utanför den gula cirkeln skall
kvadraten byta färg slumpmässigt.

- Använd funktionerna `inRectangle()` och `randomColorFill()`.

Om klicket sker utanför den röda kvadraten skall centrumpunkterna för både den
röda kvadraten och den gula cirkeln flyttas till punkten för klicket.

- Börja med att skriva klart `move()`` som du sedan använder för att flytta på
kvadraten och cirkeln.

