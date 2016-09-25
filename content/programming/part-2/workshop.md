---
title: Del 2 - Workshop
---

Under en 2x45 minuters frivillig men starkt rekommenderad workshop 
går vi igenom:

- Tupler.
- Listor.
- Skapa listor med range().
- Strängar.
- Indexering av listor och strängar.
- Kopiera hela eller delar av en lista eller sträng med slice notation.
- Det speciella värdet None.
- Slingor (while, for-in).
- Import av moduler. Import av en, flera eller alla funktioner från en modul.

Om det finns tid börjar vi även kika på lösningar till några av de funktioner
som du skall skriva som en del av [del 2 - uppgifter](assignment).


## Python tutor

Under workshopen kommer vi kika på följande exempel i Python Tutor:

- Slingan [for-in][for-in]
- Slingan [for-in som specialfall av while][for-in-vs-while]
- Funktionen [max()][max]
- Funktionen [length()][length]
- Global och lokal [räckvid (scope)][scope]
- Funtktion med [sidoeffekt (side effect)][side-effect]
- Exempel på [högre ordningens funktioner][hof]
- Funktionen [is_palindrome() ][palindrome]

[for-in]: http://pythontutor.com/live.html#code=kompisar%20%3D%20%5B%22Eva%22,%20%22Magnus%22,%20%22Brasse%22%5D%0A%0Afor%20kompis%20in%20kompisar%3A%0A%20%20%20%20print%20kompis&cumulative=false&curInstr=8&heapPrimitives=false&mode=display&origin=opt-live.js&py=2&rawInputLstJSON=%5B%5D&textReferences=false

[max]:http://pythontutor.com/live.html#code=def%20max(ns%29%3A%20%20%20%0A%20%20%20%20%0A%20%20%20%20m%20%3D%20None%0A%20%20%20%20%0A%20%20%20%20for%20n%20in%20ns%3A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20if%20n%20%3E%20m%3A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%20%20m%20%3D%20n%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%0A%20%20%20%20return%20m%0A%20%20%20%20%0A%0Aprint%20max(%5B3,%201,%204,%207,%202,%200%5D%29&cumulative=false&curInstr=22&heapPrimitives=false&mode=display&origin=opt-live.js&py=2&rawInputLstJSON=%5B%5D&textReferences=false

[length]:http://www.pythontutor.com/live.html#code=def%20length(xs%29%3A%0A%20%20%20%20'''Returns%20the%20number%20of%20elements%20in%20the%20list%20xs'''%0A%20%20%20%20%0A%20%20%20%20n%20%3D%200%0A%20%20%20%20%0A%20%20%20%20%23%20TODO%3A%20Add%20code%20here%20to%20update%20n%20...%0A%0A%20%20%20%20return%20n%0A%20%20%20%20%0A%0A%23%20Print%20the%20docstring%20for%20function%20length%20%20%20%20%0Aprint%20length.__doc__%0A%0A%23%20Empty%20list%20test%0At0%20%3D%20length(%5B%5D%29%20%0A%0A%23%20One%20element%20list%20test%0At1%20%3D%20length(%5B'apa'%5D%29%20%0A%0A%23%20Nested%20list%20test%0Atn%20%3D%20length(%5B1,2,%20%5B31,%2032,%2033%5D,%204,%205%5D%29&cumulative=false&curInstr=0&heapPrimitives=false&mode=display&origin=opt-live.js&py=2&rawInputLstJSON=%5B%5D&textReferences=fals

[hof]:http://pythontutor.com/live.html#code=def%20double(n%29%3A%0A%20%20%20%20return%202*n%0A%20%20%20%20%0Adef%20tripple(n%29%3A%0A%20%20%20%20return%203*n%0A%20%20%20%20%0Adef%20mystery(f,%20g,%20x%29%3A%0A%20%20%20%20return%20f(x%29%20%2B%20g(x%29%0A%20%20%20%20%0Aprint%20mystery(double,%20double,%203%29%0A%0Aprint%20mystery(tripple,%20double,%203%29&cumulative=false&curInstr=23&heapPrimitives=false&mode=display&origin=opt-live.js&py=2&rawInputLstJSON=%5B%5D&textReferences=false

[palindrome]:http://pythontutor.com/live.html#code=def%20is_palindrome(s%29%3A%0A%20%20%20%20if%20len(s%29%20%3C%202%3A%0A%20%20%20%20%20%20%20%20return%20True%0A%20%20%20%20else%3A%0A%20%20%20%20%20%20%20%20first%20%20%3D%20s%5B0%5D%0A%20%20%20%20%20%20%20%20last%20%20%20%3D%20s%5B-1%5D%0A%20%20%20%20%20%20%20%20middle%20%3D%20s%5B1%3A-1%5D%0A%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20if%20first%20%3D%3D%20last%3A%0A%20%20%20%20%20%20%20%20%20%20%20%20return%20is_palindrome(middle%29%0A%20%20%20%20%20%20%20%20else%3A%0A%20%20%20%20%20%20%20%20%20%20%20%20return%20False%0A%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%20%20%0Aprint%20is_palindrome(%22%22%29%0A%0Aprint%20is_palindrome(%22a%22%29%0A%0Aprint%20is_palindrome(%22ap%22%29%0A%0Aprint%20is_palindrome(%22apa%22%29%0A%0Aprint%20is_palindrome(%22apa!%22%29%0A%0Astrings%20%3D%20%5B%22%22,%20%22a%22,%20%22ap%22,%20%22apa%22,%20%22apa!%22%5D%0A%0Afor%20s%20in%20strings%3A%0A%20%20%20%20print%20%22is_palindrome('%22%20%2B%20s%20%2B%20%22'%29%20%3D%3D%20%22,%20is_palindrome(s%29&cumulative=false&curInstr=90&heapPrimitives=false&mode=display&origin=opt-live.js&py=2&rawInputLstJSON=%5B%5D&textReferences=false

[scope]:http://www.pythontutor.com/live.html#code=x%20%3D%2055%0A%0Adef%20foo(y%29%3A%0A%20%20%20%20x%20%3D%202%20*%20y%0A%20%20%20%20return%20x%20-%201%0A%20%20%20%20%0Az%20%3D%20foo(4%29%0A%0Aprint%20z&cumulative=false&curInstr=8&heapPrimitives=false&mode=display&origin=opt-live.js&py=2&rawInputLstJSON=%5B%5D&textReferences=false

[side-effect]:http://www.pythontutor.com/live.html#code=a%20%3D%20%5B1,%209,%203%5D%0A%0Adef%20foo(xs%29%3A%0A%20%20%20%20xs.append(55%29%0A%20%20%20%20%0A%20%20%20%20return%201*xs%5B0%5D%20%2B%202*xs%5B1%5D%20%2B%203*xs%5B2%5D%0A%0Aprint%20a%20%20%20%20%20%20%20%23%20The%20list%20a%20before%20call%20to%20foo(%29.%0A%0Az%20%3D%20foo(a%29%20%20%20%20%23%20Calling%20foo(a%29%0A%0Aprint%20z%20%20%20%20%20%20%20%23%20The%20return%20value%20of%20foo(a%29%0A%0Aprint%20a%20%20%20%20%20%20%20%23%20The%20list%20a%20after%20the%20call%20to%20foo(a%29&cumulative=false&curInstr=10&heapPrimitives=false&mode=display&origin=opt-live.js&py=2&rawInputLstJSON=%5B%5D&textReferences=false

[for-in-vs-while]:http://pythontutor.com/live.html#code=kompisar%20%3D%20%5B%22Eva%22,%20%22Magnus%22,%20%22Brasse%22%5D%0A%0Aprint%20%22while%22%0Aprint%0A%0Ai%20%3D%200%20%23%20index.%0A%0Awhile%20i%20%3C%20len(kompisar%29%3A%0A%20%20%20%20print%20kompisar%5Bi%5D%0A%20%20%20%20i%20%3D%20i%20%2B%201%0A%0A%0Aprint%0Aprint%20%22for-in%22%0Aprint%0A%0Afor%20kompis%20in%20kompisar%3A%0A%20%20%20%20print%20kompis&cumulative=false&curInstr=24&heapPrimitives=false&mode=display&origin=opt-live.js&py=2&rawInputLstJSON=%5B%5D&textReferences=false


## Konfiguering av texeditor

Tidigare har vi skrivit enklare (kortare) snuttar Python direkt i Python-tolken. Vi har även skrivit funktioner och testat dessa med hjälp av Python Tutor. Det är nu dags att börja skriva, spara, ändra och testa Python-kod med hjälp av en [texteditor][editor].

Då Python använder indrag (indentation) som en del av [syntaxen][syntax] kan det bli problem om du blandar olika sätt att göra indrag.

{{< warning title="TAB == fyra blanksteg" >}}
 För Python-kod är den allmänt vedertagna standarden att använda fyra (4) stycken blanksteg (spaces) för varje nivå av indrag. Du behöver därför konfiguera din texteditor att sätta in fyra blanksteg när du trycker på TAB. 
{{< /warning >}}

[editor]:https://www.it.uu.se/education/course/homepage/introdat/ht16/editorer/

[syntax]:https://sv.wikipedia.org/wiki/Syntax#Syntax_i_datavetenskap


## Slides (pdf)

I huvudsak kommer följande att gås igenom under denna workshop.

- Slides från [del 2 - workshop][part-2-workshop].

I mån av tid och beroende på vilka frågeställningar som deltagarna är intresserade av kan även följande komma att tas upp.

### Python IDLE

Ett enkelt sätt att komma igång och slippa konfigurera en texteditor är att använda [Python Idle](https://en.wikipedia.org/wiki/IDLE). Python Idle är
  en [utvecklingsmiljö][ide] speciellt framtagen för att komma igång med Python.
  
- Slides med en [kort introduktion till Python Idle][part-2-workshop-idle].

### Utvärdering och exekvering av Python steg för steg. 

Det är viktigt att du bygger upp en förståelse för hur det går till när Python-kod körs. 

- Slides med exempel på [utvärdering av uttryck och exekvering av kontrollstrukturer steg för steg][part-2-workshop-step-by-step]. 


[ide]:https://sv.wikipedia.org/wiki/Integrerad_utvecklingsmilj%C3%B6

[idle-slides]:https://github.com/uu-it-teaching/1DT051-2016/raw/master/problem_solving/python/part_2/1DT051_2016_programming_part_2_workshop_Python_IDLE.pdf

[part-2-workshop]: https://github.com/uu-it-teaching/1DT051-2016/raw/master/pdf/1DT051_2016_programming_part_2_workshop.pdf

[part-2-workshop-idle]: https://github.com/uu-it-teaching/1DT051-2016/raw/master/pdf/1DT051_2016_programming_part_2_workshop_Python_IDLE.pdf

[part-2-workshop-step-by-step]: https://github.com/uu-it-teaching/1DT051-2016/raw/master/pdf/1DT051_2016_programming_part_2_workshop_evaluation_and_execution_step_by_step.pdf
