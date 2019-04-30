set hive.variable.substitute=true;
CREATE EXTERNAL TABLE ibrichko.sales
 (	
  		Product_Name    STRING,
 	 	Product_Price   STRING,
  		Product_Category   STRING,
	        Client_Ip_Adress STRING,
                Purchase_Date STRING
 )
 PARTITIONED BY (Date STRING)
 ROW FORMAT DELIMITED
   		FIELDS TERMINATED BY ','
 STORED AS TEXTFILE;


















