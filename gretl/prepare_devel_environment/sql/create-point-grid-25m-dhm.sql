INSERT INTO ${schema_name}.punktraster25m_dhm (geometrie) 
SELECT
  point.geometrie
FROM
  ${schema_name}.punktraster25m_abfrageperimeter AS point
  JOIN ${schema_name}.datenebenen_dhm AS triangle
  ON ST_Within(point.geometrie, triangle.geometrie)
;