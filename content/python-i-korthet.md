---
title: Python i korthet
---

Python i korthet är en sammanfattning av det du kommer lära dig om
programmeringsspråket Python på momentet Problemlösning och programmering.

- Samma eller liknande information som återfinns i Python i korthet hittar du
även på [slides från workshops](../resources/#slides-från-föreläsningar-och-workshops).

- Du kan använda Python i korthet för att förbereda dig på egen hand inför
workshops och uppgifter eller som en uppslagsbok när du glömt eller vill
kontrollera om du minns rätt.

{{< warning title="Python 2.7" >}}
Den version av Python som finns installerad på Uppsala universitets Linux-system
och som kommer användas under momentet problemlösning och programmering är
Python 2.7. Python i korthet beskriver därför Python 2.7.
{{< /warning >}}

## Starta en terminal

Starta en Linux-terminal.

På Uppsala universitets Linux-system ser **terminal-prompten** ut så här.

```shell
abcd1234@cronstedt:~$
```

Notera att istället för `abcd1234` bör du se ditt användarnamn och att du kan se
ett annat [servernamn](http://www.it.uu.se/datordrift/maskinpark/linux) än
`cronstedt`.

Fortsättningsvis kommer följande prompt att användas för att ange att du
skall skriva något i terminalen.

```shell
linux>
```

## Python 2.7

Kontrollera att du har Python 2.7 installerat.

```shell
linux> python --version
Python 2.7.6
```

Så länge du har någon variant av Python 2.7.x kommer du kunna använda dig av
denna version.

Har du Python 3 installerat kommer inte allt att fungera på exakt samma sätt
som för Python 2.7 eftersom [Python 3 skiljer sig på ett antal punkter från
Python 2](https://docs.python.org/3/whatsnew/3.0.html).


## Starta en Python-tolk

För att starta en Python-tolk skriver du `python` vid Linux-prompten och trycker
enter.

```shell
linux> python
```

Du bör nu se något liknande detta.

```shell
Python 2.7.3 (default, Jan 23 2013, 14:41:42) [C] on sunos5
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

Python-tolken använder sig av prompten `>>> `. Efter prompten `>>> ` kan du
skriva Python-kod. När du trycker **enter** körs koden du skrivit och resultatet
visas på raden under. Sedan skriv en ny prompt `>>> ` ut.

## Python som miniräknare

Prova att skriva in `1+2` direkt efter Python-prompten `>>> ` och tryck sedan på
**enter**.

```python
>>> 1+2
3
>>>
```

Notera att resultatet av beräkningen `1+2` skrivs ut på en egen rad och
slutligen att en ny Python-prompt `>>> ` skrivs ut på en egen rad.

Prova att skriva in fler beräkningar.

```python
>>> 5*2
10
>>> 3.5*2
7.0
>>> 1+2+3+4+5
15
```

Parenteser kan användas för att gruppera.

```python
>>> 2*(4-1)
6
```

## ​Kommentarer

Med hjälp av tecknet `#` kan kommentarer läggas till i Python-koden, dvs text
som endast är till för att läsas av människor men som Python kommer ignorera.

Allt efter tecknet `#` på en rad utgör en kommentar (inklusive tecknet `#` självt).

```python
>>> 1+2 # Ett plus två
3
```

I exemplet ovan utgör `# Ett plus två` en kommentar.


## Blanktecken

Med blanktecken menas **mellanslag** eller **tab**.

När du skriver kod i Python-tolken får du inte ha ett eller flera inledande
blanktecken efter Python-prompten `>>> `.

```python
>>> 1+1       # Detta fungerar
2
>>>   1+1     # Detta fungerar inte
      ^
IndentationError: unexpected indent
>>>
```

Du kan dock ha ett eller flera blanktecken mellan en operand och en operator.

```python
>>> 1+2       # Inga blanksteg mellan operatorn + och operanderna 1 och 2
2
>>> 1  +2     # Blanksteg mellan operanden 1 och operatorn +
3
>>> 1+  2     # Blanksteg mellan operatorn + och operanden 2
3
>>> 1 + 2     # Blanksteg på båda sidorna av operaton +
3
```


## Reserverade ord (keywords)

Python består av ett antal reserverade ord (keywords) med särskild betydelse.
Dessa ord utgör språkets grundläggande **ordförråd**[^kth-python-DD1314]. Pythons
reserverade ord kan inte användas som [identifierare](#identifierare)
och de måste stavas exakt som nedan och skrivas med
enbart [gemener](https://sv.wikipedia.org/wiki/Gemen), dvs skrivas med enbart
små bokstäver.


```python
and       del       from      not       while
as        elif      global    or        with
assert    else      if        pass      yield
break     except    import    print
class     exec      in        raise
continue  finally   is        return
def       for       lambda    try
```


[^kth-python-DD1314]:http://www.csc.kth.se/utbildning/kth/kurser/DD1310/prgo08/F/F02.pdf


## Identifierare 

Ord som du själv inför i din kod kallas för identifierare[^kth-python-DD1314].
Följande regler gäller för identifierare: 

- Kan bestå av bokstäverna `a...z` och `A...Z`, siffrorna
  `0...9` och understreck (underscore) `_`.
- Får inte börja med en siffra.
- Python skiljer på versaler och gemener, till exempel är `bosse` och `Bosse`
inte samma identifierare. 

Exempel på giltiga identifierare: 

```python
a
A
apa
Apa
nisse33
Bosse77
apan_bosse
_apa
```

## Variabler

En variabel är något som kan ändras. En variabel är ett sätt att komma ihåg ett
värde genom att på en namngiven plats lagra detta värde. Namnet du inför för att
lagra värdet måste vara en giltigt [identifierare](#identifierare). 

För att lagra ett värde i en variabel används operatorn `=`.


```python
>>> a = 127
```

Talet `127` har nu lagrats i variablen med namn `a`. Variabeln `a` kan nu användas i
beräkningar.

```python
>>> a + 1
128
>>> 2*a
254
```

För att ta bort en variabel används `del` (delete).

```python
>>> a = 10
>>> b = 100
>>> a + b
110
>>> del b
>>> a
10
>>> b
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'b' is not defined
>>>
```

## Uttryck

Ett uttryck är en **kombination** av **tal**, **operatorer**,
**grupperande symboler** (som klammer och parentes) och/eller **variabler**
ordnade på ett meningsfullt sätt så att Python kan beräkna ett värde. I stället
för att uttryck beräknas säger man ofta att uttryck **utvärderas** (evalueras).

## Datatyp

I programspråk är en datatyp ett attribut för data som berättar för datorn (och
programmeraren) vilken sorts information datat bär på. Eftersom all information
i datorn, även text och bilder, internt hanteras som tal är datatyper ett sätt
att se skillnad på vad talen representerar.

I Python kan vi använda `type` för att ta reda på vilken datatyp data har.

```python
>>> type(1)
<type 'int'>
>>> type(1+1)
<type 'int'>
```

I exemplet ovan ser vi att `1` har datatypen `int` (heltal). Vi ser även att
resultatet av uttrycket `1+1` har datatyp `int` (heltal).

## ​Heltal (int)

Heltal saknar decimaldel.

Exempel på aritmetiska beräkningar med heltal.

```python
>>> a = 127
>>> b = 33
>>> a + b
160
>>> a - b
94
>>> a * b
4191
```

{{< note title="Egenskap hos heltal" >}}
Adderar, subtraherar eller multiplicerar vi två heltal får vi ett nytt heltal.
{{< /note >}}

Hur fungerar det med divsion av heltal?

```python
>>> 1/3
0
>>> 5/2
2
```

I exemplen ovan ser vi att kvoten vid heltalsdivision av 1 med 3 är 0. Vid heltalsdivision av 5 med 2 är kvoten 2.

{{< note title="Division av heltal">}}
Vid divison av två heltal blir resultatet alltid ett heltal i Python.
{{< /note >}}

Resten vid heltalsdivision beräknas  med hjälp av modulo-operatorn `%` (procent).

```python
>>> 1 % 3
1
>>> 11 % 3
2
```

I exemplen ovan ser vi att resten vid heltalsdivision av 1 med 3 är 1. Vid
 heltalsdivision av 11 med 3 är resten 2.

Allmänt gäller för `kvot = a / b` och `rest = a % b` att  `a = b*kvot + rest`.

```python
>>> a = 1
>>> b = 3
>>> b*(a / b) + (a % b)
1
>>> a = 5
>>> b = 2
>>> b*(a / b) + (a % b)
5
>>> a = 17
>>> b = 5
>>> b*(a / b) + (a % b)
17
```

## Decimaltal (float)

Decimal tal kallas även för flyttal och skrivs alltid med decimaldel, även om den är 0.

```python
>>> a = 3     # Heltal
>>> b = 3.0   # Decimaltal
```


Hur fungerar det med flyttal och aritmetik?

```python
>>> 1+2                 # Heltalsaddition
3
>>> 1.0+2               # Flyttalsaddition
3.0
>>> 1+2.0               # Flyttalsaddition
3.0
>>> 1.0+2.0             # Flyttalsaddition
3.0
>>> 1/3                 # Heltalsdivision
0
>>> 1/3.0               # Flyttalsdivision
0.3333333333333333
>>> 1.0/3               # Flyttalsdivision
0.3333333333333333
>>> 1.0/3.0             # Flyttalsdivision
0.3333333333333333
```


{{< note title="Aritmetik med flyttal">}}
Vid addition, subtraktion, multiplikation eller division i Python räcker det att en av
operanderna är ett flyttal för att även resultatet skall bli ett flyttal. Om
båda operanderna är heltal blir resultet ett heltal.
{{< /note >}}

## Sanningsvärden (bool)

I Python andvänds datatypen bool för sådant som kan vara sant eller falskt. Ett
värde av typen bool kan vara `True` eller `False`.

Ordet bool kommer ur Boolesk algebra, som namngivits efter matematikern [George Boole](https://sv.wikipedia.org/wiki/George_Boole).

## Tupler

En tuple består av två eller fler komma-separerade element omslutna av `(` och
`)`.

```python
>>> (11, "Bosse")      # En två-tuple
(11, 'Bosse')
>>> (1, "hej", 127.5)  # En tre-tuple
(1, 'hej', 127.5)
>>>
```

Det första elementet har **index** 0, det andra elementet **index** 1 osv. Med
hjälp av index inom hak-parenteser `[ ]` fås värdet på ett element i en tuple.

```python
>>> (11, "Bosse")[0]
11
>>> (11, "Bosse")[1]
'Bosse'
```

    Index kan även användas när en tuple lagrats i en **variabel**.

```python
>>> t = (1, "hej", 127.5)
>>> t
(1, 'hej', 127.5)
>>> t[0]
1
>>> t[1]
'hej'
>>> t[2]
127.5
```

Tupler kan även **indexeras bakifrån**, då har det sista elementet index -1, det
näst sista index -2 osv.


```python
>>> t[-1]
127.5
>>> t[-2]
'hej'
>>> t[-3]
1
```

Antal element i en tuple fås med `len`.

```python
>>> t1 = (1, "apa")
>>> t2 = ("nisse", 2.5, True, 44)
>>> len(t1)
2
>>> len(t2)
4
```

## Listor

Listor är praktiska och används flitigt i Python. En lista kännetecknas av att den omges av hakparenteser `[` och `]`. Listans element separeras av kommatecken.

### Skapa listor

Så här skapar du en ny tom lista.

```python
>>> l = []  # Skapa den tomma listan l
>>> l       # Värdet på listan l
[]
```

Det går även att skapa listor som inte är tomma genom att direkt rada upp ett antal olika element. Notera att det går utmärkt att blanda olika typer av värden i en och samma lista, till exempel heltal, strängar och andra listor. När du skapar en lista går det att ange ett godtyckligt uttryck som värde.

```python
>>> a = [1, 2, 3]
>>> b = [1+2, "apa"]
>>> c = [8, 9, "apa", ["en", "lista", "i", "en", "lista"], 127]
>>> a
[1, 2, 3]
>>> b
[3, 'apa']
>>> c
[8, 9, 'apa', ['en', 'lista', 'i', 'en', 'lista'], 127]
```

### Längden på en lista

Det finns en inbyggd funktion `len()` som används för att ta reda på hur många element en lista innehåller.

```python
>>> a = [0, 1, 2, 3, 4]
>>> len(a)
5
```

### Index

Elementen i en lista indexeras så att det första elementet har index 0, det andra elementet index 1 osv. Med negativa index indexeras listan bakifrån så att sista elementent har index -1, det nästa sista elementet index -2 osv.

Exempel:

```python
>>> ns = [7, 11, 89, 44, 5]
```

| Element | 7 | 11 | 89 | 44 | 5 |
|--------|---|---|---|---|---|
| Index (framifrån) | 0 | 1 | 2 | 3 | 4 |
| Index (baifrån)   | -5 | -4 | -3 | -2 | -1|


### Plocka ut värdet på ett element i en lista

För att få värdet på ett element i en lista används hakparenteser tillsammans med index.

```python
>>> xs = ["apa", 22, "bosse", -9]
>>> xs[0]
'apa'
>>> xs[1]
22
>>> xs[3]
-9
>>> xs[-1]
>>> -9
>>> xs[-2]
"bosse"
```

### Ändra värdet på ett element i en lista

För att ändra värdet på ett element i en lista används hakparenteser tillsammans med index och tilldelning med ett likhetstecken.

```python
>>> xs = ["apa", 22, "bosse", -9]
>>> xs[2] = "zebra"   ## Ändra värdet på element med index 2 till "zebra"
>>> xs
['apa', 22, 'zebra', -9]
```

### Lägga till ett nytt värde sist i en lista

För att lägga till ett nytt element sist i en lista används **metoden** `append()`.

```python
>>> alpha = ['a', 'b', 'c']
>>> alpha.append('d')
>>> alpha
['a', 'b', 'c', 'd']
```

### Kopiera hela eller delar av en lista

För att skapa en kopia av en lista eller delar av en lista används
slice-notation `[start : (stop+1)]` vilket betyder att kopian skall innehålla
alla element mellan index `start` och index `stop`.

```python
>>> alpha = ['a', 'b', 'c']
>>> beta = alpha[:]         ## En kopia av alla element i alpha.
>>> alpha.append('d')       ## Lägg till 'd' sist i listan alpha.
>>> alpha
['a', 'b', 'c', 'd']        ## Listan alpha är uppdaterad ...
>>> beta
['a', 'b', 'c']             ## Men inte beta som är en kopia.
>>> gamma = a[0:2]          ## En kopia från index 0 till 1 (2-1).
>>> gamma
['a', 'b']
>>> delta = a[1:4]          ## En kopia från index 1 till 3 (4-1).
>>> delta
['b', 'c', 'd']
>>> epsilon = a[1:]           ## En kopia från index 1 till sista elementet.
>>> epsilon
['b', 'c', 'd']
```

Start och stop kan i sin tur vara uttryck.

```python
>>> n = len(alpha)
>>> n
4
>>> alpha[0:n-1]
['a', 'b', 'c']
```

## ​Strängar och tecken

Strängar används för att lagra och manipulera text. En sträng består av ett antal olika tecken och omges av enkla eller dubbla citattecken.

Strängar påminner en hel del om listor. I Python fungerar mycket ungefär likadant för strängar som det gör för listor.

### Skapa strängar

Så här skapar du strängar i Python.

```python
>>> a = ""                 ## En tom sträng utan några tecken.
>>> a
''
>>> b = "A string I am!"   ## En icke-tom sträng med ett antal tecken.
>>> b
'A string I am!'
```

### Längden på en sträng

Precis som för listor används len() för att ta reda på längden (antal tecken) i en sträng.

```python
>>> a = ""
>>> b = "A string I am!"
>>> len(a)
0
>>> len(b)
14
```
    
### Index

Tecknen i en sträng kan på samma sätt som elementen i en  lista indexeras så att det första tecknet har index 0, det andra tecknet  index 1 osv. Även här kan negativa index användas för att indexera bakifrån.

Exempel:

```python
>>> s = "Bosse"
```

| Tecken | B | o | s | s | e |
|--------|---|---|---|---|---|
| Index (framifrån) | 0 | 1 | 2 | 3 | 4 |
| Index (baifrån)   | -5 | -4 | -3 | -2 | -1|


### ​Plocka ut enstaka tecken ur en sträng

På samma sätt som för listor går det att plocka ut enskilda element, dvs enskilda tecken, ur en sträng.

```python
>>> s = '0123456789ABCDEF'
>>> s[0]
'0'
>>> s[1]
'1'
>>> s[14]
'E'
>>> s[-1]
>>> 'F'
```

### Kopiera hela eller delar av en sträng

På samma sätt som för listor går det att plocka ut delar av en sträng med hjälp av slice-notation.

```python
>>> s = '0123456789ABCDEF'
>>> s[:]                    ## Alla tecken från första till sista.
'0123456789ABCDEF'
>>> s[0:4]                  ## Från index 0 till 3 (4-1).
'0123'
>>> s[3:8]                  ## Från index 3 till 7 (8-1)
'34567'
>>> s[3:]                   ## Från index 3 till sista.
'3456789ABCDEF'
```

### Ändra värdet på ett tecken i en sträng

I motsats till listor går det inte att ändra värdet på ett element (tecken) i en sträng.

```python
>>> l = ["apa", 22, "bosse"]
>>> l[1] = 777
>>> l
['apa', 777, 'bosse']
>>> s = "A string I am!"
>>> s[0] = 'X'
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'str' object does not support item assignment
```

### Jämföra tecken med varandra

I Python går det bra att jämföra tecken med varandra.

```python
>>> 'a' == 'a'
True
>>> 'a' == 'b'
False
>>> 'a' < 'b'
True
>>> 'a' <= 'b'
True
>>> 'a' > 'b'
False
>>> 'c' <  'a'
False
>>> 'A' < 'a'
True
>>> 'a' > 'A'
True
>>> 'z' > 'A'
True
>>> 'z' > 'Z'
True
```

Dessa jämförelser bygger på de olika tecknens [ASCII](http://sv.wikipedia.org/wiki/ASCII)-värden.

### Ta reda på ett teckens ASCII-värde

I python används funktionen `ord` för att ta reda på ett teckens ASCII-värde.

```python
>>> ord('a')
97
>>> ord('b')
98
>>> ord('z')
122
>>> ord('A')
65
>>> ord('B')
66
>>> ord('Z')
90
```

### Konvertera från ASCII-värde till tecken

För att konvertera ett ASCII-värde till ett tecken används funktionen `chr`.

```python
>>> ord('z')
122
>>> chr(122)
'z'
>>> ord('Z')
90
>>> delta = ord('a') - ord('A')
>>> delta
32
>>> chr(ord('Z') + delta)    ## Konvertera från stor bokstav till liten bokstav.
'z'
```

### Sätta samman strängar

I Python går det att slå samman strängar med operatorn `+` (plus).

```python
>>> "abc" + "def"
'abcdef'
```

### Upprepa en sträng

För att upprepa en sträng ett visst antal gånger och sätta samman dessa till en ny sträng går det att använda operatorn `*` (stjärna/multiplikation).

```python
>>> "Blip "*3
'Blip Blip Blip '
>>> 'a'*5
'aaaaa'
```



## Formatering av strängar

För att underlätta konstruktion av strängar
kan [sträng-interpolation](https://en.wikipedia.org/wiki/String_interpolation) användas.
Förutom att användas som aritmetisk modulo-operator används `%` i samband med
stränginterpolation.


Ett exempel på sträng-interpolation.
```
"x = %i" % 127
     ^   ^ ^
     |   | |
     1   2 3
```

Efter strängen `"x = %i"` följer `%` och sedan talet `127`.

I strängen `"x= %i"` utgör `%i` (1) en markör som kommer ersättas med
sträng-representationen av (3) **tolkat** som heltal (**int**). Strängen och
data som skall ersätta eventuella markörer separeras av `%` (2).

```python
>>> x = 127
>>> "x = %i" % x
'x = 127'
>>>
```

Det finns andra markörer än `%i`, till exempel `%f` som konverterar (3) till en sträng
**tolkat** som ett decimaltal (**float**).

```python
>>> x = 127
>>> "x = %f" % x
'x = 127'
>>>
```

Markören `%s` används för att byta ut en markör mot en **sträng**.

```python
>>> y = "hej"
>>> "y = %s" % y
'y = hej'
>>>
```

För att ersätta men än en markör anges de värden som skall ersätta markörerna
inom en **tuple** med lika många element som antal markörer.

```python
>>> x = 127
>>> y = "hej"
>>> "x = %d och y = %s" % (x, y)
'x = 127 och y = hej'
>>>
```

Läs mer [här](https://docs.python.org/2/library/stdtypes.html#string-formatting) om vilka markörer som finns för sträng-interpolation.


## Uppslagsbok (dictionary) - överkurs

Dictionaries används för att lagra information som hör ihop på olika sätt. Istället för att som i en lista använda index använder sig ett dictionary av nycklar. Varje nyckel måste vara unik, det kan alltså bara finnas exakt en nyckel med ett visst värde i ett dictionary.

Till varje nyckel kopplas sedan ett värde. På detta sätt går det att utifrån en nyckel slå upp ett värde i ett dictionary (därav namnet). En stor finnes med detta system är att nyckeln kan vara liten men värdet stort och/eller komplext, till exempel långa strängar, listor eller andra dictionaries.

Dictionaries känneteckans av att de omges av måsvinge-parenteser.  En nyckel sperareras från sitt värde med ett kolon. Varje nyckel/värde-par skiljs åt av kommatecken.

### Skapa dictionaries

För att skapa ett nytt dictionary används måsvinge-parenteser.

```python
>>> a = {}               ## Ett tomt dictionary.
>>> a
{}
>>> b = {'a':'apa'}      ## Ett dictionary med en nyckel 'a' med värde 'apa'.
>>> b
{'a': 'apa'}
```

Det går att använda heltal, flyttal tecken och strängar som nycklar i ett dictionary.

```python
>>> d = {'a':'apa', 127:[3,4,5], 1.33333:'A third', 'complex':{1:"a dictionary as value"}}
```

Det är inte tillåtet att använda listor som nycklar.

```python
>>> d = {'a':'apa', [1,2]:'fel'}
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: unhashable type: 'list'
```

### Lägga till nya nycklar och tillhörande värden

Det går att lägga till nya nycklar till ett dictionary. Om nyckeln redan finns uppdateras endast värdet som är kopplat till nyckeln.

```python
>>> b = {'a':'apa'}
>>> b['b'] = 'bosse'       ## Lägg till nyckeln 'b' med värde 'bosse'.
>>> b
{'a': 'apa', 'b': 'bosse'}
>>> b['a'] = "A new value" ## Uppdatera värdet som är kopplat till nyckeln 'a'.
>>> b
{'a': 'A new value', 'b': 'bosse'}
```

### Kontrollera om en nyckel finns

För att kolla om en **nyckel** `k` finns i ett **dictionary** `d` kan
konstruktionen `k in d` användas vilket är ett test som ger **True **om k finns i d och **False** om `k` inte finns i `d`.

```python
>>> d = {'a':'apa', 'b':'bosse'}   ## Skapa ett nytt dictionary.
>>> 'a' in d                       ## Kontrollera om nyckeln 'a' finns i d.
True
>>> 'b' in d
True
>>> 'c' in d
False
```

### Slingor över alla nycklar

Precis som för listor och strängar går det att göra en slinga, fast denna gång över nycklarna.

```python
>>> d = {'a':'apa', 127:[3,4,5], 1.33333:'A third', 'complex':{1:"a dictionary as value"}}
>>> for key in d:
...     print key
...
a
1.33333
complex
127
```

Notera att det till skillnad mot listor och strängar inte finns någon definierad
ordning på nycklarna i en dictionary. När `d` skapades i exemplet ovan angavs
nyckeln `127` före nycklarna `1.33333` och `complex`. Trots detta skrevs
nycklarna ut i en annan ordning.

## Aritmetiska operatorer

| Beräkning  | Operator |   Exempel  | Resultat |
|------------|----------|------------|-----------
| Addition   | `+`        | `1 + 1`      | `2`        |
| Subtraktion| `-` | `5 - 1` | `4` |
| Multiplikation | `*` | `3.5*2` | `7`|
| Division | `/` | `6 / 2` | `3` |
| Modulo (rest vid heltalsdivision) | `%` | `7 % 2` | `1` |
| Exponent | `**` | `2**3` | `8` |

Nedan följer några exempel på aritmetiska uttryck.

```python
>>> 1 + 1
2
>>> 128 - 1
127
>>> 3*11
33
>> 6/2
3
>>> 7 % 2
1
>>> 2**3
8
>>> 2**4
16
>>> 2**10
1024
>>> 1+2*(6/2)
7
```

## Operatorer för jämförelser

| Jämförelse  | Operator |   Exempel  | Resultat |
|------------|----------|------------|-----------
| Lika med   | `==` | `127 == 55` | `False` |
| Icke lika med | `!=` | `127 != 55` | `True` |
| Större än | `>` | `127 > 55` | `True` |
| Mindre än | `<` | `127 < 55` | `False` |
| Större eller lika med | `>=` | `127 >= 55` | `True` |
| Minre eller lika med | `<=` | `127 <= 55` | `False` |

Resultatet av en jämförelse, till exempel av två stycken tal är antingen sant eller falskt, dvs antingen `True` eller `False`.

### ​Lika eller inte lika med

För att kontrollera om två värden är lika med varandra används operator `==` och för att kontrollera om två värden är olika `!=`.

```python
>>> x = 22   # Tilldelning
>>> y = 11   # Tilldelning
>>> x == y   # Har x samma värde som y?
False
>>> x == x   # Har x samma värde som x?
True
>>> x != y   # Är värdet på x inte samma som värdet på y?
True
>>> x != x   # Är värdet på x inte samma som värdet på x?
False
```

### Större än och mindre än

Operatorerna `>`, `<`, `>=` och `>=` kan också användas för att jämföra värden.

```python
>>> x = 22   # Tilldelning
>>> y = 11   # Tilldelning
>>> 127 > 42 # Är 127 större än 42
True
>>> 42 < 127 # Är 42 mindre än 127
True
>>> 33 < 33  # Är 33 mindre än 33
False
>>> 33 <= 33 # Är 33 minre eller lika med 33
True
>>> 33 >= 33 # Är 33 större eller lika med 33
True
```

### ​Kombination av jämförelser

Det går att kombinera flera jämförelser.

```python
>>> x = 111
>>> 2 < x < 200
True
>>> x = 555
>>> 2 < x < 200
False
>>> x = 10
>>> y = 50
>>> z = 99
>>> x < y < z
True
>>> y = 777
>>> x < y < z
False
```

## Logiska operatorer

Logiska operatorer tar en eller två operander av typen `bool` och beräknar ett
resultat av typen `bool`.

I exemplen nedan antas att `a = 10` och `b = 100`.

| Operator |   Beskrivning | Exempel  | Resultat |
|------------|----------|------------|-----------
| `and`  | Logiskt och  | `a < 100 and b > 500` | `False` |
| `or`   | Logiskt eller | `a < 100 or b > 500` | `True`  |
| `not`  | Logiskt icke | `not a < 100` | `False` |


### ​Logiskt och (and)

På samma sätt som i digitaltekniken kan vi kontrollera om ett antal utryck alla
är `True` samtidigt med hjälp av operatorn `and`.

```python
>>> True and True
True
>>> True and False
False
>>> False and True
False
>>> False and False
False
```

Operanderna till operatorn `and` kan i sig själva vara uttryck som resulterar i
`True` eller `False`.

```python
>>> x = 22
>>> y = 11
>>> x > 10 and y < 100
True
>>> x > 10 and y < 10
False
>>> x > 10 and y < 100 and (x % 2 == 0)
True
>>> x = 23
>>> x > 10 and y < 100 and (x % 2 == 0)
False
```

Kom ihåg att `x % 2 == 0` är `True` om `x` är ett jämt tal och `False` om `x` är ett udda tal.

### Logiskt eller (or)

På samma sätt som i digitaltekniken kan vi kontrollera om ett eller flera av ett
antal utryck är `True` med hjälp av operatorn `or`.

```python
>>> True or True
True
>>> True or False
True
>>> False or True
True
>>> False or False
False
```

Operanderna till operatorn `or` kan i sig själva vara uttryck som resulterar i
`True` eller `False`.

```python
>>> x = 22
>>> y = 11
>>> x > 100 or y < 10
False
>>> x > 100 or y < 100
True
```

### ​7.6​ Logiskt icke (not)

På samma sätt som i digitaltekniken kan vi invertera ett sanningsvärde.

```python
>>> not True
False
>>> not False
True
```

Operanden till operatorn `not` kan i sig själv vara ett uttryck som resulterar i
`True` eller `False`.

```python
>>> x = 22
>>> x > 100
False
>>> not x > 100
True
```

### ​7.7​ Godtyckliga logiska uttryck

Det går att konstruera godtyckliga logiska uttryck genom att kombinera vanliga jämförelser med `and`,  `or` och `not`.

```python
>>> x = 22
>>> y = 11
>>> (2 < x < 100) and ( (y > 100) or (y % 2 == 1) )
True
>>> (2 < x < 100) and ( (y > 100) or not (y % 2 == 1) )
False
```

## Utskrift med print

I Pythontolken skrivs resultatet av ett uttryck automatiskt ut på nästa rad.

```python
>>> 124 + 3 # Aritmetsikt uttryck
127
```

I exemplet ovan beräknas värdet av det aritmetsika uttrycket `124 + 3`.
Resultatet `127` skrivs sedan automatiskt ut på nästa rad och slutligen skrivs
en ny Python-prompt `>>> ` ut.

Om vi vill vara explicita kan vi använda `print` för att tvinga fram en
utskrift.

```python
>>> print 124 + 3
127
```

Strängar anges inom `""` eller `''`. Om vi skriver in en sträng i Python-tolken
svarar Pyton med att skriva ut strängen på nästa rad inom `''`.

```python
>>> "Hej"
'Hej'
>>> 'hopp!'
'Hopp'
>>>
```

Med `print` kan vi skriva ut en sträng utan omslutande `''`

```python
>>> print "Hej hopp!"
Hej hopp
>>>
```

Med print kan du skriva ut värdet på variabler.

```python
>>> a = 127
>>> b = "Bosse"
>>> a
127
>>> b
'Bosse'
>>> print a
127
>>> print b
Bosse
```

Genom att efter `print` rada upp värden eller variabler skrivs dessa ut
separarede med ett mellanslag.
```python
>>> print a, b
127 Bosse
>>> print a, b, "!"
127 Bosse !
```

## if-elif-else

För att göra val används **kontrollstrukturen** `if-elif-else`. 

I följande exempel kommer `99` endast att skrivas ut om variablen `x == 99`,
annars kommer `not 99` att skrivas ut. 

```python 
if x == 99:
    print "99"
else:
    print "not 99"

```

Villkoret som testas kan vara ett godtyckligt uttryck som kan evalueras till ett
värde av datatypen **bool**, dvs evalueras till **True** eller **False**. 

I följande exempel nedan kommer `magic number` att skrivas ut om variablen `x ==
99` eller om `x > 999`, annars kommer `boring number` att skrivas ut. 

```python
if x == 99 or x > 999:
    print "magic number"
else:
    print "boring number"
```

Flera villkor kan testas genom att lägga till fall med hjälp av `elif`. De olika
fallen testas ett och ett uppifrån och ner. I de
fall flera villkor är sanna samtidigt kommer endast det som testas först att
utföras. 

```python
if x == 9:
    print "9"
elif x == 99:
    print "99"
elif x > 999:
    print "huge number"
else:
    print "boring number"
```


## while
Slingan (loopen) `while` används för att upprepa något så länge ett villkor är
uppfyllt. 

I exemplet nedan skrivs värdet på `n` ut och räknas sedan upp med `2` för varje
varv i slingan så länge `n < 10`.

```python
>>> n = 0
>>> while n < 10:
...     print n
...     n = n + 2
...
...
0
2
4
6
8
>>>
```
## for-in

Slingan (loopen) `for-in` används för att i tur och ordning stega igenom alla
element i en lista eller alla tecken i en sträng. 

I exemplet nedan skrivs alla element i listan `xs` ut på varsin rad. För varje
varv i slingan tilldelas variablen `x` värdet av ett element i lisan `xs`. 

```python
>>> xs = [1, 'two', 3, 'four']
>>> for x in xs:
...     print x
...
...
1
two
3
four
>>>
```

Notera att `x` och `xs` endast är godtycklga namn på variabler i exmplet ovan.
Det går utmärkt att använda andra variabelnamn tillsammans med slingan `for-in`.

```python
>>> kompisar = ["Eva", "Magnus", "Brasse"]
>>>
>>> for kompis in kompisar:
...     print kompis
...
...
Eva
Magnus
Brasse
>>>
```

Istället för att lagra listan som slingar löper över i en variabel kan den anges
direkt. 

```python
>>> for kompis in ["Eva", "Magnus", "Brasse"]:
...     print kompis
...
...
Eva
Magnus
Brasse
>>>
```

Slingan `for-in` kan även användas för att i tur och ordning stega igenom alla
tecken i en sträng. I exemplet nedan tilldelas variabeln `c` ett tecken i
strängen `s` för varje varv i slingan.   

```python
>>> s = "hej"
>>> for c in s:
...     print c
...
...
h
e
j
```

## ​Allmänt om funktioner

En funktion löser ett väl avgränsat problem och gör det möjligt att dela in ett problem i mindre delar som sedan kan sättas samman till en större helhet.

### ​Likheter mellan funktioner i Python och kapslar i Logisim

Funktioner i Python påminner mycket om kapslar i Logisim (digitalteknik). En kapsel i Logisim tar en eller flera inputs och kan generera ett eller flera outputs. På bilden nedan ser vi hur kretsen equal tar två inputs `a` och `b` och beräknar en output `a == b`.

![image alt text](/images/image_0.png)

På liknande sätt som kapslar i Logisim kan vi betrakta funktioner i Python. På bilden nedan ser vi en grafiskt representation av funktionen `double`. Funktionen tar en parametrar `n` och beräknar det dubbla värdet `2*n`.

![Grafisk representation av funktionen double](/images/double.png)

{{< note title="Returvärde"  >}}
Resultatet en funktion beräknar kallas **retvärde**, man säger att funktionen
**returnerar** ett resultat eller **returnerar** ett värde.

{{< /note >}}

{{< note title="Funktion som svart låda"  >}}
Vi kan betrakta en funktion som en svart låda. Vi kan stoppa in in-data
(parametrar) i lådan och ut kommer ut-data (resultat), ett returvärde. Den som
anropar funktionen behöver inte känna till hur lådan ser ut på insidan, dsv inte
känna till hur returvärdet beräknas.
{{< /note >}}

### Söndra och härska

Med hjälp av funktioner kan vi dela in ett problem i mindre delar där varje del
beräknas med hjälp av en funktion.


På bilden nedan ser vi funktionen `max2` med parametrar `a` och `b` och
returnerar det tal som är störst av dessa.

![Grafisk representation av funktionen max2](/images/max2.png)

Funktionen `max3` med parametrar `a`, `b` och `c` som returnerar det största
talen av `a`, `b` och `c` kan nu konstrueras med hjälp
av funktionen `max2`.

![Grafisk representation av funktionen max3](/images/max3.png)

Funktionen `max2` beräknar det största talet av `a` och `b`, detta tal skickas
sedan vidare som parameter till `max2` tillsammans med `c` för att på så sätt
beräkna det största talet av `a`, `b` och `c`.

### ​ Parameter

En funktion kan ta noll eller flera namngivna parametrar. Dessa parametrar kan sedan användas som variabler i funktionen.

###  Argument

Vid funktionsanrop måste antalet argument överenstämma med antal parametrar. Vid anropet binds parametrarna till argumentens värden.

###  Returvärde

Om syftet med en funktion är att räkna ut något eller producera något returneras detta i slutet av funktionen med hjälp av **return**. Om en funktion returnerar ett värde går det att fånga upp och tilldela till en variabel eller använda som argument direkt vid ytterligare funktionsanrop.

## Funktioner i Python

Vi skall åter kika på funktionen `double`.

![Grafisk representation av funktionen double](/images/double.png)

## Definition av funktion

För att definiera funktionen `double` i Python kan vi inte rita en bild utan vi
måste använda text. För att definera funktioner i Python används [nyckelordet](#reserverade-ord-keywords)
`def`, `kolon`, indrag med `tab` och [nyckelordet](#reserverade-ord-keywords)
`return`. Namnet på en funktion måste vara en en giltigt [identifierare](#identifierare). 

I Python-tolken kan vi definiera funktionen `double` så här:

```Python
>>> def double(x):
...     return 2*x
...
>>>
```


 
Vi skall nu i detalj studera hur det går till att definiera funktionen `double` i
Python.

![Definition av funktionen double](/images/def_double.png)

1. När vi definierar en funktion i Python måste vi börja med **nyckelordet** `def`.
2. Sedan anges namnet på funktionen, i detta fall `double`.
3. Inom parenteser namnger vi de parametrar som funktionen beror av separerade av kommatecken, i detta fall den ensamma parametern `n`.
4. Med `:` (kolon) anger vi sedan att kommande indragna raderna beskriver vad
funktionen gör.
5. När du trycker på retur-tangenten efter `:` (kolon) ...
6. ... svarar Python-tolken med tre punter `...` för att visa att definitionen
   av funktionen inte är klar.
7. Resterande rader måste vara indragna (tryck tab).
8. Använder **nyckelordet** `return` för att berätta vilket resultatet av
funktionen skall vara, i detta fall resultatet av uttrycket `2*n`.
9. När du trycker på retur-tangenten i slutet på raden ...
10. ... svarar Python-tolken med tre punter `...` för att visa att definitionen
   av funktionen inte är klar.
11. När du åter trycker på retur-tangenten visar Python-tolken att definitionen
    av funktionen är klar genom att ...
12. ... skriva ut en ny Python-prompt.


## Anrop av funktion

För att anropa en funktion skriver vi namnet på funktionen följt av argument
till funktionen inom parenteser `(` och `)`. Om funktionen tar mer än ett
argument separeras dessa med `,` (komma). Värdet av funktionsanropet blir det
värde som funktionen returnerar.

Antag att följande funktioner har definierats. 

```Python
>>> def double(n):
...     return 2*n
...
>>> def dsum(x, y):
...     return double(x+y)
...
>>>
```

Nu kan fuktionenera `double` och `dsum` anropas på följande sätt. 

```python
>>> double(7)
14
>>> double(7.5)
15.0
>>> dsum(2, 5)
14
>>>
```

## Mer om funktioner

För funktioner som har noll parametrar beror returnvärdet inte på någon
parameter utan måste vara en konstant.

```python
>>> def no_parameters():
...     return 127 ## En konstant
...
>>> no_parameters()
127
```

Istället för att explicit ange ett värde för en paramter kan ett uttryck
användas, till exempel en addition eller ett annat funktionsanrop.

```python
>>> doulbe(5+5)
20
double(double(3))
12
```

För funktioner som inte returnerar något
värde är syftet istället att orsaka någon sidoeffekt, till exempel skriva ut
något på skärmen men `print` eller ändra på något av argumentet.

```python
>>> def side_effect_a():
...     print "I'm printing!"
...
>>> side_effect_a()
I'm printing!
>>>
```

I exemplet ovan returnerar funktionen `side_effect_a` inte något värde, istället
skriver funktionen ut till skärmen.


```python
>>> def side_effect_b(l, e):
...     l.append(e)
...
>>> l = [1, 2, 3]         # Innan funktionsanrop.
>>> side_effect_b(l, 999)
>>> l                     # Efter funktionsanrop.
[1, 2, 3, 999]
```

I exemplet ovan utgörs det första argumentet till funktionen
`side_effect_b()` av en lista. Funktionen returnerar inte något men har trots
detta ändrat på listan.

## Moduler

I många fall är det praktiskt att snabbt och enkelt kunna experimentera direkt i
Python-tolken. I andra fall är det betydligt mer praktiskt att kunna redigera
och spara kod i en fil med hjälp av en [texteditor][editor].

Kod som sparats i en fil kallas för **modul**. Filnamnet på en modul måste sluta
med suffixet `.py`.

## Import av modul och dess funktioner

Antag att följande Python-kod sparats i en **modul** (fil) med namn `test.py`.

```python
def double(n):
    return 2*n
    
def dsum(x, y):
    return double(x+y)
```


I Linux-terminalen, navigera till den katalog där du sparat modulen `test.py`.
Starta sedan en Python-tolk. 

Nu kan modulen `test.py` importeras från Python-tolken. 

```python
>>> import test
```

### Anrop av funktion från importerad modul

För att anropa en funktion från en importerad modul anges först namnet på
modulen utan suffixet `.py`, sedan `.` (punkt), namnet på den funktion
du vill anropa och avslutningsvis funktionens argument separarerade med `,`
(komma) inom parenteser `(` och `)`. 

```python
>>> test.double(4)
8
>>> test.dsum(3, 4)
14
```
### Import av funktion från modul

För att slippa skriva ut namnet på modulen vid anrop av modulens funktioner kan
en specifik funktion importeras på följande sätt. 

```python
>>> from test import double
>>> double(33)
66
```

I exemplet ovan importeras endast funktionen `double` från modulen `test` och
kan därför anropas enbart med hjälp av sitt namn `double`. 

Om vi försöker anropa funkionen `dsum` på samma sätt får vi ett
felmeddelande. 

```python
>>> dsum(3, 4)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'dsum' is not defined
```

### Import av alla funktioner i en modul

För att direkt importera alla funktioner i en modul kan `*` ([jokertecken][jokertecken],
engelska wildcard) användas. 

```python
>>> from test import *
>>> double(dsum(3, 4))
28
```

[editor]:https://www.it.uu.se/education/course/homepage/introdat/ht16/editorer/
 
[jokertecken]:https://sv.wikipedia.org/wiki/Jokertecken
[cwd]:https://www.it.uu.se/education/course/homepage/introdat/ht16/terminalen/#aktuell-katalog

## Köra modul från terminalen

Antag att följande Python-kod sparats i en **modul** (fil) med namn `test.py`.

```python
def double(n):
    return 2*n
    
print double(33)
```

Koden i en modul kan exekveras (köras) direkt från Linux-terminalen. 

```shell
linux> python test.py
66
linux> 
```

Om samma modul importeras från Python-tolken kommer den avslutande utskriften
att utföras. 

```python
>>> import test
66
>>>
```

Variablen `__name__` sätts [automagiskt][automagisk] till `"__main__"` när en modul körs direkt
från Linux-terminalen. 

[automagisk]:https://sv.wikipedia.org/wiki/Automagisk

Normalt är det inte önskvärt att kod skall exekveras (köras) vid import. För att
komma tillrätta med detta kan vi ändra modulen `test.py` till:

```python
def double(n):
    return 2*n

if __name__ == "__main__":
    print double(33)
```

Om vi importerar modulen sker nu inte någon utskrift. 

```python
>>> import test
>>>
```

Men när vi kör modulen direkt från Linux-terminalen utförs utskriften. 

```shell
linux> python test.py
66
linux>
```



## Dokumentera funktioner

För att dokumentera vilka parametrar en funktion tar och vad funktionen gör
använder Python något som kallas för **docstring**. En docstring är en speciell
sorts kommentar som placeras överest i definitionen av en funtion.

En docstring omges av trippla `"` eller trippla `''`.

```python
>>> def double(n):
...     '''Returns the value 2*n.'''
...     return 2*n
...
>>>
```

I exemplet ovan utgör `'''Returns the value 2*n.'''` funktionen `double`s
docstring.

Om en funktion har en docstring kan `help` användas i Python-tolken för att läsa
den.

```python
>>> help(double)
```

Nu visas följande.

```python
Help on function double in module __main__:

double(n)
    Returns the value 2*n.
(END)
```

För att komma tillbaka till Python-prompten måste du trycka på q-tangenten
(quit).

```python
>>> help(double)

>>>
```

En funktions dokumentation (docstring) lagras även i form  av **attributet** `__doc__`. För
att komma åt attributet `__doc__` anges förs namnet på functionen, sedan `.`
(punkt) och sedan `__doc__`

```python
>>> double.__doc__
'Returns the value 2*n.'
```
Läs mer om hur du kan läsa dokumentation i följande avsnitt: 

- [Läsa dokumentation från Linux-terminalen](#läsa-dokumentation-från-linux-terminalen).
- [Läsa dokumentation i Python-tolken](#läsa-dokumentation-i-python-tolken)

## Returnera True eller False

I de fall en funktion skall returnera True eller False är det onödigt att använda if-then-else.

I exemplet nedan skall funktionen `return_bool(a, b)` returnera `True` om `2*a > b`.

```python
>>> def return_bool(a, b):
...     if 2*a > b:
...        return True
...     else:
...        return False
...
>>> return_bool(3, 5)
True
>>> return_bool(3, 7)
False
```
Detta går dock att skriva om utan if-then-else. För att förstå varför kikar vi endast på jämförelsen `2*a > b`.

```python
>>> a = 3
>>> b = 5
>>> 2*a
6
>>> 2*a > b
True
```

Som framgår ovan ger uttrycket `2*a > b`i sig självt värdet `True` eller `False`. Vi kan därför skriva om samma funktion på följande sätt.

```python
>>> def return_bool(a, b):
...     return 2*a > b
...
>>> return_bool(3, 5)
True
>>> return_bool(3, 7)
False
```

### Return och uttryck som inte har något värde

I Python har inte alla uttryck något värde.

```python
>>> 2*3            # Har värde och detta värde skrivs ut på nästa rad.
6
>>> x = 77         # Resultatet av denna tilldelning saknar värde och inget
                   # skrivs ut på nästa rad.
>>>
```

Vad händer om vi försöker returnera ett uttryck som saknar värde?

```python
>>> def error(l):
...     return x = 999
  File "<stdin>", line 2
    return x = 999
             ^
SyntaxError: invalid syntax
```

## Läsa dokumentation från Linux-terminalen 

Du behöver inte söka på internet för att hitta och läsa dokumentation om 
moduler. 

Från Linux-terminalen läser du dokumentation för en modul med hjälp av `pydoc`.
För att läsa dokumentation om modulen `math` skriver du `pydoc math`.

```shell
linux> pydoc math
```

### Navigera och söka i dokumentationen 

Nu startar Pythons inbyggda system för att läsa dokumentation. Kommandon för att
att navigera, söka och avsluta återfinns i tabellen nedan. 

| Åtgärd                       | Tangent-kombination(er) |
| ---------------------------- | ------------------- |
| Bläddra en sidan nedåt       | `mellanslag`, `page-down`, `f`, `ctrl-f`, `ctrl-v`  |
| Bläddra en sida uppåt        | `b`, `ctrl-b`, `esc-v` |
| Bläddra en halv sida nedåt   | `d`, `ctrl-d` |
| Bläddra en halv sida uppåt   | `u`, `ctrl-u` | 
| Bläddra till början          | `g` |
| Bläddra till slutet          | `G` | 
| Sök text (frammåt)           | `/` |
| Sök text (bakåt)             |  `?` |
| Nästa träff vid sökning      | `n` |
| Föregående träff vid sökning | `N` |
| Avsluta                      | `q` |

För att bläddra till slutet av hjälpavsnittet om modulen `math` trycker du `G`.
Du bör nu se följande längst ner i terminalen. 

```python
DATA
    e = 2.718281828459045
    pi = 3.141592653589793
```

Vi ser här att konstanterna `e` och `pi` finns definierade i modulen `math`. 

För att bläddra tillbaka till början trycker du `g`. 

För att söka efter `pow` trycker du först på `/`, skiver in `pow` och trycker
`enter`.

Överst i terminalen bör du nu se följande rad i hjälpavsnittet om modulen 
`math`, 

```python
        Return e raised to the power of x.
```

, där `pow` i ordet `power` är markerat. 

För att bläddra till nästa sök-träff, tryck `n`. Du bör nu se följande överst i
terminalen. 

```python
    pow(...)
        pow(x, y)

        Return x**y (x to the power of y).
```

Vi ser här att modulen `math` definierar funktionen `pow(x, y)` som returnerar
x<sup>y</sup>.

Fortssätt experimentera på egen hand för att lära dig hur du navigerar och söker
i dokumentationen. 

För att avsluta och komma tillbaka till prompten i Linux-terminalen, tryck `q`.

## Läsa dokumentation i Python-tolken

På liknande sätt som du
kan
[läsa dokumentation från Linux-terminalen](#läsa-dokumentation-från-linux-terminalen) kan
du läsa dokumentation direkt i Python-tolken.

För att läsa dokumentation om en modul måste den först vara importerad. 

```python`
>>> import math
```

För att läsa dokumentation i Python-tolken använder du kommandot `help`. 

```python
>>> help(math)
```
Nu startar Pythons inbyggda system för att läsa dokumentation. På samma sätt som
när du läser dokumentation från Linux-terminalen kan du
nu [navigera och söka i dokumentationen](#navigera-och-söka-i-dokumentationen). 

## Nyttiga moduler

För att använda en modul måste de först importeras. Det kan göras på fler olika sätt. Det vanligaste är via `import`:

```python
import math # Importera modulen math
```

För att kunna använda funktioner och annat som är definierade i modulen, behöver
du använda punkt-operatorn `.`:

```python
>>> import math # Importera modulen math
>>> math.log(2) # Anropa funktionen log i modulen math
0.6931471805599453
```

Det går också att importera definitioner/funktioner/etc från modulen direkt in det aktuella namnrymden. Detta gör att man inte behöver använda punkt-operatorn. Man kan således gör så här:

```python
>>> from math import log
>>> log(2)
0.6931471805599453
```

Man kan också importera alla funktioner genom att använda en stjärna `*`:

```
>>> from math import * # Importera alla funktioner från modulen math
>>> log(2)             # Anropa funktionen log från modulen math
0.6931471805599453
>>> pi                 # Få värdet på konstanten pi från modulen math
3.141592653589793
```

Däremot måste man vara uppmärksam på namnkonflikter som kan uppstå om samma namn används på båda ställen. Då kommer den ena helt enkelt att försvinna.

### math

Modulen math innehåller flera intressanta matematiska funktioner, så som logaritmer, exponenter, trigonometriska funktioner, mm. De flesta använder flyttal. För mer information, se [Python dokumentationen](http://docs.python.org/2/library/math.html).

### ​random

Denna modul innehåller flera funktioner för att generera slumptal, både heltal och flyttal. Dessutom kan man slumpmässig plocka ett element ur en lista.

```python
>>> import random
>>> random.randint(1,100)
73
>>> random.uniform(0,1)
0.10364429238974626
>>> random.choice(['Apple', 'Banana', 'Durian'])
'Apple'
```

För mer information, se [Python-dokumentationen](http://docs.python.org/2/library/random.html).

## Klasser och Objekt

En klass definierar hur ett objekt ska se ut och bete sig. Du kan tänka på klassen som en ritning och ett objekt som något som konstrueras utifrån denna ritning.

Varje objekt som skapas måste vara en instans av en klass. För att skapa ett objekt måste vi alltså först skapa en klass och sedan instansiera ett objekt utifrån den klassen. Det går att skapa flera objekt utifrån en och samma klass på samma sätt som vi kan bygga flera olika bilar utifrån en och samma ritning.

Ett kännetecken för objekt är att de binder samman data som lagras i objektet med ett antal operationer som får tillgång till detta data.

Läs mer om klasser och objekt - [Introduktion till objekt och grafik i Python](https://docs.google.com/document/d/13EpcHU3LNJQjdENdSxIPjij_eqHF1P60Dyr0pQ2XPiY/pub).

### ​Att använda klasser och objekt

Mycket av det ni redan använt i Python är egentligen objekter eller likt objekter. Ett exempel är en lista som i mångt och mycket beter sig som ett objekt (även om det inte är ett riktigt objekt utan en inbyggd datatyp). Vi kan skapa en lista genom en konstruktor och sedan anropa metoder på det:

```python
>>> ns = list()    ## skapar en tom list, samma som l=[]
>>> ns.append(123) ## Utför något på listan l
```

Listobjektet som ligger i variabeln l har ett antal metoder man kan använda, så som `append`, `pop`, `sort`, mm. För att anropa en av dessa på ett objekt, måste man använda punktoperatorn `.` på objektet följt av metoden, så här:

```python`
>>> ns.sort()
```

Observera att ibland använder man en vanlig funktion tillsammans med objekt som argument. Ett exempel är funktion `len` som är en inbyggd funktion och alltså inte en metod till ett objekt.

```python`
>>> len(ns)
```

Läs i manualerna om det är en fristående funktion eller en metod till ett objekt.

## ​Skapa egna klasser (överkurs)

Låt oss skapa en enkel klass som kommer ihåg namn och ålder på en person.

```python
>>> class Person():
...     def __init__(self, name, age):
...             self.name = name
...             self.age = age
...     def get_info(self):
...             print("This Person is " + self.name +
...			 " and is " + str(self.age) + " years old")
...
>>>
```

### Instansiera objekt

Vi kan nu skapa ett objekt av typen `Person` så här:

```python
>>> kalle = Person("Kalle Karlsson", 23)
>>> kalle.get_info()
This Person is Kalle Karlsson and is 23 years old
>>>
```

Vi kan också skapa ännu fler objekt av samma klass. Varje gång vi skapar ett
nytt objekt körs metoden `__init__(self, name, age)` på det nya objektet. Den lägger till två objektvariabler `self.name` och `self.age`. Dessa kommer att lagras i objektet så länge det finns kvar och vi kan komma åt deras värde från alla metoder till objektet (t.ex. `get_info()``). Objektvariabler kallas ibland också medlemmar (members) eller **attribut**.

### ​Objektvariabler och metoder

Objekt kan innehålla flera objektvariabler som är specifika till just det objektet. Dvs. det är bara objektet `kalle` som har name satt till "Kalle Karlsson".

Objektvariabler brukar man initisera till ett värde i metoden `__init__()`, som också brukar kallas konstruktorn eftersom den allt anropas på det nya tomma objektet precis efter det blivit skapat. Därefter kan man använda dess objektvariabler i de andra metoderna.

Det går också att skapa hur många metoder som helst. Man lägger helt enkel till fler def statements i klass-definitionen.

```python
class Person:

    def canVote(self):
		return self.age >= 18

	def birthday(self):
		self.age = self.age + 1
```

### Wrap around counter

Kommer du ihåg wrap-around counter från uppgiften klocka med alarm (Logisim)? I detta exempel skall vi se hur vi kan åstadkomma något liknande i Python med hjälp av en klass.

```python`
class Counter:

    '''
    A small class implementing a counter. The counter will
    generate the following sequence counting 0, 1, 2, ...,
    limit, 0, 1, 2, ... etc.
    '''

    def __init__(self, limit):

        '''
        Initialize the counter and set upper limit.

        Arguments:

        limit : Integer

            The upper limit in the sequence.
        '''

        self.limit = limit

        ## The first time next() is called, the counter wraps
        ## around and start from 0.

        self.value = limit


    def next(self):
        '''
        Returns: Integer
            Returns the next value in the sequence.
        '''

        ## Use modulo (%) to wrap around from zero when

        ## limit is reached.

        self.value = (self.value + 1) % (self.limit + 1)

        return self.value
```

För att skapa ett objekt av klassen `Counter` anropar vi konstruktorn `Counter()` som i sin tur kör koden i metoden `__init__()`.  I konstruktorn sparar vi värdet på `limit` i objektvariabeln `self.limit`. Vi behöver även ett startvärde på räknaren vilket vi lagarar i objektvariabeln `self.value`. Notera även att startvärdet på `self.value` sätts till `limit`.

I metoden `next()` räknar vi ut, sparar och returnerar nästa värde i sekvensen.
Första gången `next()` anropas sätts `self.value` till `(limit + 1) % (limit +
1)` vilket är `0`, dvs det första värdet i sekvensen, därav att vi sätter vardet
på `self.value` till `limit` i konstruktorn. Nästa gång `next()` anropas får vi
`(0+1) % (limit + 1)` vilket för `limit  > 0` blir `1`. Om `next()` anropas igen
får vi `(1+1) % (limit + 1)` vilket för `limit  > 1` blir `2`. För varje gång `next()` anropas kommer räknaren att öka med ett och när vi når `limit + 1` börjar sekvensen om från `0`.

Vi kan nu testa att skapa två objekt från klassen `Counter`, ett med `limit 6` och ett med `limit 10`.

```python
def main():

    ## Create two counters.

    c6  = Counter(6)
    c10 = Counter(10)

    # Create two lists
    l6 = []
    l10 = []

    ## Take the counters for a spin.

    for _ in range(17):
        ## Use variable _ in for loop to signal we don't care about the value.

        l6.append(c6.next())
        l10.append(c10.next())

    print "l6  = %s" % l6
    print "l10 = %s" % l10

if __name__ == "__main__":
    main()
```

När `main()` körs kommer följande listor att skrivas ut:

```python
l6  = [0, 1, 2, 3, 4, 5, 6, 0, 1, 2, 3, 4, 5, 6, 0, 1, 2]
l10 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 1, 2, 3, 4, 5]
```
