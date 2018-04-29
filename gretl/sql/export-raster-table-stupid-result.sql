SELECT 
  ST_AsGDALRaster(rast, 'GTiff', ARRAY['COMPRESS=DEFLATE'], 2056) AS raster
FROM
  ${schema_name}.stupid_result
;