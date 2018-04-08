
UPDATE 
  ${schema_name}.grundlagen_grid25m AS grid
  SET geometrie = subquery.pz
FROM
(
  SELECT
    t_id,
    ST_SetSRID(ST_MakePoint(ST_X(p), ST_Y(p), z), 2056) AS pz
  FROM
  (
    SELECT
      ST_Z(p0) + t * (ST_Z(p1) - ST_Z(p0)) + u * (ST_Z(p2) - ST_Z(p0)) AS z,
      ST_Z(p0),
      ST_Z(p1),
      ST_Z(p2),
      p,
      t_id
    FROM
    (
      SELECT
        (d * dx - b * dy) / det AS t,
        (-c * dx + a * dy) / det AS u,
        p,
        p0,
        p1,
        p2,
        t_id
      FROM
      (
        SELECT
          a * d - b * c AS det,
          ST_X(p) - ST_X(p0) AS dx,
          ST_Y(p) - ST_Y(p0) AS dy,
          a,
          b,
          c,
          d,
          p,
          p0,
          p1,
          p2,
          t_id
        FROM
        (
          SELECT 
            (ST_X(p1) - ST_X(p0)) AS a,
            (ST_X(p2) - ST_X(p0)) AS b,
            (ST_Y(p1) - ST_Y(p0)) AS c,
            (ST_Y(p2) - ST_Y(p0)) AS d,
            p,
            p0,
            p1,
            p2,
            t_id
          FROM
          (
            SELECT
              ST_PointN(ST_Boundary(dhm.geometrie), 1) AS p0,
              ST_PointN(ST_Boundary(dhm.geometrie), 2) AS p1,
              ST_PointN(ST_Boundary(dhm.geometrie), 3) AS p2,
              grid.geometrie AS p,
              grid.t_id
            FROM
              ${schema_name}.grundlagen_grid25m AS grid
              LEFT JOIN ${schema_name}.grundlagen_dhm AS dhm
              ON ST_Within(grid.geometrie, dhm.geometrie)
          ) AS hathor
        ) AS horus
      ) AS chnum
    ) AS aton
  ) AS hapi
)
AS subquery
WHERE grid.t_id = subquery.t_id;
DELETE FROM 
  ${schema_name}.grundlagen_grid25m
WHERE
  geometrie IS NULL;