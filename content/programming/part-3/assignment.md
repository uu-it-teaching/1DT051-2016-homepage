---
title: Del 3 - Uppgifter
---

## Förkunskaper

Från uppgifterna programmering [del 1](../../part-1/) och [del 2](../../part-2)
bör du förstå och kunna använda dig av följande koncept.

* [Variabler](/python-i-korthet/#variabler)

* [Villkor (if-elif-else)](/python-i-korthet/#if-elif-else)

* [Funktioner](/python-i-korthet/#funktioner-i-python)

* [Listor](/python-i-korthet/#listor)

* Slingor
  ([while](/python-i-korthet/#while), [for-in](/python-i-korthet/#for-in))
  
Du skall kunna använda [Python Idle](/idle) eller någon annan texteditor för att skriva,
spara, ändra och köra Python-program.

Du bör ha gjort
övningarna [introduktion till begreppen klass och objekt](../objects)
och [introduktion till grafik i Python](../graphics) innan du fortsätter.

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
ett något större problem än de du stött på tidigare under
programmering [del 1](../../part-1/) och [del 2](../../part-2). Du kommer även att få använda dig av färdig kod i form av ett antal funktioner
som en del av din lösning.

## Hämta hem filer med Git

Inann du fortsätter måste du [hämta hem filer för del 3 med Git](../files) om du
inte redan gjort det.


## Starta Python

Innan du fortsätter behöver du starta en Python-tolk. Du kan göra detta genom att
använda [Python Idle](/idle) eller genom
att
[starta en Python-tolk från Linux-terminalen](/python-i-korthet/#starta-en-python-tolk).


## Färdiga funktioner i assignment.py 

Öppna filen `assignment.py` i Python Idle eller i någon annan text-editor. I
början av filen finns ett antal färdiga funktioner som du skall använda dig av.

### randomPoint(p1, p2)

Denna funktion returnerar ett slumpmässigt Point-objekt inom den rektangel som
har `p1` som övre vänstra hörn och `p2` som nedre högra hörn. Kika på
koden för funktionen `randomPoint` och försök förstå hur den fungerar.

Bekanta dig med denna funktion genom att testa den från Python-tolken. Börja med
att importera följande.

```python
>>> from graphics import *
>>> from assignment import randomPoint
```

Nu kan du testa funktionen `randomPoint`.

```python
>>> p = randomPoint(Point(10,10), Point(90, 90))
>>> p.getX()
62
>>> p.getY()
80
>>>
```

Testa att skapa ytterligare en punkt för att se om den får andra värden på x och y. 

```python
>>> p = randomPoint(Point(10,10), Point(90, 90))
>>> p.getX()
20
>>> p.getY()
42
```

Testa att göra en slinga som skapar och skriver ut x- och y-värdet för en
slumpmässig punkt 10 gånger.

```python
>>> for _ in range(10):
...     p = randomPoint(Point(10,10), Point(90, 90))
...     print p.getX(), p.getY()
... 
60 24
54 29
88 27
44 68
80 82
83 52
82 79
16 17
9 2
11 55
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

## Färdigställ funktioner i assignment.py

I modulen `assignment.py` finns ett antal funktioner som du måste lägga till
eller ändra på olika sätt.

## main()

Kika på koden för funktionen `main(). `I denna funktion skapas ett grafikfönster
och i detta fönster ritas en kvadrat och en cirkeln upp.

### Python Idle

Från editor-fönstret där du tidigare öppnat filen `assignment.py` i Python Idle,
tryck **F5**. Nu kommer funktionen `main()` att köras.

### Annan editor 

Om du använder någon annan editor kör du enklast funktionen `main()` direkt från
Linux-terminalen.

```shell
linux> python assignment.py
```

### Resultat av testkörning

Ett nytt fönster med titeln `Programmering 3` skall nu öppnas. Mitt i fönstret
finns en kvadrat och inuti kvadraten, i mitten, finns en cirkel som på bilden
nedan.

![image alt text](/images/part-3-assignment/image_1.png)

### Röd fyrkant och gul cirkel

Ändra koden så att fyrkanten blir röd och cirkeln gul. När du kör programmet
skall resultatet se ut så här.

![image alt text](/images/part-3-assignment/image_2.png)

## randomBackground(w, 50)

I början av funktionen `main()` anropas funktionen `randomBackground(w, 50)`.

Skriv klart funktionen `randomBackground` enligt beskrivningen i funktionens [docstring](/python-i-korthet/#dokumentera-funktioner). Du skall använda
den färdiga funktionen `randomGrayCircle` och slingan `for-in` i din lösning.

### Slingan for-in

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

### Testkörning

När du är klar skall resultatet av en testkörning se ut ungefär så här. 

![image alt text](/images/part-3-assignment/image_3.png)

## inCircle(p, c)

Denna funktion är tänkt att avgöra om en punkt `p` ligger inom cirkeln `c`.

Innan du fortsätter, fundera med hjälp av papper och penna på hur du kan avgöra
om en punkt ligger inom en cirkel och skriv sedan klart funktionen.

{{< note title="Tips" >}}

Funderar på om du kan använda dig
av [Pythagoras sats](https://sv.wikipedia.org/wiki/Pythagoras_sats) som en del
av din lösning.

{{< /note >}}

Du hittar flera tips nedan som kan vara bra att läsa igenom innan du fortsätter.

### Metoderna getX() och getY()

För att plocka ut x- respektive y-värdet ur en punkt används metoderna `getX()`
respektive `getY()`. Om `p` är ett Point-objekt får du ut x-värdet med
`p.getX()` och y-värdet med `p.getY()`.

### Upphöjt till

För att beräkna kvadraten av ett uttryck kan operatorn `**` (upphöjt) användas.
Till exempel kan 2<sup>3</sup> skrivas som `2**3` i Python.

### Roten ur

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
>>> 9**0.5
>>> 3.0
```

### getRadius()

Om `c` är en cirkel får du ut radien med `c.getRadius()`.

### getCenter()

Om `s` är en cirkel eller rektangel får du ut centrumpunkten med
`s.getCenter()`.

## handleClick()

Programmet är i sitt nuvarande utförande inte så interaktivt. I slutet av
funktionen `main()` finns en oändlig slinga (`while True`). I denna slinga
väntar programmet på ett musklick inom fönstret. När ett klick i punkten `p`
inträffar anropas funktionen `handleClick(p, c, r)` där `c` är den gula cirkeln
och `r` den röda kvadraten.

### Klick i gula cirkeln

Om klicket sker inom den gula cirkeln skall den byta färg slumpmässigt.

- Använd funktionerna `inCircle()` och `randomColorFill()`.

### Klick i röda kvadraten men utanför den gula kvadraten

Om klicket sker inom den röda kvadraten men utanför den gula cirkeln skall
kvadraten byta färg slumpmässigt.

- Använd funktionerna `inRectangle()` och `randomColorFill()`.


### Klick utanför den röda kvadraten 

Om klicket sker utanför den röda kvadraten skall centrumpunkterna för både den
röda kvadraten och den gula cirkeln flyttas till punkten för klicket.

- Börja med att skriva klart funktionen `move()` som du sedan använder för att flytta på
kvadraten och cirkeln.

