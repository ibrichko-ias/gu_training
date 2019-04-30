CREATE TABLE ibrichko.geo_joined ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/user/ibrichko/'
 as
select b.network, l.country_name, l.country_iso_code
from ibrichko.ip_blocks b
  left outer join ibrichko.locations_en l
  on b.geoname_id = l.geoname_id;
