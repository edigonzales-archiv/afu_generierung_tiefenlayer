SELECT
  --ebene_id AS ebeneid,
  'DHM' as ebeneid,
  geom AS geometrie,
  beschreibu AS beschreibung
FROM
  afu_generierung_tiefenlayer_staging.ebene_daten_dhm;