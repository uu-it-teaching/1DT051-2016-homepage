---
title: Del 3 - Hämta hem filer med Git
---

Under programmering del 3 skall du utgå från befintlig kod för att
experimentera, lägga till kod eller ändra befintlig kod. Den kod
som skall användas hittar du i
repositoryt [1DT051-2016-programming-part-3][part-3-repo]
på [GitHub](https://github.com/).

[part-3-repo]:https://github.com/uu-it-teaching/1DT051-2016-programming-part-3

För att hämta de filer du behöver använder du [Git][git]. 

[git]:https://sv.wikipedia.org/wiki/Git

Öppna en terminal. 

```shell
linux> 
```

Klona repositoryt. 

```shell
linux> git clone https://github.com/uu-it-teaching/1DT051-2016-programming-part-3.git
```

Du bör nu se något liknadne detta i terminalen. 

```shell
Cloning into '1DT051-2016-programming-part-3'...
remote: Counting objects: 13, done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 13 (delta 3), reused 12 (delta 2), pack-reused 0
Unpacking objects: 100% (13/13), done.
Checking connectivity... done.
linux> 
```

I aktuell katalog har nu katalogen `1DT051-2016-programming-part-3` skapats.
Navigera till denna katalog.

```shell
linux> cd 1DT051-2016-programming-part-3
```
Lista innehållet i katalogen med kommandot `ls` och flaggan `-1` (minus 1). 

```shell
linux> ls -1
```

Du bör nu se följande i terminalen.

```shell
README.md
assignment.py
colors.py
demo.py
graphics.py
setup.py
```


