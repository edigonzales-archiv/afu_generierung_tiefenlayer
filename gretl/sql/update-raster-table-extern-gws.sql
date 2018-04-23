INSERT INTO ${schema_name_raster}.extern_gws(rast)
VALUES
(
  ST_AddBand(
    ST_MakeEmptyRaster(
      2087, 
      1903,  
      2592562.5, 
      1261312.5,  
      25,  
      -25, 
      0,  
      0, 
      2056  
    ),
    ARRAY [
      ROW (
        1,  
        '1BB'::text, 
        NULL,   
        -9999 
      )
    ]::addbandarg[]
  ) 
);
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
-- Raster wird noch auf die identische Grösse (wie alle anderen Raster) gebracht.
UPDATE
  ${schema_name_raster}.extern_gws
  SET rast = subquery.rast
FROM
(
SELECT 
   ST_MapAlgebra(gws.rast, ST_AddBand(ST_MakeEmptyRaster(dhm.rast), ARRAY[ROW(1,'1BB'::text,NULL,NULL)]::addbandarg[]), '[rast1.val]', '1BB'::text, 'SECOND'::text) AS rast
FROM 
  ${schema_name_raster}.extern_gws AS gws,
  ${schema_name_raster}.raster25m_dhm AS dhm
) as subquery
;