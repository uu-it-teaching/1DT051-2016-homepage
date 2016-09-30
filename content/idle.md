---
title: Python Idle
---


Ett enkelt sätt att komma igång med Python är att
använda [Python Idle](https://en.wikipedia.org/wiki/IDLE). Python Idle följer
med när du installerar Python och är
en [utvecklingsmiljö](https://en.wikipedia.org/wiki/IDLE) för Python. I Python
Idle ingår en Python-tolk och en [text-editor][editor].

[editor]:https://www.it.uu.se/education/course/homepage/introdat/ht16/editorer/
Både Python-tolken och text-editorn använder sig av:

- syntaxmarkering
([syntax highlighting](https://en.wikipedia.org/wiki/Syntax_highlighting)) som
markerar olika delar av koden med olika färger  

- automatisk kod-komplettering
  ([intelligent code completion](https://en.wikipedia.org/wiki/Intelligent_code_completion))
  
- automatiskt indrag (TAB) efter kolon och ny rad.

Med hjälp av Python Idle kan du enkelt komma igång med att redigera befintliga
[moduler](#moduler) och skapa egna moduler. 

## Starta Idle från meny

På Linux-systemet startar du Python IDLE från menyn **Applications** ➤
**Programming** ➤ **IDLE (using Python-2.7)**.

![image alt text](/images/applications_programming_IDLE_2.7.png)

När du startat Idle öppnas en Python-tolk i ett fönster. 

![Python IDLE shell](/images/IDLE_Python_shell.png)

Om du inte ser någon Python-prompt, tryck på **Enter** så dyker den upp. Vi kan
nu testa att skriva några enkla uttryck i Python-tolken. 

![Enkal uttryck i Python Idle shell](/images/Python_Idle_shell_first_try.png)

Notera att olika delar av koden markeras med olika färger. Till exempel markeras
strängar med grön färg och alla resultat med blå färg.


## Skapa ny modul 

För att skapa en ny [modul](../python-i-korthet/#moduler) öppnar du text-editorn
från menyn  **File** ➤ **New File** eller trycker `Ctrl-N`. Nu öppnas ett nytt
fönster med en text-editor. 

![Python Idle text editor](/images/idle/new_file.png)

Vi kan nu skriva in Python-kod, till exempel definitionerna av funktionerna
`double`, `triple` och `hello`.

![double and triple](/images/idle/m1_new_unsaved.png)

På samma sätt som i Python-tolken markeras olika delar av koden med olika färg.
Till exempel markeras **kommentarer** med **rött**, **namn på funktioner vid
definition** med **blått**
, [nyckelorden](/python-i-korthet/#reserverade-ord-keywords) `if`, `def` och
`return` med **orange** och **strängar** med **grönt**.


## Testa modul i Python Idle

För att testa en modul som du öppnat i text-editorn trycker du på `F5` aternativt
**Run** ➤ **Run Module** från menyn. 

Nu får den en påminnelse om att du måste spara modulen. 

![Save before Run or Check](/images/idle/Save_Before_Run_or_Check.png)


Tryck på `OK` och spara modulen men filnamnet `m1.py`.

I Python-tolken skrivs nu `RESTART` ut. 
    
![Run module](/images/idle/m1_run_output.png)

Alla funktioner i modulen `m1.py` har nu 
automatiskt
[importerats](/python-i-korthet/#import-av-modul-och-dess-funktioner) och kan
därför anropas utan att du behöver importera dem själv. 

![Test functions in module](/images/idle/m1_shell_test.png)


## Test av modul i separat modul

Det är ofta praktiskt att spara test av en moduls funktioner i en egen modul.
Öppna en ny modul från menyn  **File** ➤ **New File** eller tryck `Ctrl-N`. I
denna modul importerar vi alla funktioner från modulen `m1.py` och skriver sedan
några test av funktionerna `double`, `triple` och `hello` som definierats i modulen
`m1.py`.

![Test of module m.py](/images/idle/m1_test_new_unsaved.png)

För att köra testen i den nya modulen trycker du på `F5` alternativt  **Run** ➤
**Run Module** från menyn. Spara modulen med filnamn `m1_test.py`. Koden i
modulen `m1_test.py` körs nu och resultatet visas i Python-tolken. 

![](/images/idle/m1_test_run_output.png)


## Starta Idle från terminalen 

Du kan även starta Idle från Linux-terminalen. 

```shell
linux> idle
```

I exempelt ovan startar Idle men du får inte tillbaka prompten i terminalen.
Detta beror på att Idle använder terminalen för att skriva ut felmeddelanden mm.

Om du starat Idle på detta sätt kan du avsluta Idle genom att trycka `Ctrl-C` i
terminalen. Om du trycker `Ctrl-C` i terminalen avslutats Idle och Idle skriver
ut något liknande följande i terminalen. 

```shell
^CTraceback (most recent call last):
  File "/usr/bin/idle", line 5, in <module>
    main()
  File "/usr/lib/python2.7/idlelib/PyShell.py", line 1608, in main
    root.mainloop()
  File "/usr/lib/python2.7/lib-tk/Tkinter.py", line 1073, in mainloop
    self.tk.mainloop(n)
  File "/usr/lib/python2.7/lib-tk/Tkinter.py", line 1484, in __call__
    def __call__(self, *args):
KeyboardInterrupt
linux>
```

Notera att du nu får tillbaka prompten i Terminalen. 

### Få tillbaka Linux-prompten

Om du vill starta Idle från
terminalen och direkt få tillbaka prompten kan du lägga till `&` efter `idle`. 

```shell
linux> idle &
linux> 
```


### Starta Idle och öppna moduler

Från terminalen kan du starta Idle och samtidigt öppna en eller flera moduler i editorn. 

Från Linux-terminalen, navigera till den katalog där dina moduler sparats. I
exemplet nedan har modulerna `m.py` och `m_test.py` sparats i aktuell katalog. 

```shell
linux> ls -1
m1.py
m1_test.py
linux> 
```

För att starta Idle och öppna modulerna `m1.py` och `m1_test.py` i editorn
lägger du till namnen på modulerna efter `idle` när du starar Idle från
terminalen. 

```shell
linux> idle m1.py m1_test.py &
```

Nu startar Python Idle och modulerna `m1.py` och `m1_test.py` öppnas i varsitt
editor-fönster.

<div class="side-by-side">
    <img src="/images/idle/m1_saved_small.png">
    <img src="/images/idle/m1_test_saved_small.png">
</div>

## Testa modul från Linux-terminalen

Du behöver inte använda Python Idle för att testa dina modulel utan kan göra
detta direkt från Linux-terminalen. 

Från Linux-terminalen, navigera till den katalog där dina moduler sparats. I
exemplet nedan har modulerna `m1.py` och `m1_test.py` sparats i aktuell katalog. 

```shell
linux> ls -1
m1.py
m1_test.py
linux> 
```

För att kika på innehållet i dessa filer kan kommandot `cat` användas. 

```shell
linux> cat m1.py
```

Nu skriv innehållet i filen `m1.py` ut i terminalen. 

```python
# A simple Python module

def double(n):
    return 2*n

def triple(n):
    '''triple(n) -> 3*n'''

    return 3*n

def hello(name):
    print "Hello " + name + "!"
```

Upprepa samma sak för filen `m1_test.py`.

```shell
linux> cat m_test.py
```

Nu skrivs innehållet i filen `m1_test.py` ut i terminalen. 

```python
# Import all functions from module m1.py
from m1 import *

print double(4)

print triple(double(3.5))

hello("Kitty")
```

Testen i modulen `m1_test.py` kan köras direkt från Linux-terminalen. 

```shell
python mi_test.py
```

Nu körs koden i modulen `m_test.py` och följande skrivs ut i terminalen. 

```shell
8
21.0
Hello Kitty!
```

## Syntaxmarkering (syntax highlighting)

Inom datavetenskapen menas med **syntax** de regler som bestämmer hur symbolerna
 i ett programmeringsspråk måste kombineras och struktureras för att vara ett
 giltigt program[^syntax]. Python Idle markerar olika delar av koden med olika
 färg. De olika färgerna
används för att skilja olika syntaktiska element åt. I Exemplet nedan markeras: 

[^syntax]:https://en.wikipedia.org/wiki/Syntax_(programming_languages)
    
- den inledande [kommentareren](/python-i-korthet/#kommentarer) `# A simple
Python module` med **rött**

- de [reserverade orden](/python-i-korthet/#reserverade-ord-keywords) (keywords)
`def`, `return` och `print` med **orange**

- namnen på funktionerna `double`, `triple` och `hello` med **blått** 
  vid [funktionsdefinition](/python-i-korthet/#definition-av-funktion).

- [docstringen](/python-i-korthet/#dokumentera-funktioner) `'''triple(n) -> 3*n'''` med **orange**

- [strängarna](/python-i-korthet/#strängar-och-tecken) `"Hello"` och `"!"` med **grönt**.



![double and triple](/images/idle/m1_saved.png)
 
## Automatisk hjälp vid anrop av funktioner

När du skriver kod och anropar en funktion visar Python Idle automatiskt namnen
på de parametrar funktionen tar och i förekommande fall första raden av funktionens
docstring. 

I exemplet nedan visar Python Idle att funktionen double tar en paramter med
namn `n`. 

![](/images/idle/calling_double_tip.png)

I exemplet nedan visar Python Idle att funktionen `triple` tar en paramter med
namn `n` och att den returnerar värdet `3*n`. I detta fall är det den första
raden av funktionen `triple`s docstring som visas. 

![](/images/idle/calling_triple_tip.png)


## Automatisk kod-komplettering (TAB)

Om du inte kommer ihåg exakt vad en funktion heter utan endast vilken eller
vilka bokstäver som funktionens namn börjar på kan Python Idle hjälpa dig. När
du skrivit en eller flera bokstäver kan du trycka på **TAB** och Python Idle
kommer då att visa en lista med giltiga fortsättningar på det du skrivit. 

I exemplet nedan har `d` skrivits in och sedan trycker användaren på **TAB**. Nu
visas en lista med giltiga fortsättningar `delattr` ... `double`. 

![](/images/idle/d_completion.png)

I listan som visas kan du bläddra upp och ner med piltangenterna för att välja
ett ord att sätta in i koden. Du kan även fortsätta att skriva fler bokstäver. I
exemplet nedan forsätter vi genom att skriva in bokstaven `o` och den enda
giltiga forsättning `double` markeras med **blått** i listan.  

![](/images/idle/do_completion.png)

För att välja den fortsättning som är blåmarkerad i listan, i detta fall
`double`, trycker du åter på **TAB**.

![](/images/idle/double_completion_complete.png)






