-- https://github.com/locationtech/jts/blob/master/modules/core/src/main/java/org/locationtech/jts/triangulate/quadedge/Vertex.java#L313
CREATE OR REPLACE FUNCTION ${schema_name}.interpolateZValue(p geometry, p0 geometry, p1 geometry, p2 geometry) RETURNS double precision AS
'
DECLARE
  x0 DOUBLE PRECISION;
  y0 DOUBLE PRECISION;
  a DOUBLE PRECISION;
  b DOUBLE PRECISION;
  c DOUBLE PRECISION;
  d DOUBLE PRECISION;
  det DOUBLE PRECISION;
  dx DOUBLE PRECISION;
  dy DOUBLE PRECISION;
  t DOUBLE PRECISION;
  u DOUBLE PRECISION;
  z DOUBLE PRECISION;
BEGIN
  IF ST_Z(p0) IS NULL OR ST_Z(p1) IS NULL OR ST_Z(p2) IS NULL
  THEN
    RETURN 0.0;
  ELSE    
    x0 = ST_X(p0);
    y0 = ST_Y(p0);
    a = ST_X(p1) - x0;
    b = ST_X(p2) - x0;
    c = ST_Y(p1) - y0;
    d = ST_Y(p2) - y0;
    det = a * d - b * c;
    dx = ST_X(p) - x0;
    dy = ST_Y(p) - y0;
    t = (d * dx - b * dy) / det;
    u = (-c * dx + a * dy) / det;
    z = ST_Z(p0) + t * (ST_Z(p1) - ST_Z(p0)) + u * (ST_Z(p2) - ST_Z(p0));
  	RETURN z;
  END IF;
END;
'
LANGUAGE plpgsql;