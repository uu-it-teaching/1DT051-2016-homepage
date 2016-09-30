---
title: Del 3 - Introduktion till begreppen objekt och klass 
---

**Objektorienterad programmering** (Object Oriented Programming, **OOP**) är en
programmeringsmetod i vilken ett program kan innehålla en varierande uppsättning
objekt som interagerar med varandra. De ursprungliga idéerna i metoden (objekt,
inkapsling) uppstod i slutet av 1960-talet i programmeringsspråk för simulering[^OOP].

[^OOP]:https://sv.wikipedia.org/wiki/Objektorienterad_programmering

## Objekt

Objekt är ett sätt att hålla ihop data och kod som hör ihop. Ett objekt utgörs
av en samling **attribut** (data) som beskriver objektets **egenskaper** och en samling
**operationer** (kod) som får tillgång till objektets attribut eller kan ändra på
objektets attribut.

Ett kännetecken för objekt är att de binder samman data som lagras i objektet
med ett antal operationer som får tillgång till detta data.

## Klass

Objekt som delar samma uppsättning attribut (data) och operationer (kod) utgör
en klass av objekt.

## Ett objekt är en instans av en klass

Ett objekt är ett konkret exemplar, en instans, av det som klassen beskriver.
Det går att skapa flera olika objekt av en viss klass, var och ett med olika
värden på sina attribut.

## Konstruktor

För att skapa ett nytt objekt av en viss klass anropas klassens konstruktor.
Konstruktorn kan ta ett antal argument som kan användas för att initiera
attributen hos det nya objektet.

## Metoder

En metod är en funktion som kan hämta information från ett objekt eller
manipulera objektets attribut.

## Exempel

För att bättre förstå hur begreppen **objekt**, **attribut**, **metod**,
**klass**, **konstruktor** och  **instans** hänger samman skall vi studera ett
exempel. 

### Klass

För att beskriva en person kan vi tänka oss en klass med **attributen** namn, ålder
och favoritfärg. För att ända på ålder och favoritfärg kan vi lägga till **metoder**
(operationer) för detta.

<table class="python-class">
  <tr>
    <td class="class">Class Person</td>
  </tr>
  <tr>
    <td class="attributes">Attributes</td>
  </tr>
  <tr>
    <td>name</td>
  </tr>
  <tr>
    <td>age</td>
  </tr>
  <tr>
    <td>favorite_colour</td>
  </tr>
  <tr>
    <td class="methods">Methods</td>
  </tr>
  <tr>
    <td>set_age</td>
  </tr>
  <tr>
    <td>set_favorite_colour</td>
  </tr>
</table>

### Konstruktor 

En konstruktor för klassen `Person` skulle kunna se ut så här:

```python
Person(name, age, favorite_colour)
```

### Objekt


Det går att skapa flera objekt utifrån en och samma klass. Vi kan till exempel
skapa flera olika person-objekt av klassen **Person**, var och en med unika
värdet på attributen **name**, **age** och **favorite_colour**.

För att skapa objekt av klassen Person anropar vi konstruktorn med konkreta
värden för konstruktorns parametrar, dvs med argument. Vanligen sparas sedan det
nya objektet i en variabel och man säger då att variabeln är ett objekt. 

I exemplet nedan skapas två objekt från klassen `Person` och sparas i
variablerna `bosse` och `nina`. Vanligen säger man nu att `bosse` och `nina` är
**objekt** från klassen `Person`. Objekten är konkreta **instanser** av de objekt
som klassen `Person` beskriver. 


```python
bosse = Person("Bosse", 23, "Orange")
nina  = Person("Nina", 27, "Blue")
```

### Metod

Metoderna `set_age` och `set_favorite_colour` kan sedan användas för att ändra
värdet på atributet `age` respektive `favorite_colour`. För att anropa en metod
används används operatorn `.` (punkt) mellan objektet och namnet på metoden.

```python
bosse.set_age(42)
bosse.set_favorite_colour("Yellow")
```

## Starta en Python-tolk

Innan du fortsätter behöver du starta en Python-tolk. Du kan göra detta genom att
använda [Python Idle](/idle) genom
att
[starta en Python-tolk från Linux-terminalen](/python-i-korthet/#starta-en-python-tolk).


## Listor är objekt i Python

I Python är listor objekt av klassen `list`.

### Konstruktor

För att skapa en ny tom lista används konstruktorn `list()`. Vanligen används
dock den speciella notationen
([syntaktiskt socker](https://sv.wikipedia.org/wiki/Syntaktiskt_socker)) `[]` i
stället för `list()`.

```python
>>> a = list()    # Skapa en tom lista men konstruktorn list().
>>> b = []        # Skapa en tom lista med det alternativa skrivsättet.
```

### Metoden append()

För att lägga till element sist till en lista används metoden `append()`. För
att anropa metoden `append()` på ett list-objekt sparat i en variabel används
operatorn `.` (punkt) mellan variabeln och `append()`.

```python
>>> a.append(22)      # Lägg till elementet 22 sist i listan a.
>>> a                 # Listan har uppdaterats.
[22]
>>> a.append(33)      # Lägg till elementet 33 sist i listan a.
>>> a                 # Listan har uppdaterats.
[22, 33]
>>> b.append("first") # Lägg till elmentet "first" sist i listan b.
>>> b
["first"]
```

För att på ett enkelt sätt kunna skapa listor utan att behöva använda `append()`
kan följande alternativa skrivsätt (syntaktiska socker) användas.

```python
>>> c = [5, 13, 7] # Skapa en ny lista med tre element.
>>> c
[5, 13, 7]
>>> c.append(13)   # Lägg till elementet 13 sist i listan c.
>>> c              # Listan har uppdaterats.
[5, 13, 7, 13]
```

### Fler metoder på list-objekt

Objekt av klassen `list` stöder ett antal olika metoder, däribland `append()`.
Bland övriga metoder hittar vi bland annat `sort()`, `reverse()` och `count()`.
Precis som för metoden `append()` används operatorn `.` (punkt) mellan den
variabel som refererar till ett list-objekt och namnet på den metod man vill
utföra.

```python
>>> c.sort()      # Sortera listan c.
>>> c
[5, 7, 13, 13]
>>> c.reverse()   # Vänd på listan c.
>>> c
[13, 13, 7, 5]
>>> c.count(13)   # Räkna förekomsten av talet 13 i listan c.
2
```

Observera att ibland använder man en vanlig funktion tillsammans med objekt som
argument. Ett exempel är funktion `len()` som är en inbyggd funktion och alltså
inte en metod till ett objekt.

```python
>>> len(c)
>>> 4
```

## Tag reda på mer med help()

För att ta reda på mer om ett visst list-objekt, till exempel `c`, och se vilka
metoder som finns tillgängliga kan vi använda
`help(c)`.

```python
>>> help(c)
```

I stället för att anropa `help` med ett konkret list-objekt kan `help` anropas
med namnet på datatypen för listor, dvs anropas som  `help(list)`.

```python
>>> help(list)
```
För att avsluta hjälpen och komma tillbaka till Python-tolken, tryck `q` eller
`Q`.
