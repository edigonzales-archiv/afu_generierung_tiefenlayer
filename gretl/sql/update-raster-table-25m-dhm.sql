UPDATE
  ${schema_name_raster}.raster25m_dhm
  SET rast = ST_SetValues(
    rast,
    1,
    (
      SELECT
        ARRAY(
          SELECT 
            (geometrie,ST_Z(geometrie))::geomval
          FROM
            ${schema_name}.punktraster25m_dhm
        )
    )
  )
;