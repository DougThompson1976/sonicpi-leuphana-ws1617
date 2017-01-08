# Sonic Visualiser

Sonic Visualizer ist eine Software, mit der Klangdateien analysiert und annotiert werden können. Das Programm ist als Open Source verfügbar für Windows, OS/X und Linux.

## Download, Plugins und Hilfe

- [Homepage](http://sonicvisualiser.org/)
- [Download](http://sonicvisualiser.org/download.html)
- [Plugins](http://www.vamp-plugins.org/)
  - [Melodische und harmonische Analyse](http://www.isophonics.net/nnls-chroma)
  - [Effekte und Filter (nur Linux)](http://plugin.org.uk/download.php)
- Hilfe
  - [Dokumentation (Englisch)](http://sonicvisualiser.org/documentation.html)
  - [Videos zur Einführung](http://sonicvisualiser.org/videos.html)


## Playback, Werkzeuge und Ebenen

![Playback, Werkzeuge und Ebenen](img/sv-01.png)

1. Wiedergabesteuerung
2. Werkzeuge
  - Navigation/Verschieben der Time-Line
  - Auswahlwerkzeug
  - Verschieben (z. B. von Text)
  - Editieren (z. B. von Text)
  - Löschen (z. B. von Text)
3. Aktuell anzeigbare Ebenen
  1. Einstellungen für alle Ebenen
  2. Zeitunterteilung
  3. Wellenform
  4. Einteilung in Abschnitte

## Sequenzierung

![Sequenzierung 1](img/sv-02.png)

1. Eingefügte und automatisch numerierte Markierungen bzw. Takte (mit `Enter` oder `;`)
2. Jede Ebene (hier die Unterteilung in Takte) bietet eigene Einstellungen (hier: Farbe und Ansichtsmodus)
3. Die Taktmarkierungen können mit einem rhythmischen Klang hörbar gemacht werden; man kann sie ausblenden oder stummschalten sowie Lautstärke und Position im Stereo-Panorama regeln.

![Sequenzierung 2](img/sv-03.png)

1. Die Ebene mit den Takteinteilung im Modus `Segmentation` und in violett eingefärbt
2. Die Takte werden wechselseitig hell bzw. dunkler gekennzeichnet.

## Annotation

![Annotation 1](img/sv-04.png)

1. Hinzufügen einer Textebene
2. Die Textebene wird blau eingefärbt
3. Textlabels können mit dem Stift eingefügt, mit dem Kreuz verschoben und mit dem Radierer gelöscht werden.

![Annotation 2](img/sv-09.png)

- Wenn eine Ebene Text enthalten kann (z. B. 4. Takte und 5. Textlabels) und angewählt ist, 
- dann wird mit der Taste `e` ein Editor eingeblendet. Man kann damit die Markierungen ändern und durch Anklicken auch hin-und-her-springen.

## Auswahl und Looping

![Auswahl und Looping](img/sv-05.png)

1. Mit dem Auswahlwerkzeug kann man in einer Ebene mit Markierungen den Bereich zwischen zwei Markierungen durch Anklicken markieren (hier z. B. einen Takt).
2. Mit angewählter Taste `nur Auswahl wiedergeben` und `loopen` wird der Takt in der Wiedergabe automatisch geloopt.

## Wiedergabegeschwindigkeit

![Wiedergabegeschwindigkeit](img/sv-06.png)

1. Mit angewählter `Auswahl`- und `Loop`-Taste kann man nun 
2. die Laufgeschwindigkeit hoch- oder herunterregeln. Dabei bleibt die Tonhöhe erhalten.

## Peak Frequency

![Peak Frequency 1](img/sv-07.png)

1. Es gibt diverse Ansichten, die als neues Teilfenster (oder auch als Ebene) hinzugefügt werden können; sinnvoll ist z. B. das `Peak Frequency Spectrogramm`, 
2. mit dem man sich eine grafische Darstellung der lautesten Frequenzen (`Peak Bins`) zeigen lassen kann. 

![Peak Frequency 2](img/sv-08.png)

1. Fährt man mit der Maus über die Frequenzbalken, 
2. bekommt man die aktuelle Tonhöhe angezeigt. Diese Analyse ist je nach Komplexität das Klangsprektrums mehr oder weniger genau.

## Equalizer

![Equalizer](img/sv-10.png)

- Plugins wie z. B. Equalizer oder Filter helfen dabei einzelne Frequenzbereiche zur besseren Analyse auszublenden oder zu separieren.
