CREATE SCHEMA IF NOT EXISTS ${schema_name};

CREATE TABLE ${schema_name}.ebene_daten_dhm (
	daten_id varchar(255),
	ebene_id varchar(1024),
	beschreibu varchar(255),
	the_geom geometry(PolygonZ, 2056)
)
WITH (
	OIDS=FALSE
);