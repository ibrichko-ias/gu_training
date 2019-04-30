
#  set hive.exec.reducers.bytes.per.reducer=2048;
#  set hive.exec.reducers.max=3;
#  set mapreduce.job.reduces=3;
  
use ibrichko;
create table countries_top as
select product_name, product_category, country_name, sum(price) as tt from (select a.product_name, a.product_category, a.product_price as price, a.client_ip_adress, b.network, b.geoname_id as geoname_id from ip_blocks b, sales a)  sq join locations_en c on c.geoname_id = sq.geoname_id group by country_name, product_name, product_category, price  order by tt desc limit 100;

INSERT OVERWRITE DIRECTORY "/user/ibrichko" ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE select * from countries_top;

