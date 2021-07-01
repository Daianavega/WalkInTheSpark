{{ config(
materialized='table'
) }}


SELECT Unique_Key as recordNumber, date(Created_date) as Created_Date, date(Closed_date) as Closed_Date
FROM `cis9440-final.311.311_Data`