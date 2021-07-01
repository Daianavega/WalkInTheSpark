{{ config(
materialized='table'
) }}

SELECT Unique_Key as recordNumber, Date as WeatherDate, Date(Created_Date) as Create_Date, Date(Closed_Date) as Close_Date, *,
case 
when w.Month in (12,1,2) then 'Winter'
when w.Month in (3,4,5) then 'Spring'
when w.Month in (6,7,8) then 'Summer'
when w.Month in (9,10,11) then 'Fall'
else ''
end Seasons

 FROM `cis9440-final.311.311_Data` c 

LEFT JOIN `cis9440-final.Weather.Weather_Data` w

ON DATE(c.Created_Date) = w.Date 