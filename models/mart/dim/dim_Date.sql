{{ config(
materialized='table'
) }}


SELECT Date, Month, Year, Day
FROM `cis9440-final.Weather.Weather_Data`