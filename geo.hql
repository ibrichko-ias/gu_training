CREATE EXTERNAL TABLE ibrichko.locations_en (
geoname_id INT,locale_code STRING,continent_code STRING,continent_name STRING,country_iso_code STRING,country_name STRING,subdivision_1_iso_code STRING,subdivision_1_name STRING,subdivision_2_iso_code STRING,subdivision_2_name STRING,city_name STRING,metro_code STRING,time_zone STRING,is_in_european_union STRING )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA INPATH '/user/ibrichko/GeoLite2-City-Locations-en.csv' OVERWRITE INTO TABLE ibrichko.locations_en




