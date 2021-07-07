{{ config(
materialized='table'
) }}


SELECT Date, Avg_Temp, Precipitation__in_ as Precipitation

FROM  {{ ref('weather_data')}}