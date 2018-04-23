INSERT INTO ${schema_name}.punktraster25m_abfrageperimeter (geometrie) 
SELECT 
  (ST_Dump(${schema_name}.makegrid(geometrie, 25))).geom
  --ST_AsEWKT(geometrie)
FROM 
  ${schema_name}.abfrageperimeter_abfrageperimeter
WHERE
  colorid = 0
;

