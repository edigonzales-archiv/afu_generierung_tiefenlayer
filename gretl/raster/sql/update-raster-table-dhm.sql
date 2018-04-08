UPDATE
  ${schema_name_raster}.dhm_25m
  SET rast = ST_SetValues(
    rast,
    1,
    (
      SELECT
        ARRAY(
          SELECT 
            (geometrie,ST_Z(geometrie))::geomval
          FROM
            ${schema_name}.grundlagen_grid25m
        )
    )
  )
;