---
title: Frivillig fördjupning
---

{{< note title="Ej obligatorisk fördjupning">}} 

Denna del är inte obligatorisk.
Denna del är dock en utmärkt förberedelse till centrala begrepp på kursen
[Programkonstruktion och datastrukturer](http://www.uu.se/utbildning/utbildningar/selma/kursplan/?kKod=1DL201&lasar=) (1DL201) som läses av IT1 och KandDv1
under period 2 hösten 2016.

{{< /note >}}

Om du får tid kan du fortsätta och lära dig mer om rekursiva funktioner och
högre ordningens funktioner. 

Ett alternativ till slingor (iteration) är att anvädna **rekursiva funktioner**. En
rekursiv funktion använder sig av ett eller flera basfall samt ett (eller fler)
rekursiva anrop till sig själv. Du kommer få öva på att lösa problem både med
slingor och med hjälp av rekursion.

Ett kraftfullt verktyg vid problemlösning är att separera det generella från det
specifika. Ett sätt att åstadkomma detta är att låta en funktion ta en annan
funktion som parameter. På detta sätt går det att fokusera på det generella
beteendet och lämna det specifika beteendet till funktionen som tas som argument
och som på så sätt enkelt kan varieras. Funktioner som tar en eller fler
funktioner som argument kallas för **högre ordningens funktioner**. Du kommer få
definera ett antal högre ordningens funktioner, bland annat **filter** och **map**.

## optional.py

I denna modul finns skeletten till ett antal funktioner definerade. Du behöver
lägga till kod för att funktionerna skall fungera enligt sina beskrivningar.

För att få en överblick över vilka funktioner som finns definerade i denna modul
använder du `pydoc` från Linux-terminalen.

```shell
linux> pydoc optional
```

För att komma tillbaka till Linux-prompten i terminalen, tryck **q**.

Färdigställ funktionerna i modulen `optional.py`. 

## optional_test.py

Lägg till lämpliga test av funktionerna i modulen `optional.py` i modulen `optional_test.py`.

Kör testerna direkt från Linux-prompten.

```shell
linux> python optional_test.py
```
