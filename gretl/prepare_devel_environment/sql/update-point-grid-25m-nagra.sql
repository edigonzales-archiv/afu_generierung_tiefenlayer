UPDATE 
  ${schema_name}.punktraster25m_nagra AS point
  SET geometrie = subquery.pz
FROM
(
  SELECT
    p_t_id,
    ST_SetSRID(ST_MakePoint(ST_X(p), ST_Y(p), ${schema_name}.interpolateZValue(p, p0, p1, p2)), 2056) AS pz
  FROM
  (
    SELECT
      ST_PointN(ST_Boundary(triangle.geometrie), 1) AS p0,
      ST_PointN(ST_Boundary(triangle.geometrie), 2) AS p1,
      ST_PointN(ST_Boundary(triangle.geometrie), 3) AS p2,
      point.geometrie AS p,
      point.t_id AS p_t_id
    FROM
      ${schema_name}.punktraster25m_nagra AS point
      JOIN ${schema_name}.datenebenen_nagra AS triangle
      ON ST_Within(point.geometrie, triangle.geometrie)
  ) AS foo
  WHERE
    p IS NOT NULL
) AS subquery
WHERE point.t_id = subquery.p_t_id;