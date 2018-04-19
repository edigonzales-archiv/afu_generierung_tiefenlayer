# afu_generierung_tiefenlayer

```
 round( z( $geometry),1)
```

```
java -jar ~/apps/ilivalidator-1.8.1/ilivalidator-1.8.1.jar --log fubar.log --modeldir "http://models.geo.admin.ch;../../ili/" afu-generierung-tiefenlayer.xtf
```


```
ogr2ogr -f "ESRI Shapefile" nagra_114.shp PG:"host=geodb-t.verw.rootso.org user=fubar dbname=sogis password=fubar" -sql "SELECT * FROM entscheidung.ebene_daten WHERE ebene_id = 114"
```

```
ALTER DATABASE mygisdb SET postgis.gdal_enabled_drivers TO 'GTiff PNG JPEG';
```

In Vagrant-Box ausführen:
```
gdal_translate -of GTiff PG:"host=localhost port=5432 dbname=sogis user=ddluser password=ddluser schema=afu_generierung_tiefenlayer_raster table=raster25m_nagra mode=2" test.tiff

```


* Abfrageperimeter scheint mir ein wenig verfrickelt zu sein.
* ein paar Geometriefehler
* bei gewissen ebenen (id=xxx) überlappen sich die Dreiecke?!


Error: line 2190969: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 8923e7fb-7631-4c92-84ab-edcd9b995d29: failed to validate polygon
Error: line 2190969: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 8923e7fb-7631-4c92-84ab-edcd9b995d29:   intersections

wkt_geom	t_id	t_ili_tid	beschreibung
PolygonZ ((2592625.33984375 1226825.44238280993886292 675.02288817999999537, 2592675.33984375 1226825.44238280993886292 675.02954102000001058, 2592700.33984375 1226825.44238280993886292 675.03436279000004561, 2592625.33984375 1226825.44238280993886292 675.02288817999999537))	4259291	8923e7fb-7631-4c92-84ab-edcd9b995d29	


Error: line 3265805: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 2a3e8578-b52b-4324-8ee5-e3aefc77d8d2: failed to validate polygon
Error: line 3265805: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 2a3e8578-b52b-4324-8ee5-e3aefc77d8d2:   intersections

wkt_geom	t_id	t_ili_tid	beschreibung
PolygonZ ((2610925.37695313012227416 1231500.33007812988944352 465.39648438000000397, 2610950.37695313012227416 1231500.33007812988944352 463.64080811000002313, 2610975.37695313012227416 1231500.33007812988944352 461.8910217299999772, 2610925.37695313012227416 1231500.33007812988944352 465.39648438000000397))	5334127	2a3e8578-b52b-4324-8ee5-e3aefc77d8d2	

Error: line 3791896: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 1250091: failed to validate polygon
Error: line 3791896: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 1250091:   intersections

<SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis TID="1250091"><Geometrie><SURFACE><BOUNDARY><POLYLINE><COORD><C1>2592625.33984375</C1><C2>1226825.44238281</C2><C3>675.02288818</C3></COORD><COORD><C1>2592675.33984375</C1><C2>1226825.44238281</C2><C3>675.02954102</C3></COORD><COORD><C1>2592700.33984375</C1><C2>1226825.44238281</C2><C3>675.03436279</C3></COORD><COORD><C1>2592625.33984375</C1><C2>1226825.44238281</C2><C3>675.02288818</C3></COORD></POLYLINE></BOUNDARY></SURFACE></Geometrie></SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis>



Error: line 4866732: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 2324927: failed to validate polygon
Error: line 4866732: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 2324927:   intersections

<SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis TID="2324927"><Geometrie><SURFACE><BOUNDARY><POLYLINE><COORD><C1>2610925.37695313</C1><C2>1231500.33007813</C2><C3>465.39648438</C3></COORD><COORD><C1>2610950.37695313</C1><C2>1231500.33007813</C2><C3>463.64080811</C3></COORD><COORD><C1>2610975.37695313</C1><C2>1231500.33007813</C2><C3>461.89102173</C3></COORD><COORD><C1>2610925.37695313</C1><C2>1231500.33007813</C2><C3>465.39648438</C3></COORD></POLYLINE></BOUNDARY></SURFACE></Geometrie></SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis>