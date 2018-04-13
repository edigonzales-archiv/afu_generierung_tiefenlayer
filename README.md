# afu_generierung_tiefenlayer

```
 round( z( $geometry),1)
```

```
java -jar ~/apps/ilivalidator-1.8.1/ilivalidator-1.8.1.jar --modeldir "http://models.geo.admin.ch;../../ili/" afu-generierung-tiefenlayer.xtf
```


```
ogr2ogr -f "ESRI Shapefile" nagra_114.shp PG:"host=geodb-t.verw.rootso.org user=fubar dbname=sogis password=fubar" -sql "SELECT * FROM entscheidung.ebene_daten WHERE ebene_id = 114"
```



Error: line 2190969: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 8923e7fb-7631-4c92-84ab-edcd9b995d29: failed to validate polygon
Error: line 2190969: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 8923e7fb-7631-4c92-84ab-edcd9b995d29:   intersections

wkt_geom	t_id	t_ili_tid	beschreibung
PolygonZ ((2592625.33984375 1226825.44238280993886292 675.02288817999999537, 2592675.33984375 1226825.44238280993886292 675.02954102000001058, 2592700.33984375 1226825.44238280993886292 675.03436279000004561, 2592625.33984375 1226825.44238280993886292 675.02288817999999537))	4259291	8923e7fb-7631-4c92-84ab-edcd9b995d29	


Error: line 3265805: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 2a3e8578-b52b-4324-8ee5-e3aefc77d8d2: failed to validate polygon
Error: line 3265805: SO_AFU_Generierung_Tiefenlayer_20180318.Datenebenen.Lockergestein_Basis: tid 2a3e8578-b52b-4324-8ee5-e3aefc77d8d2:   intersections

wkt_geom	t_id	t_ili_tid	beschreibung
PolygonZ ((2610925.37695313012227416 1231500.33007812988944352 465.39648438000000397, 2610950.37695313012227416 1231500.33007812988944352 463.64080811000002313, 2610975.37695313012227416 1231500.33007812988944352 461.8910217299999772, 2610925.37695313012227416 1231500.33007812988944352 465.39648438000000397))	5334127	2a3e8578-b52b-4324-8ee5-e3aefc77d8d2	

Unique  (cost=21653.28..21833.28 rows=200 width=32)
  ->  Sort  (cost=21653.28..21743.28 rows=36000 width=32)
        Sort Key: (((st_dump(afu_generierung_tiefenlayer.makegrid(abfrageperimeter_abfrageperimeter.geometrie, 1000)))).geom)
        ->  Result  (cost=0.00..18568.85 rows=36000 width=32)
              ->  ProjectSet  (cost=0.00..208.85 rows=36000 width=32)
                    ->  Seq Scan on abfrageperimeter_abfrageperimeter  (cost=0.00..10.68 rows=36 width=29454)
                          Filter: (colorid = 0)


Result  (cost=0.00..18568.85 rows=36000 width=32)
  ->  ProjectSet  (cost=0.00..208.85 rows=36000 width=32)
        ->  Seq Scan on abfrageperimeter_abfrageperimeter  (cost=0.00..10.68 rows=36 width=29454)
              Filter: (colorid = 0)


              -- keine Duplikate (abfragegeometrie war doppelt)
/*
-- TODO: Delete duplicates (MUST BE FIXED IN CREATION QUERY!)
DELETE FROM ${schema_name}.punktraster25m_abfrageperimeter
WHERE t_id IN
(
  SELECT 
    t_id 
  FROM
  (
    SELECT t_id, ROW_NUMBER() OVER(PARTITION BY geometrie ORDER BY t_id asc) AS Row,
    geometrie FROM ONLY ${schema_name}.punktraster25m_abfrageperimeter
  ) dups 
  WHERE
    dups.Row > 1
);
*/