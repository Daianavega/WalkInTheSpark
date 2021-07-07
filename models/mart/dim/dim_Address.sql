{{ config(
materialized='table'
) }}


select Unique_key as recordNumber, Incident_Zip, Location_Type, Borough

FROM {{ ref('311_complaint_data')}}

where Borough is not null