UPDATE
  ${schema_name_raster}.extern_gws
  SET rast = subquery.rast
FROM
(
  SELECT
    rast
  FROM
  (
    SELECT 
      --ST_Union(ST_AsRaster(the_geom, refrast.rast, '32BF', 1.0, -9999))
      ST_Union(ST_AsRaster(the_geom, reference_raster.rast, '1BB', 1, -9999)) as rast
    FROM 
      ${schema_name_staging}.externe_daten_gws, 
      (
        SELECT 
          rast
        FROM 
          ${schema_name_raster}.raster25m_dhm 
        LIMIT 1
      ) AS reference_raster
  ) as foo
  WHERE rast IS NOT NULL -- warum auch immer -> eventuell Garbage In, Garbage Out...
) as subquery
;
