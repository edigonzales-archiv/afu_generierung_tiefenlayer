CREATE OR REPLACE FUNCTION ${schema_name}.makegrid(geometry, integer)
RETURNS geometry AS
'
SELECT 
  ST_Collect(ST_SetSRID(ST_MakePoint(x,y,0.0), 2056)) 
  FROM 
    generate_series(floor(floor(ST_XMin($1))::numeric/$2)*$2::numeric, floor(ceiling(ST_XMax($1))::numeric/$2)*$2::numeric, $2) as x,
    generate_series(floor(floor(ST_YMin($1))::numeric/$2)*$2::numeric, floor(ceiling(ST_YMax($1))::numeric/$2)*$2::numeric, $2) as y
  WHERE
    ST_Intersects($1,ST_SetSRID(ST_POINT(x,y), 2056))
'
LANGUAGE SQL