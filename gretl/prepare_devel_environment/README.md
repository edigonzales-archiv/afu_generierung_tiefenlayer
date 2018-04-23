Staging als Ausgangslage (entspricht vorhandenen Daten in sogis-DB). QGIS-Projekt mit Staging-Tabellen zeigen. Verschiedene 25D-Ebenen, die Einfluss auf die Bohrtiefe haben. Modelliert als Dreiecke.

Schema erstellen mit Tabellen für verschiedenen Berechnungen. Leider ohne Raster (INTERLIS?):

```
gradle -I init.gradle createModelSchemaAndTables
```

Anschliessend Daten aus den Staging-Tabellen in die Modell-Tabellen kopieren:

```
gradle -I init.gradle copyDataFromStagingIntoModel
```

Dauer circa 3+ Minuten. Ein paar Millionen Records.

Idee: 25m-Vektorpunktraster für jede 25D-Ebene. Jedem Punkt die die Höhe auf der Dreiecksebene zugewiesen (-> siehe Folie). Anschliessend werden diese Punkte gerastert und bisschen Raster-Algebra betrieben.

Als erstes müssen wir im Abfrageperimeter das 25m-Vektorpunktraster erstellen. -> SQL-zeigen. generate_series() is your friend():

```
gradle -I init.gradle createFunctionMakeGrid
```

```
gradle -I init.gradle createQueryPerimeterPointGrid25m
```

Dauer circa 3 Minuten. Circa 1 Mio Punkte.

Für sämtliche Ebenen werden das Punktraster und die Höhenzuweisung mittels selbst geschriebener (-> zeigen) Funktion gemacht (noch nicht gross performance-optimiert):

```
gradle -I init.gradle createFunctionInterpolateZvalue
```

```
gradle -I init.gradle createDhmPointGrid25m createLockergesteinBasisPointGrid25m createNagraPointGrid25m updateDhmPointGrid25m updateLockergesteinBasisPointGrid25m updateNagraPointGrid25m
```

Dauer circa 4:30 Minuten. -> In QGIS Labeling zeigen, v.a. jeder Vertexpunkt eines Dreieckes wird gelabelt.

