---
title: Del 3 - Introduktion till grafik i Python
---


Det finns många olika sätt att skapa grafik med i Python. Vi skall kika närmare
på `graphics.py`[^graphics-py] som är skapat för att på ett enkelt sätt göra det
möjligt att hantera grundläggande grafik.

[^graphics-py]:http://mcsp.wartburg.edu/zelle/python/

## Hämta hem filer med Git

Inann du fortsätter måste du [hämta hem filer för del 3 med Git](../files) om du
inte redan gjort det.

## Starta Python

Innan du fortsätter behöver du starta en Python-tolk. Du kan göra detta genom
att använda [Python Idle](/idle) eller genom
att
[starta en Python-tolk från Linux-terminalen](/python-i-korthet/#starta-en-python-tolk).

## Importera graphics

Börja med att importera allt från modulen **graphics.py**.

```python
>>> from graphics import *
```

## Skapa fönster

Fönster där du kan rita grafiska objekt representas med objekt av klassen
`GraphWin`. Ett fönster skapas genom att anropa konstruktorn `GraphWin()` och
ange argument med titel för fönstret samt fönstrets bredd och höjd.

Skapa ett fönster.

```python
>>> w1 = GraphWin("My first window!", 200, 200)
```

Nu bör du se ett nytt fönster.

![image alt text](/images/objects-and-graphics/image_1.png)

Konstruktorn returnerar en referens till ett nytt objekt, en ny instans av
klassen `GraphWin`, som vi sparar i variabeln `w1`. Vanligen säger man att `w1`
nu är ett `GraphWin`-objekt. Objekt av typen `GraphWin` har metoder för att ta
reda på bredd och höjd på motsvarande fönster.

```python
>>> w1.getWidth()
200
>>> w1.getHeight()
200
```

Vi prövar att skapa ytterligare ett fönster.

```python
>>> w2 = GraphWin("My second  window!", 300, 100)
```

Nu bör du se ett två stycken fönster.

![image alt text](/images/objects-and-graphics/image_2.png)

Vi har nu två stycken fönster som representeras av varsitt objekt av klassen
`GraphWin`. Varje objekt håller reda på information om ett specifikt fönster.

```python
>>> w1.getWidth()
200
>>> w2.getWidth()
300
```

## Stänga fönster

För att stänga ett fönster kan vi anropa metoden `close()` på ett objekt av
klassen `GraphWin`.

```python
>>> w2.close()
```

Nu stängs det andra fönstret och endast det första fönstret finns kvar.

![image alt text](/images/objects-and-graphics/image_3.png)

## Vänta på musklick

För att upptäcka om användaren har klickat inom ett fönster med musen används
metoden `getMouse()`. Denna metod blockerar programmet tills dess att användaren
klickat inom fönstret. Eftersom det är en metod på objekt av klassen `GraphWin`
måste vi anropa metoden på ett fönsterobjekt som vi redan skapat, till exempel
så här.

```python
>>> w1.getMouse()
```

Pröva att klicka någonstans inom fönstret. När du klickar returnerar metoden
`getMouse()` följande.

```python
<graphics.Point instance at 0x10b687f38>
```

Det som returneras är ett nytt objekt av klassen `Point`.

## Punkter

En grundläggande klass av objekt vid hantering av grafik med `graphics.py` är
`Point`. Ett objekt av klassen `Point` anger en punkt i ett fönster med hjälp av
ett X-värde och ett Y-värde. För att plocka ut X-värdet från en punkt används
metoden `getX()` och för att plocka ut Y-värdet används metoden `getY()`.

Om du inte redan har gjort det, importera allt från modulen graphics.py.

```python >>> from graphics import * ```

Skapa ett nytt Point-objekt och plocka ut X- och Y-värdet.

```python 
>>> p = Point(10, 50) # Create a new Point object.
>>> p.getX()          # Extract the X-value. 
10
>>> p.getY()          # Extract the Y-value.
50 
```

## Tag reda på mer med help()

För att ta reda på mer om ett visst objekt, till exempel `p` kan vi använda
`help(p)`.

```python 
>>> help(p)
```

Istället för att anropa `help` med ett konkret objekt av klassen `Point` kan
`help` anropas med namnet på klassen för punkter. 


```python
>>> help(Point)
```

För att avsluta hjälpen och komma tillbaka till Python-tolken, tryck `q` eller
`Q`.

## Returvärde vid musklick

Vi är nu redo att undersöka det objekt som returneras vid musklick.

```python
>>> p = w1.getMouse()
```

Klicka någonstans inom fönstret. Vi har nu lagrat returnvärdet från `getMouse()`
i variablen `p`, detta returvärde är ett objekt av klassen `Point`. Ofta säger
man att `p` nu är ett `Point`-objekt. Eftersom `p` är en punkt kan vi använda
alla metoder som fungerar på objekt av klassen `Point`.

```python
>>> p.getX()
190
>>> p.getY()
12
```

I detta exempel ser vi att musklicket inträffade på punkten (190, 12) i fönstret
`w`.

## Sätta bakgrund på fönster

Fönstret vi ritar grafiska objekt i är själv ett objekt och det finns ett antal
metoder för att manipulera fönstret. Till exempel går det att ändra
bakgrundsfärgen genom att anropa metoden `setBackground()` på objektet.

```python
>>> w3 = GraphWin("Change my background", 300, 100)
```

![image alt text](/images/objects-and-graphics/image_4.png)

```python
>>> w3.setBackground("blue")
```

![image alt text](/images/objects-and-graphics/image_5.png)

```python
>>> w3.setBackground("yellow")
```

![image alt text](/images/objects-and-graphics/image_6.png)

## Mer om färg

Vi har hittils använt färgerna `"white"`, `"blue"` och `"yellow"`. Vill du
använda andra färger finns samtliga namngivna färger listade på följande sida.

* [Namnen på alla färger du kan använda dig av.](http://www.tcl.tk/man/tcl8.5/TkCmd/colors.htm)

### colors.py

Om du vill se hur ett stort antal färger ser ut på skärmen och vilka namn de har
kan du köra programmet `colors.py`.

```shell
linux> python colors.py &
```

Nu kommer ett fönster att skapas med olika färgade fält med namn på de olika
färgerna.

![image alt text](/images/objects-and-graphics/image_7.png)


### RGB

Ett alternativ till namngivna färger är att ange färg enligt systemet
systemet [RGB](http://sv.wikipedia.org/wiki/RGB). I detta system beskrivs en
färg som en blandning av **R**ött, **G**rönt och **B**lått. I **graphics.py**
anges en sådan blandning genom en sträng "#RRGGBB" där RR, GG och BB är
tvåsiffriga hexadecimala tal (00-FF) som avgör hur mycket rött, gult och blått
som ingår.

Några vanliga grundläggande färger enligt RGB i `graphics.py`.

<table>
  <tr>
    <th>Färg</td>
    <th>RGB-kod</td>
    <th>Exempel</th>
  </tr>
  <tr>
    <td>Vit</td>
    <td>#FFFFFF</td>
    <td style="background-color:#ffffff"></td>
  </tr>
  <tr>
    <td>Svart</td>
    <td>#000000</td>
    <td style="background-color:#000000"></td>
  </tr>
  <tr>
    <td>Röd</td>
    <td>#FF0000</td>
    <td style="background-color:#ff0000"></td>
  </tr>
  <tr>
    <td>Grön</td>
    <td>#00FF00</td>
    <td style="background-color:#00ff00"></td>
  </tr>
  <tr>
    <td>Blå</td>
    <td>#0000FF</td>
    <td style="background-color:#0000ff"></td>
  </tr>
</table>


Några andra färger.

<table>
  <tr>
    <th>Färg</td>
    <th>RGB-kod</td>
    <th>Exempel</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>#FFA500</td>
    <td style="background-color:#ffa500"></td>
  </tr>
  <tr>
    <td>Rosa</td>
    <td>#FFC0CB</td>
    <td style="background-color:#ffc0cb"></td>
  </tr>
  <tr>
    <td>Brun</td>
    <td>#8B2323</td>
    <td style="background-color:#8b2323"></td>
  </tr>
  <tr>
    <td>Guld</td>
    <td>#FFD700</td>
    <td style="background-color:#ffd700"></td>
  </tr>
</table>


För att ange färg med RGB måste RGB-koden anges inom citattecken.

```python
>>> w3.setBackground("#FFC0CB")
```

![image alt text](/images/objects-and-graphics/image_8.png)

## Koordinatsystem

Ett fönster har ett koordinatsystem med origo i det övre vänsra hörnet.

![image alt text](/images/objects-and-graphics/image_9.png)

## Rita och manipulera geometriska figurer

För att rita geometriska figurer i fönstret skapar vi nya objekt som
representerar de olika figurerna. Vi börjar med att skapa ett nytt fönster.

```python
>>> w4 = GraphWin("Shapes", 300, 100)
```

![image alt text](/images/objects-and-graphics/image_10.png)

## Cirkel

För att rita en cirkel skapar vi ett objekt från klassen `Circle` med hjälp av
dess konstruktor som tar två argument. Det första är centrumpunkten och den
måste vara ett objekt av klassen `Point`. Det andra är radien som ett tal. För
att rita cirkeln måste vi också tala om vilket fönster den ska ritas i, vilket
man gör med metoden `draw()` på cirkelobjektet.

```python
>>> cp = Point(100, 50)
>>> c = Circle(cp, 25)
>>> c.setFill("red")
>>> c.draw(w4)
```

![image alt text](/images/objects-and-graphics/image_11.png)

Genom att ha kvar cirkelobjektet i en variabel kan vi modifiera det genom att
anropa dess metoder. Vi kan till exempel ändra färgen, linjetjockleken och
flytta objektet:

```python
>>> c.setFill("blue")
>>> c.setWidth(10)
>>> c.move(100,0)
```

![image alt text](/images/objects-and-graphics/image_12.png)

## Rektangel

För att skapa en rektangel skapar vi ett objekt från klassen `Rectangle` med
 hjälp av dess konstruktor. Konstruktorn tar två punkter (objekt av klassen
`Point`) som parametrar där dessa punkter utgör två valfria hörn i rektangeln. 


```python
>>> r = Rectangle(Point(25, 25), Point(75, 75))
>>> r.setFill("red")
>>> r.setWidth(10)
>>> r.draw(w4)
```
![image alt text](/images/objects-and-graphics/r_and_c.png)

På samma sätt som för cirklar kan `move` an vändas för att flytta på en
rektangel.  

![image alt text](/images/objects-and-graphics/r_move_c.png)

## Linje

För att skapa en linje skapar vi ett objekt från klassen `Line` med hjälp av
klassens konstruktor. Konstruktorn tar två punkter som parametrar som utgör
linjens ändpunkter. 

Om vi vill rita en linje från centrum på den röda
kvadraten till centrum på den blå cirkeln kan vi använda metoden `getCenter()` på
start- och slutpunkt. 
dessa objekt för att få centrum-punkterna på respektive objekt som ett objekt av klassen
Point. 

```python
l = Line(r.getCenter(), c.getCenter())
l.setWidth(5)
l.draw(w4)
```

![image alt text](/images/objects-and-graphics/r_move_line_c.png)

## Pilar

Med metoden `setArrow()` går det att lägga till en pil i början (`"first"`), i
slutet (`"last"`) eller i båda ändar (`"both"`) av linjen.

```python
>>> l.setArrow("last")
```

![image alt text](/images/objects-and-graphics/r_move_line_arrow_c.png)

## Text-input

Med `Entry` klassen kan man göra en textruta för inläsning av text.

```python
>>> w5 = GraphWin("Input text", 300, 100)
>>> e = Entry(Point(150, 50), 20) # An input field, width 20 characters.
>>> e.draw(w5)
```

![image alt text](/images/objects-and-graphics/image_17.png)

Skriv in lite text.

![image alt text](/images/objects-and-graphics/image_18.png)

`Varning: `Tyvär fungerar detta mycket skakigt på Unix-systemet. Det kan hända
att du inte ser den text du skriver in.

Tyvärr finns det inget bra sätt att vänta på input från tangentbordet i
`graphics.py`. Det går inte att i programmet vänta på att användaren trycker
return, utan man får göra ett anrop till `w5.getMouse()` ``istället, och då
klicka när man vill att programmet skall fortsätta.

```python
>>> w5.getMouse()
<graphics.Point instance at 0x10ba98878>
```

Nu går det att få ut texten som matats in genom att anropa metoden `getText()`
på `Entry`-objektet..

```python
>>> e.getText()
'Python rocks!'
```

Ett alternativ till att använda objekt av klassen `Entry` för att hantera input
är att använda funktionen `raw_input()` från Pythons bas-biblioteket istället,
och göra eventuell text-input från terminalen.

## Läsa knapptryck

För att läsa enskillda knapptryck kan metoden `getKey()` anropas på ett
`GraphWin` object.

```python
>>> w5.getKey()
```

Klicka nu i fönstret så att fokus byts från Python-tolken till fönstret och
tryck sedan på pil-upp-tangentet:

```python
>>> 'Up'
```

Metoden `getKey()` väntar på att du trycker på en tangent och returnerar sedan
en sträng som beskriver vilken tangent du tryckt på.

{{< warning title="getText() och getkey()" >}}

Om du börjat skriva in text i en `Entry`-ruta och inte läst ut texten
med `getText()` fungerar inte `getKey()` förens du läst ut texten med
`getText()`.

{{< /warning >}}

## Samtliga klasser i graphics.py

Vi har nu kikat på klasserna `GraphWin`, `Point`, `Circle, Line, Entry` och
`Rectangle`. Här följer en lista på samtliga klasser som finns i `graphics.py`.

* GraphWin
* Point
* Line
* Circle
* Oval
* Rectangle
* Polygon
* Text
* Entry (for text-based input)
* Image

Många av metoderna finns till objekt av de flesta av dessa klasser. Till exempel
finns metoderna `setWidth()` och `move()` till objekt av samtliga
klasser förutom `GraphWin`.

Andra metoder finns enbart till specifika klasser, till exempel är det bara
klassen `Line` som har metoden `setArrow()`.

För att ta reda på mer om en viss klass kan du använda den inbygda hjälpen.

```python
>>> help(Polygon)
```

För att komma tillbaka till Python-prompten trycker du på `q` eller `Q`.

## Skapa fönster, rita cirkel och vänta på musklick

Ett litet exempel som skapar ett fönster och ritar en cirkel. Spara följande kod
i en fil men namn `nippon.py`. Denna fil måste finnas i samma katalog som
modulen `graphics.py`.

```python
from graphics import *

def main():

    window = GraphWin("Nippon", 150, 150)
    circ = Circle(Point(75, 75), 50)
    circ.setFill("red")
    circ.draw(window)

    window.getMouse() # Wait for mouse click, then exit.

main()
```

Funktionen `GraphWin()` är konstruktorn till en klass med samma namn. När den
körs skapas ett nytt objekt av klassen `GraphWin` vilket i sin tur skapar ett
fönster och visar det på skärmen. Konstruktrorn tar tre argument: en sträng som
används som titel på fönstret och sedan bredden och höjden på fönstret.

Vi skapar sedan ett objekt av typ `Circle` och sparar en referens till objektet
i variablen `circ`. Genom att anropa metoder från klassen `Circle` på objektet
`circ` kan vi manipulera cirkeln, till exempel sätta färgen till röd.

För att cirkeln skall ritas ut i fönstret anropar vi metoden `draw()` med en
referens till fönstret som argument.

Fönstret finns bara kvar så länge programmet körs. För att förhindra att
`main()` körs klar kan vi vänta på ett musklick i fönstret `window` med metoden
`getMouse()`. Denna metod gör så att programmet blockeras till dess att ett
musklick inträffar inom fönstret.

## Kör och testa programmet

Följ instruktionern nedan för att köra och testa programmet.

### Python IDLE

Om du använt Python Idle för att skriva kod och spara modulen `nippon.py`
trycker du på `F5` för att köra programmet.

### Linux-terminalen

Om du använt en texteditor, till exmpel Gedit eller Emacs, för att skriva kod
och spara modulen `nippon.py` kan du köra programmet direkt från
Unix-terminalen.

```shell
linux> python nippon.py
```

### Förväntat resultat

När programmet körs skapas ett fönster med storlek `150 x 150` med en röd cirkel
i mitten.

![image alt text](/images/objects-and-graphics/image_19.png)

Klicka någonstans i fönstret för att avsluta programmet.

## Mer om referenser till objekt

Notera att om variabeln som lagrar referensen till ett objekt försvinner så
ligger objektet kvar i programmet. I exemplet nedan kommer cirkeln `c` att finns
kvar i fönstret efter anrop till funktionen `update()`, däremot kan du inte
längre göra anrop till dess metoder. Eftersom referensen `r` till rektangeln som
skapas i `update()` returneras kan vi fortsätta att manipulera rektangeln efter
anrop till `update()`.

```python
def update(window):
    c = Circle(Point(50,50), 10)
    c.draw(window)
    r = Rectangle(Point(40,40),Point(60,60))
    r.draw(window)
    return r

window = GraphWin("Uppgift7c", 300, 300)
r = update(window)

# Here you cannot modify the circle anymore since you have
# lost the reference to its object. 

# You can still change the rectangle.

r.setWidth(3)
```

## Exemplet demo.py

I modulen `demo.py` hittar du ytterligare ett exempel på ett färdigt program som
du kan kika på om du vill lära dig mer och grafik i Python med` graphics.py`.


### Läs dokumentationen

Börja med att läsa dokumentationen för modulen `demo.py` från Linux-terminalen. 

```shell
linux> pydoc demo
´´´

För att avsluta hjälpen och komma tillbaka till Python-tolken, tryck `q` eller
`Q`.

### Kör demot

Kör demot från Linux-terminalen. 

```shell
linux> python demo.py
```

![](/images/objects-and-graphics/demo_test_run_0.png)

Klicka några gånger i fönstret. För varje musklick skapas en ny liten kvadrat
med en slumpad färg.


![](/images/objects-and-graphics/demo_test_run_1.png)

Om du trycker på `c` centeras alla kvadrater i punkten för cirkelns centrum. 

![](/images/objects-and-graphics/demo_test_run_2.png)

### Läs koden

Om du är intresserad kan du läsa koden för modulen `demo.py` för att se hur
programmet fungerar. 


## Mer dokumentation om graphics.py

För mer dokumentation om `graphics.py` och dessa klasser,
se
[http://mcsp.wartburg.edu/zelle/python/graphics/graphics/index.html](http://mcsp.wartburg.edu/zelle/python/graphics/graphics/index.html)
