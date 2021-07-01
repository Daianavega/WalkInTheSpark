{{ config(
materialized='table'
) }}


select Unique_key as recordNumber, Incident_Zip, Location_Type, Borough

FROM `cis9440-final.311.311_Data`

where Borough is not null