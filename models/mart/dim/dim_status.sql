{{ config(
materialized='table'
) }}


SELECT Unique_Key as recordNumber, Resolution_Description, Status 

FROM `cis9440-final.311.311_Data`