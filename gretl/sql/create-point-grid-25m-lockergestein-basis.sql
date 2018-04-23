INSERT INTO ${schema_name}.punktraster25m_lockergestein_basis (geometrie) 
SELECT
  point.geometrie
FROM
  ${schema_name}.punktraster25m_abfrageperimeter AS point
  JOIN ${schema_name}.datenebenen_lockergestein_basis AS triangle
  ON ST_Intersects(point.geometrie, triangle.geometrie)
;