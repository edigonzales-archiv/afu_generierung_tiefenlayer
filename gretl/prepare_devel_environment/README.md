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

Dauer circa 4:30 Minuten. -> In QGIS Labeling zeigen, v.a. jeder Vertexpunkt eines Dreieckes wird gelabelt. Nun haben wir alles beisammen, um in das Raster-Business einzusteigen.

Anlegen des Schemas mit den Rastertabellen:

```
gradle -I init.gradle createRasterSchema
```

Zuerst werden die leeren Rastertabellen angelegt und anschliessend wird jedem Pixel der Wert eines Punktes (aus dem 25m-Punkterasters) zugeordnet (-> beide SQL zeigen):

```
gradle -I init.gradle createRasterTableDHM25m createRasterTableLockergesteinBasis25m createRasterTableNagra25m
```

```
gradle -I init.gradle updateRasterTableDHM25m updateRasterTableLockergesteinBasis25m updateRasterTableNagra25m
```

Dauer circa 40s. Anzeigen der Raster in QGIS (glaubs) nur via DB Manager. 

Neben den eigentliche 25D-Datenebenen gibt es noch weitere Geodaten, die auf die Bohrtiefe Einfluss haben. So darf man z.B. nicht ein einer Schutzzone bohren. Aus diesem Grund müssen die GWS gerastert werden. Zuerst anlegen der Tabelle (Müsste nochmals überlegen, wie die SQL-File genau gesplittet werden.):

```
gradle -I init.gradle createRasterExternGws
```

Das Umwandeln von Vektor nach Raster geschieht anschliessend:

```
gradle -I init.gradle updateRasterExternGws
```

Dauer circa 21s.

Erläuterungen zum SQL: Zuerst wird wie vorhin die leere Raster-Tabelle für die GWS angelegt. Datentyp ist binär, da mich nur interessiert, ob ein Schutzzone vorhanden ist oder nicht. Das Umwandeln geschieht mit den Befehlen: ST_Union(ST_AsRaster()). Das führt jedoch zu einer Rastertabelle, die nur noch den Extent der GWS hat (ist wohl einfach so). Für spätere Berechnungen ist es (für mich) einfacher, wenn alle Rastertabellen den gleichen Extent haben. Mit einem zweiten Update kriegt man das wieder hin. Magie ist die ST_MapAlgebra-Funktion, mit zwei Inputlayern. Einer für die Werte, der andere für die Auflösung und den Extent. 

So, jetzt haben wir alles in Rasterform. Was noch fehlt ist das Resultat. Das Resultat entsteht grundsätzlich indem man alles Inputlayer einer Funktion zum Frass vorwirft und die Funktion die gewünschten Berechnungen macht. Für solche Anwendungsfälle kann man wieder ST_MapAlgebra() verwenden. Es gibt die Funktion in verschiedenen Ausführungen ("expression", "callback"). Dokumentation ist bissle kompliziert und v.a. für "callback" nicht super umfangreich (Google hilft aber).

-> Funktion zeigen

Funktion anlegen:

```
gradle -I init.gradle createFunctionStupidCallback
```

Wir bereits bekannt, kann jetzt die Resultate-Tabelle angelegt und die Pixelwerte können berechnet werden (-> Update-Query zeigen):

```
gradle -I init.gradle createRasterTableStupidResult
```

```
gradle -I init.gradle updateRasterTableStupidResult
```

Dauer circa 11s. -> Zeigen in QGIS.

Die Raster-Tabelle ist in der DB gespeichert. Wenn man sie exportieren will, gibt es verschiedene Wege. Der übelste Weg führt über diese Large Objects ("lowrite", "locreate", "loexport", "lo_unlink"). Einfacher geht es mit GDAL. PostGIS-Raster kennt von sich aus nur "ST_AsTIFF", "ST_AsPNG" und "ST_AsJPEG". Die liefern aber nur das Bild ohne Georeferenzierung. Für das gibt es ST_GDALRaster(). Das steht nur zur Verfügung, wenn natürlich GDAL installiert ist. Und man muss die verschiedenen Treiber "freischalten" (habe ich noch nicht ganz verstanden):

```
ALTER DATABASE sogis SET postgis.gdal_enabled_drivers TO 'GTiff PNG JPEG';
```

Die freigeschalteten Treiber können wie folgt angezeigt werden:

```
SELECT 
    short_name, 
    long_name
FROM 
    ST_GDALDrivers()
ORDER BY 
    short_name
;
```

Z.B in dbeaver kann man sich das rudimentär anschauen:

```
SELECT 
  ST_AsGDALRaster((rast), 'JPEG', ARRAY['QUALITY=50']) AS rastjpg
FROM 
  afu_generierung_tiefenlayer_raster.stupid_result
;
```

Mit GDAL exportieren (in Vagrant-Box):

```
gdal_translate -of GTiff PG:"host=localhost port=5432 dbname=sogis user=ddluser password=ddluser schema=afu_generierung_tiefenlayer_raster table=stupid_result mode=2" stupid_result.tif
```

mode=1: ONE_RASTER_PER_ROW
mode=2: ONE_RASTER_PER_TABLE

Oder sexier mit GRETL:

```
TODO...
```