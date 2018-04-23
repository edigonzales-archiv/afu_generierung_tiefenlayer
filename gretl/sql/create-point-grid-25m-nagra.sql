INSERT INTO ${schema_name}.punktraster25m_nagra (geometrie) 
SELECT
  point.geometrie
FROM
  ${schema_name}.punktraster25m_abfrageperimeter AS point
  JOIN ${schema_name}.datenebenen_nagra AS triangle
  ON ST_Intersects(point.geometrie, triangle.geometrie)
;