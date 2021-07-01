{{ config(
materialized='table'
) }}


select Unique_key as recordNumber, Incident_Zip, Location_Type, Borough

FROM `cis9440-final.311.311_Data`

where incident_zip is not null and location_type is not null