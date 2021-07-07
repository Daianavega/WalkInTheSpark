{{ config(
materialized='table'
) }}


SELECT Date, Month, Year, Day, 
case 
when Month in (12,1,2) then 'Winter'
when Month in (3,4,5) then 'Spring'
when Month in (6,7,8) then 'Summer'
when Month in (9,10,11) then 'Fall'

end Season

FROM {{ ref('weather_data')}}
