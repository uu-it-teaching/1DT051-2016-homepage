---
title: Del 3 - Frivillig fördjupning
---

Om du vill kan du nu på egen hand fortsätta att på egen hand lära dig mer
om objekt och grafik i Python genom att lägga till ny funktionalitet till
programmet `assignment.py`

Har du inga egna förslag finns det några stycken du kan utgå ifrån nedan.

## Lär dig hantera slumpen

I modulen `random` som följer med Python finns funktioner för att generera
slumparade värden på olika sätt.

### Slumpa fram ett heltal

Funktionen `random.randint(a, b)` returnerar ett slumpmässgit tal mellan a och
b.

```python
>>> import random
>>> random.randint(0,5)
0
>>> random.randint(0,5)
3
>>> random.randint(0,5)
2
>>> random.randint(0,5)
4
```

Exempel på hur `random.randomint() `kan användas hittar du i `main()`,
`randomPoint()` och `randomCircle()`.

### Plocka ett slumpmässgit element ur en lista

Funktionen `random.choice(xs)` returnerar ett slumpmässgit element `x` ur listan
`xs`.

```python
>>> xs = ["apa", 77, "bosse", 23]
>>> random.choice(xs)
23
>>> random.choice(xs)
'bosse'
>>> random.choice(xs)
23
>>> random.choice(xs)
77
>>> random.choice(xs)
'apa'
```

Exempel på hur `random.choice()` kan användas hittar du i funktionerna
`randomGrayFill()` och `randomColorFill()`.
    
## Animerad bakgrund

Efter det att bakgrunden slumpats ut och innan den röda fyrkanten och den gula
cirkeln ritats ut, flytta var och en av de gråa cirklarna slumpvis +/- 5 enheter
i x- och y-led. Upprepa hela proceduren 3 gånger. Efter detta skall de grå
cirklarna stå stilla och den röda fyrkanten och den gula cirkeln ritas ut precis
som tidigare.

* Hantera animationen i en egen funktion.

* Fundera på vilka parametrar denna funktion behöver.

* Fundera på om du behöver ändra eller lägga till något till någon av de
  funktioner du skrivit klart tidigare i uppgiften.

* Anropa sedan funktionen från `main()`.

Om animationen går för fort kan du sakta ner den med hjälp av `time.sleep(n)`
som gör så att programmet "sover" i `n` sekunder. För att “sova” i mindre än en
sekund låt `n` vara ett positivt decimaltal, till exempel `time.sleep(0.05) `för
att “sova” i 5 hundradels sekunder. Glöm inte att importera modulen `time` om du
vill använda dig av `time.sleep()`.

## Studsande boll i fönstret

Innan den röda fyrkanten och den gula cirkeln ritas ut, rita ut en boll i form
av en blå cirkel med radie 30 på punkten (100, 100). Få bollen att röra sig i en
slumpad riktning. Upptäck när bollen slår i något av fönstrets kanter och låt
bollen studsa. Avbryt efter 10 studsar och fortsätt med att rita ut en röda
fyrkanten och den gula cirkeln precis som tidigare.

Innan du sätter igång, fundera över hur du:

* Kan ge bollen en slumpad rikting.

* Kan upptäcka att bollen "slår i" ett av fönstrets kanter.

* Hur du vill att bollen skall studsa vid träff mot något av fönstrets kanter
  och vad detta innebär i form av riktningsförändring.

Hantera animationen i en egen funktion.

* Anropa sedan funktionen från `main()`.

## Studsande boll i fyrkanten

Vid klick inom cirkeln inom fyrkanten, efter det att cirkeln bytt färg, låt
cirkeln få en slumparatad riktning och låt den studsa några gånger inom
fyrkanten. Fundera på hur du kan bryta ut lösnigen för den första studsande
bollen och göra den till en generell lösning i form av en funktion som kan
användas för båda fallen.

## Två studsande bollar i fönstret

Lägg till en boll till den första studsande bollen, den som studsar i hela
fönstret. Upptäck om de två bollarna krockar med varandra. Vad skall hända vid
en krock? Prova att ge bollarna olika storlek.

