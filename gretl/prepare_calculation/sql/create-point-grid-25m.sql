INSERT INTO ${schema_name}.berechnungen_grid25m (geometrie) 
SELECT
   --ST_SetSRID(ST_Collect(ST_POINT(x,y)), 2056)
   point
FROM
  (
    SELECT
      ST_SetSRID((ST_POINT(x,y)), 2056) AS point
    FROM
      afu_generierung_tiefenlayer.grundlagen_abfrageperimeter AS p,
      generate_series(floor(floor(ST_XMin(geometrie))::numeric/25)*25::numeric, floor(ceiling(ST_XMax(geometrie))::numeric/25)*25::numeric, 25) as x,
      generate_series(floor(floor(ST_YMin(geometrie))::numeric/25)*25::numeric, floor(ceiling(ST_YMax(geometrie))::numeric/25)*25::numeric, 25) as y
    WHERE
      colorid = 0
      AND
      ST_Intersects(ST_SetSRID((ST_POINT(x,y)), 2056), p.geometrie)
  ) AS foo,
  afu_generierung_tiefenlayer.grundlagen_abfrageperimeter AS p
WHERE
  point && p.geometrie
  AND
  ST_Intersects(point, p.geometrie);