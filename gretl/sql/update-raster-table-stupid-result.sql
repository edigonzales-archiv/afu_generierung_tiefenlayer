INSERT INTO ${schema_name}.stupid_result (rast)
SELECT 
  ST_MapAlgebra 
    (
      ARRAY
      [
        ROW(dhm.rast, 1), 
        ROW(lockergestein_basis.rast, 1),
        ROW(gws.rast, 1)
      ]::rastbandarg[],
      'afu_generierung_tiefenlayer_raster.stupid_callback(double precision[][][], integer[][], text[])'::regprocedure
    )
FROM 
  afu_generierung_tiefenlayer_raster.raster25m_dhm AS dhm,
  afu_generierung_tiefenlayer_raster.raster25m_lockergestein_basis AS lockergestein_basis,
  afu_generierung_tiefenlayer_raster.extern_gws AS gws
;  
