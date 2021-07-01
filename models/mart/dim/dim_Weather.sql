{{ config(
materialized='table'
) }}


SELECT Date as WeatherDate, Avg_Temp, Precipitation__in_ as Precipitation
FROM `cis9440-final.Weather.Weather_Data`