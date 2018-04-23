UPDATE 
  ${schema_name}.grundlagen_punktraster25m AS grid
  SET geometrie = subquery.pz
FROM
(
  SELECT
    p_t_id,
    ST_SetSRID(ST_MakePoint(ST_X(p), ST_Y(p), ${schema_name}.interpolateZValue(p, p0, p1, p2)), 2056) AS pz
  FROM
  (
    SELECT
      ST_PointN(ST_Boundary(dhm.geometrie), 1) AS p0,
      ST_PointN(ST_Boundary(dhm.geometrie), 2) AS p1,
      ST_PointN(ST_Boundary(dhm.geometrie), 3) AS p2,
      grid.geometrie AS p,
      grid.t_id AS p_t_id
    FROM
      ${schema_name}.grundlagen_dhm AS dhm
      LEFT JOIN ${schema_name}.grundlagen_punktraster25m AS grid
      ON ST_Within(grid.geometrie, dhm.geometrie)
  ) AS foo
  WHERE
    p IS NOT NULL
) AS subquery
WHERE grid.t_id = subquery.p_t_id;