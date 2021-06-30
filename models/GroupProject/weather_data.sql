{{ config(
materialized='table'
) }}

SELECT * FROM `cis9440-final.Weather.Weather_Data`