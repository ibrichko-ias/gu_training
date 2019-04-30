CREATE EXTERNAL TABLE ibrichko.ip_blocks (
network STRING,geoname_id STRING,registered_country_geoname_id STRING,represented_country_geoname_id STRING,is_anonymous_proxy STRING,is_satellite_provider STRING,postal_code STRING,latitude STRING,longitude STRING,accuracy_radius STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA INPATH '/user/ibrichko/GeoLite2-City-Blocks-IPv4.csv' OVERWRITE INTO TABLE ibrichko.ip_blocks




