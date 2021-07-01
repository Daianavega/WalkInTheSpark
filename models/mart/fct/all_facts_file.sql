{{ config(
materialized='table'
) }}

SELECT Unique_Key as recordNumber, Date as WeatherDate, Date(Created_Date) as Create_Date, Date(Closed_Date) as Close_Date, *

 FROM `cis9440-final.311.311_Data` c 

LEFT JOIN `cis9440-final.Weather.Weather_Data` w

ON DATE(c.Created_Date) = w.Date 